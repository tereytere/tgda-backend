<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Theme;
use Illuminate\Support\Facades\Log;
use Exception;


class ThemeController extends Controller
{
    public function list(): JsonResponse
    {
        $themes = Theme::get();

        return response()->json($themes);
    }

    public function create(Request $request): JsonResponse
    {
        try {
            // Validate the request
            $validatedData = $request->validate([
                'name' => 'required|string|max:255',
                'posts' => 'nullable|json',
                'authors' => 'nullable|json',
            ]);

            // Log the validated data
            Log::info('Theme data: ', $validatedData);

            // Convert JSON strings to arrays if they are present in the request
            $posts = $request->has('posts') ? json_decode($validatedData['posts'], true) : null;
            $authors = $request->has('authors') ? json_decode($validatedData['authors'], true) : null;

            // Create a new Theme with validated data and additional attributes
            $theme = Theme::create(array_merge($validatedData, [
                'posts' => $posts,
                'authors' => $authors,
            ]));

            // Return success response
            return response()->json([
                'status' => 'success',
                'message' => 'Theme created successfully',
                'data' => $theme,
            ], Response::HTTP_CREATED);
        } catch (\Illuminate\Validation\ValidationException $e) {
            // Handle validation errors
            Log::error('Validation error creating theme: ', $e->errors());
            return response()->json([
                'status' => 'error',
                'message' => 'Validation error',
                'errors' => $e->errors(),
            ], Response::HTTP_BAD_REQUEST);
        } catch (Exception $e) {
            // Log unexpected errors
            Log::error('Error creating theme: ' . $e->getMessage());
            return response()->json([
                'status' => 'error',
                'message' => 'Theme creation failed',
                'error' => $e->getMessage(),
            ], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }


    public function update(Request $request, Theme $theme): JsonResponse
    {
        // Validate the request
        $data = $request->validate([
            'name' => 'required|string|max:255',
        ]);

        try {
            // Update the Theme
            $theme->update($data);

            return response()->json(['message' => 'Theme updated successfully', 'theme' => $theme]);
        } catch (\Exception $e) {
            // Log the error message for debugging
            logger()->error('Error updating theme: ' . $e->getMessage());

            return response()->json(['message' => 'Error updating theme'], 500);
        }
    }


    public function getRelatedData(Theme $theme): JsonResponse
    {
        // Eager load related posts and authors for the theme
        $themeWithRelations = $theme->load(['posts', 'authors']);

        return response()->json(['theme' => $themeWithRelations]);
    }

    public function getRelatedPosts(Theme $theme): JsonResponse
    {
        $posts = $theme->posts()->get();

        return response()->json(['posts' => $posts]);
    }

    public function getRelatedAuthors(Theme $theme): JsonResponse
    {
        $authors = $theme->authors()->get();

        return response()->json(['authors' => $authors]);
    }

    public function destroy(Theme $theme): JsonResponse
    {
        $theme->delete();

        return response()->json(['message' => 'Theme deleted successfully']);
    }
}