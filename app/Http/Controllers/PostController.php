<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use App\Models\Author;
use App\Models\Post;
use App\Models\Theme;

class PostController extends Controller
{
    public function list(): JsonResponse
    {
        $posts = Post::with('author', 'themes')->get();
        return response()->json($posts);
    }

    public function create(): JsonResponse
    {
        return response()->json(['message' => 'Create method accessed']);
    }

    public function store(Request $request): JsonResponse
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'body' => 'required|string',
            'type' => 'required|string',
            'url' => 'required|string',
            'themes' => 'required|array',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        $author = Author::firstOrCreate(['name' => $validatedData['author']]);
        $post = $author->posts()->create($validatedData);

        $this->attachThemesToPost($post, $validatedData['themes'] ?? []);

        $post->load('author', 'themes');

        return response()->json(['message' => 'Post created successfully', 'post' => $post], Response::HTTP_CREATED);
    }

    public function update(Request $request, Post $post): JsonResponse
    {
        $data = $request->validate([
            'title' => 'required|string|max:255',
            'body' => 'required|string',
            'type' => 'required|string',
            'url' => 'required|string',
            'themes' => 'required|array',
            'image' => 'nullable|string',
            'author' => 'required|string',
            'language' => 'required|string'
        ]);

        $author = Author::firstOrCreate(['name' => $data['author']]);
        $post->update($data);
        $post->author()->associate($author)->save();

        $this->syncThemesForPost($post, $data['themes'] ?? []);

        $post->load('author', 'themes');

        return response()->json(['message' => 'Post updated successfully', 'post' => $post]);
    }

    public function destroy(Post $post): JsonResponse
    {
        // Detach all themes associated with the post before deleting
        $post->themes()->detach();
        
        // Delete the post
        $post->delete();

        return response()->json(['message' => 'Post deleted successfully']);
    }

    private function attachThemesToPost(Post $post, array $themeNames)
    {
        foreach ($themeNames as $themeName) {
            $theme = Theme::firstOrCreate(['name' => $themeName]);
            $post->themes()->attach($theme->id);
        }
    }

    private function syncThemesForPost(Post $post, array $themeNames)
    {
        $themeIds = [];
        foreach ($themeNames as $themeName) {
            $theme = Theme::firstOrCreate(['name' => $themeName]);
            $themeIds[] = $theme->id;
        }
        $post->themes()->sync($themeIds);
    }
}
