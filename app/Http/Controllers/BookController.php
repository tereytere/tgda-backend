<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Book;

class BookController extends Controller
{
    public function list(): JsonResponse
    {
        $books = Book::get();

        return response()->json($books);
    }


    public function create(): JsonResponse
    {
        return response()->json(['message' => 'Create method accessed']);
    }

    public function store(Request $request): JsonResponse
    {
        // Validate the request
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|text',
            'type' => 'required|string',
            'url' => 'required|string',
            'themes' => 'required|string',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        // Create a new book
        $book = Book::create($validatedData);

        return response()->json(['message' => 'Book created successfully', 'book' => $book], Response::HTTP_CREATED);
    }

    public function update(Request $request, Book $book): JsonResponse
    {
        // Validate the request
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'description' => 'required|text',
            'type' => 'required|string',
            'url' => 'required|string',
            'themes' => 'required|string',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        // Update the book
        $book->update($data);

        return response()->json(['message' => 'Book updated successfully', 'book' => $book]);
    }

    public function destroy(book $book): JsonResponse
    {
        // Delete the book
        $book->delete();

        return response()->json(['message' => 'Book deleted successfully']);
    }

}
