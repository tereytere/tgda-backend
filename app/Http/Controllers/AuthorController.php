<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Author;
use App\Models\Theme;

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

    public function create(): JsonResponse
    {
        return response()->json(['message' => 'Create method accessed']);
    }

    public function store(Request $request): JsonResponse
    {
        try {
            $validatedData = $request->validate([
                'name' => 'required|string|max:255',
                'image' => 'nullable|string',
                'themes' => 'nullable|array',
                'youtube' => 'nullable|string',
                'instagram' => 'nullable|string',
                'podcast' => 'nullable|string',
                'webpage' => 'nullable|string',
                'language' => 'required|string',
            ]);
        } catch (\Illuminate\Validation\ValidationException $e) {
            return response()->json(['message' => 'Validation error', 'errors' => $e->errors()], Response::HTTP_BAD_REQUEST);
        }

        $author = Author::create($validatedData);

        // Check if themes are provided and attach existing themes to the author
        $this->attachThemesToAuthor($author, $validatedData['themes'] ?? []);

        $author->load('themes');

        return response()->json(['message' => 'Author created successfully', 'author' => $author], Response::HTTP_CREATED);
    }

    public function update(Request $request, Author $author): JsonResponse
    {
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'image' => 'nullable|string',
            'themes' => 'nullable|array',
            'youtube' => 'nullable|string',
            'instagram' => 'nullable|string',
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
}
