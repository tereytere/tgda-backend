<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Post;


class PostController extends Controller
{

    public function list(): JsonResponse
    {
        $posts = Post::get()->with('author');

        return response()->json($posts);
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
            'body' => 'required|text',
            'type' => 'required|string',
            'url' => 'required|string',
            'theme' => 'required|string',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        // Create a new post
        $post = Post::create($validatedData);

        return response()->json(['message' => 'Post created successfully', 'post' => $post], Response::HTTP_CREATED);
    }

    public function update(Request $request, Post $post): JsonResponse
    {
        // Validate the request
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'body' => 'required|text',
            'type' => 'required|string',
            'url' => 'required|string',
            'theme' => 'required|string',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        // Update the post
        $post->update($data);

        return response()->json(['message' => 'Post updated successfully', 'post' => $post]);
    }

    public function destroy(Post $post): JsonResponse
    {
        // Delete the post
        $post->delete();

        return response()->json(['message' => 'Post deleted successfully']);
    }
}