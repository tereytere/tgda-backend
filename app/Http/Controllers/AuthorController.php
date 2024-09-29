<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;
use App\Models\Author;
use App\Models\Theme;
use Exception;


class AuthorController extends Controller
{
    public function list(Request $request): JsonResponse
    {
        if ($request->has('authorId')) {
            $author = Author::find($request->input('authorId'));
            if (!$author) {
                return response()->json(['error' => 'Author not found'], Response::HTTP_NOT_FOUND);
            }
            return response()->json($author);
        }

        $authors = Author::get();
        return response()->json($authors);
    }

    public function create(Request $request): JsonResponse
    {
        try {
            $validatedData = $request->validate([
                'name' => 'required|string|max:255',
                'image' => 'nullable|string',
                'themes' => 'nullable|array',
                'youtube' => 'nullable|string',
                'instagram' => 'nullable|string',
                'tiktok' => 'nullable|string',
                'podcast' => 'nullable|string',
                'webpage' => 'nullable|string',
                'language' => 'required|string',
            ]);

            // Log the validated data
            Log::info('Author data: ', $validatedData);

            // Create the author
            $author = Author::create($validatedData);

            // Attach themes to the author if provided
            $this->attachThemesToAuthor($author, $validatedData['themes'] ?? []);

            // Load themes for the response
            $author->load('themes');

            // Return success response
            return response()->json([
                'status' => 'success',
                'message' => 'Author created successfully',
                'data' => $author,
            ], Response::HTTP_CREATED);
        } catch (\Illuminate\Validation\ValidationException $e) {
            // Handle validation errors
            Log::error('Validation error creating author: ', $e->errors());
            return response()->json([
                'status' => 'error',
                'message' => 'Validation error',
                'errors' => $e->errors(),
            ], Response::HTTP_BAD_REQUEST);
        } catch (Exception $e) {
            // Log unexpected errors
            Log::error('Error creating author: ' . $e->getMessage());
            return response()->json([
                'status' => 'error',
                'message' => 'Author creation failed',
                'error' => $e->getMessage(),
            ], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function update(Request $request, Author $author): JsonResponse
    {
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'image' => 'nullable|string',
            'themes' => 'nullable|array',
            'youtube' => 'nullable|string',
            'instagram' => 'nullable|string',
            'tiktok' => 'nullable|string',
            'podcast' => 'nullable|string',
            'webpage' => 'nullable|string',
            'language' => 'required|string',
        ]);

        $author->update($data);

        // Check if themes are provided and update them accordingly
        $this->syncThemesForAuthor($author, $data['themes'] ?? []);

        $author->load('themes');

        return response()->json(['message' => 'Author updated successfully', 'author' => $author]);
    }

    public function destroy(Author $author): JsonResponse
    {
        // Detach all themes associated with the author before deleting
        $author->themes()->detach();

        // Delete the Author
        $author->delete();

        return response()->json(['message' => 'Author deleted successfully']);
    }

    private function attachThemesToAuthor(Author $author, array $themeNames)
    {
        foreach ($themeNames as $themeName) {
            $theme = Theme::firstOrCreate(['name' => $themeName]);
            $author->themes()->attach($theme->id);
        }
    }

    private function syncThemesForAuthor(Author $author, array $themeNames)
    {
        $themeIds = [];
        foreach ($themeNames as $themeName) {
            $theme = Theme::firstOrCreate(['name' => $themeName]);
            $themeIds[] = $theme->id;
        }
        $author->themes()->sync($themeIds);
    }

    public function getRelatedData(Author $author): JsonResponse
    {
        // Eager load related posts and themes for the author
        $authorWithRelations = $author->load(['posts', 'themes']);

        return response()->json(['author' => $authorWithRelations]);
    }

    public function getRelatedPosts(Author $author): JsonResponse
    {
        $posts = $author->posts()->get();

        return response()->json(['posts' => $posts]);
    }

    public function getRelatedThemes(Author $author): JsonResponse
    {
        $themes = $author->themes()->get();

        return response()->json(['themes' => $themes]);
    }
}