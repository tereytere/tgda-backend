<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Theme;

class ThemeController extends Controller
{
    public function list(): JsonResponse
    {
        $themes = Theme::get();

        return response()->json($themes);
    }

    public function create(): JsonResponse
    {
        return response()->json(['message' => 'Create method accessed']);
    }

    public function store(Request $request): JsonResponse
    {
        // Validate the request
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'posts' => 'nullable|json',
            'authors' => 'nullable|json',
        ]);

        // Convert JSON strings to arrays only if they are present in the request
        $posts = $request->has('posts') ? json_decode($validatedData['posts'], true) : null;
        $authors = $request->has('authors') ? json_decode($validatedData['authors'], true) : null;

        // Create a new Theme
        $theme = Theme::create(array_merge($validatedData, [
            'posts' => $posts,
            'authors' => $authors,
        ]));

        return response()->json(['message' => 'Theme created successfully', 'theme' => $theme], Response::HTTP_CREATED);
    }

    public function update(Request $request, Theme $theme): JsonResponse
    {
        // Validate the request
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'posts' => 'nullable|json',
            'authors' => 'nullable|json',
        ]);

        // Convert JSON strings to arrays
        $posts = json_decode($data['posts'], true);
        $authors = json_decode($data['authors'], true);

        // Update the Theme
        $theme->update(array_merge($data, [
            'posts' => $posts,
            'authors' => $authors,
        ]));

        return response()->json(['message' => 'Theme updated successfully', 'theme' => $theme]);
    }

    public function destroy(Theme $theme): JsonResponse
    {
        $theme->delete();

        return response()->json(['message' => 'Theme deleted successfully']);
    }
}
