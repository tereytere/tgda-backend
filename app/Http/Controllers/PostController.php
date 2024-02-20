<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Author;
use App\Models\Post;


class PostController extends Controller
{

    public function list(): JsonResponse
    {
        $posts = Post::get();

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
            'themes' => 'required|json',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        // Find the author based on the provided name
        $author = Author::firstOrCreate(['name' => $validatedData['author']]);

        // Create a new post and associate it with the author
        $post = $author->posts()->create($validatedData);

        // Attach themes to the post
        $themeIds = $request->input('themes');
        if (!empty($themeIds)) {
            $post->themes()->attach($themeIds);
        }

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
            'themes' => 'required|json',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        // Find the author based on the provided name
        $author = Author::firstOrCreate(['name' => $data['author']]);

        // Update the post and associate it with the author
        $post->update($data);
        $post->author()->associate($author)->save();

        return response()->json(['message' => 'Post updated successfully', 'post' => $post]);
    }

    public function destroy(Post $post): JsonResponse
    {
        // Delete the post
        $post->delete();

        return response()->json(['message' => 'Post deleted successfully']);
    }
}