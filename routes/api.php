<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\ThemeController;
use App\Http\Controllers\SearchController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

// Authentication Routes
Route::post('/login', 'App\Http\Controllers\AuthController@login');
Route::post('/logout', 'App\Http\Controllers\AuthController@logout');


// Public Routes (No Authentication Required)
Route::get('/posts', [PostController::class, 'list']);
Route::get('/posts/{post}', [PostController::class, 'getRelatedData']);
Route::get('/posts/{post}/authors', [PostController::class, 'getRelatedAuthors']);
Route::get('/posts/{post}/themes', [PostController::class, 'getRelatedThemes']);
Route::get('/authors', [AuthorController::class, 'list']);
Route::get('/authors/{author}', [AuthorController::class, 'getRelatedData']);
Route::get('/authors/{author}/posts', [AuthorController::class, 'getRelatedPosts']);
Route::get('/authors/{author}/themes', [AuthorController::class, 'getRelatedThemes']);
Route::get('/themes', [ThemeController::class, 'list']);
Route::get('/themes/{theme}', [ThemeController::class, 'getRelatedData']);
Route::get('/themes/{theme}/posts', [ThemeController::class, 'getRelatedPosts']);
Route::get('/themes/{theme}/authors', [ThemeController::class, 'getRelatedAuthors']);

// Protected Routes Group (Requires Authentication)
Route::middleware(['auth'])->group(function () {
    // Posts
    Route::get('/post', [PostController::class, 'create']);
    Route::post('/post', [PostController::class, 'store']);
    Route::put('/posts/{post}', [PostController::class, 'update']);
    Route::delete('/posts/{post}', [PostController::class, 'destroy']);

    // Authors
    Route::get('/author', [AuthorController::class, 'create']);
    Route::post('/author', [AuthorController::class, 'store']);
    Route::put('/authors/{author}', [AuthorController::class, 'update']);
    Route::delete('/authors/{author}', [AuthorController::class, 'destroy']);

    // Themes
    Route::get('/theme', [ThemeController::class, 'create']);
    Route::post('/theme', [ThemeController::class, 'store']);
    Route::put('/themes/{theme}', [ThemeController::class, 'update']);
    Route::delete('/themes/{theme}', [ThemeController::class, 'destroy']);
});

// Search
Route::get('/search', 'App\Http\Controllers\SearchController@search');