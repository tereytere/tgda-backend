<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Author;


class AuthorController extends Controller
{

    public function list(): JsonResponse
    {
        $authors = Author::get();

        return response()->json($authors);
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
            'image' => 'nullable|string',
            'themes' => 'required|string',
            'youtube' => 'nullable|string',
            'instagram' => 'nullable|string',
            'podcast' => 'nullable|string',
            'webpage' => 'nullable|string',
            'language' => 'required|string',
        ]);

        // Create a new Author
        $author = Author::create($validatedData);

        return response()->json(['message' => 'Author created successfully', 'author' => $author], Response::HTTP_CREATED);
    }

    public function update(Request $request, Author $author): JsonResponse
    {
        // Validate the request
        $data = $request->validate([
            'name' => 'required|string|max:255',
            'image' => 'nullable|string',
            'themes' => 'required|string',
            'youtube' => 'nullable|string',
            'instagram' => 'nullable|string',
            'podcast' => 'nullable|string',
            'webpage' => 'nullable|string',
            'language' => 'required|string',
        ]);

        // Update the Author
        $author->update($data);

        return response()->json(['message' => 'Author updated successfully', 'author' => $author]);
    }

    public function destroy(Author $author): JsonResponse
    {
        // Delete the Author
        $author->delete();

        return response()->json(['message' => 'Author deleted successfully']);
    }
}