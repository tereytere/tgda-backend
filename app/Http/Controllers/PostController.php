<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Http\Response;
use Illuminate\Support\Facades\Log;
use App\Models\Author;
use App\Models\Post;
use App\Models\Theme;
use Exception;

class PostController extends Controller
{
    public function list(Request $request): JsonResponse
    {
        try {
            $query = Post::query();

            // Check if a type filter is provided in the request
            if ($request->has('type')) {
                $type = $request->input('type');
                $query->where('type', $type);
            }

            // Check if an author ID filter is provided in the request
            if ($request->has('author_id')) {
                $authorId = $request->input('author_id');
                $query->where('author_id', $authorId);
            }

            // Get the filtered posts
            $posts = $query->with('author', 'themes')->get();

            return response()->json($posts);
        } catch (Exception $e) {
            Log::error('Error fetching posts: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to fetch posts.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function create(): JsonResponse
    {
        return response()->json(['message' => 'Create method accessed']);
    }

    public function store(Request $request): JsonResponse
    {
        try {
            $validatedData = $request->validate([
                'title' => 'required|string|max:255',
                'body' => 'required|string',
                'type' => 'required|string',
                'url' => 'required|string',
                'themes' => 'required|array',
                'image' => 'nullable|string',
                'author' => 'required|string',
                'author_id' => 'nullable|string',
                'language' => 'required|string'
            ]);

            // Find or create the author based on the provided name
            $author = Author::firstOrCreate(['name' => $validatedData['author']]);

            // Assign the author's ID to author_id field
            $validatedData['author_id'] = $author->id;

            // Create the post with the validated data
            $post = new Post($validatedData);
            $post->author_id = $author->id;

            $post->save();

            // Attach themes to the post
            $this->attachThemes($post, $validatedData['themes'] ?? []);

            // Load author and themes to return in the response
            $post->load('author', 'themes');

            // Return the response
            return response()->json(['message' => 'Post created successfully', 'post' => $post], Response::HTTP_CREATED);
        } catch (Exception $e) {
            Log::error('Error creating post: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to create post.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function update(Request $request, Post $post): JsonResponse
    {
        try {
            $data = $request->validate([
                'title' => 'required|string|max:255',
                'body' => 'required|string',
                'type' => 'required|string',
                'url' => 'required|string',
                'themes' => 'required|array',
                'image' => 'nullable|string',
                'author' => 'required|string',
                'author_id' => 'required|string',
                'language' => 'required|string'
            ]);

            $author = Author::firstOrCreate(['name' => $data['author']]);
            $post->update($data);
            $post->author()->associate($author)->save();

            $this->syncThemesForPost($post, $data['themes'] ?? []);

            $post->load('author', 'themes');

            return response()->json(['message' => 'Post updated successfully', 'post' => $post]);
        } catch (Exception $e) {
            Log::error('Error updating post: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to update post.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function destroy(Post $post): JsonResponse
    {
        try {
            // Detach all themes associated with the post before deleting
            $post->themes()->detach();

            // Delete the post
            $post->delete();

            return response()->json(['message' => 'Post deleted successfully']);
        } catch (Exception $e) {
            Log::error('Error deleting post: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to delete post.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    private function attachThemes(Post $post, array $themeNames)
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

    public function getRelatedData(Post $post): JsonResponse
    {
        try {
            // Eager load related themes and the author for the post
            $postWithRelations = $post->load(['themes', 'author']);

            return response()->json(['post' => $postWithRelations]);
        } catch (Exception $e) {
            Log::error('Error fetching related data: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to fetch related data.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function getRelatedThemes(Post $post): JsonResponse
    {
        try {
            $themes = $post->themes()->get();

            return response()->json(['themes' => $themes]);
        } catch (Exception $e) {
            Log::error('Error fetching related themes: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to fetch related themes.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }

    public function getRelatedAuthors(Post $post): JsonResponse
    {
        try {
            $authors = $post->authors()->get();

            return response()->json(['authors' => $authors]);
        } catch (Exception $e) {
            Log::error('Error fetching related authors: ' . $e->getMessage());

            return response()->json(['error' => 'Failed to fetch related authors.'], Response::HTTP_INTERNAL_SERVER_ERROR);
        }
    }
}
