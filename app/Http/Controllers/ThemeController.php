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

        // Create a new Theme
        $theme = Theme::create($validatedData);

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

        // Update the Theme
        $theme->update($data);

        return response()->json(['message' => 'Theme updated successfully', 'theme' => $theme]);
    }

    public function destroy(Theme $theme): JsonResponse
    {
        // Delete the Theme
        $theme->delete();

        return response()->json(['message' => 'Theme deleted successfully']);
    }
}