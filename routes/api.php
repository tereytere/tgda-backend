<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\PostController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\ThemeController;
use App\Http\Controllers\CookieController;
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
Route::post('/login', [LoginController::class, 'login']);
Route::post('/logout', [LoginController::class, 'logout'])->middleware('auth:sanctum');

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
Route::middleware(['auth:sanctum'])->group(function () {
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

// Cookies
Route::post('/set-cookie', [CookieController::class, 'setCookie']);

// Search
Route::get('/search', 'App\Http\Controllers\SearchController@search');

// Posts
Route::get('/posts', 'App\Http\Controllers\PostController@list');

Route::get('/post', 'App\Http\Controllers\PostController@create');
Route::middleware('auth')->post('/post', 'App\Http\Controllers\PostController@store');

Route::put('/posts/{post}', 'App\Http\Controllers\PostController@update');
Route::get('/posts/{post}', 'App\Http\Controllers\PostController@getRelatedData');
Route::get('/posts/{post}/authors', 'App\Http\Controllers\PostController@getRelatedAuthors');
Route::get('/posts/{post}/themes', 'App\Http\Controllers\PostController@getRelatedThemes');

Route::delete('/posts/{post}', 'App\Http\Controllers\PostController@destroy');

// Authors
Route::get('/authors', 'App\Http\Controllers\AuthorController@list');

Route::get('/author', 'App\Http\Controllers\AuthorController@create');
Route::post('/author', 'App\Http\Controllers\AuthorController@store');

Route::put('/authors/{author}', 'App\Http\Controllers\AuthorController@update');
Route::get('/authors/{author}', 'App\Http\Controllers\AuthorController@getRelatedData');
Route::get('/authors/{author}/posts', 'App\Http\Controllers\AuthorController@getRelatedPosts');
Route::get('/authors/{author}/themes', 'App\Http\Controllers\AuthorController@getRelatedThemes');

Route::delete('/authors/{author}', 'App\Http\Controllers\AuthorController@destroy');

// Themes
Route::get('/themes', 'App\Http\Controllers\ThemeController@list');

Route::get('/theme', 'App\Http\Controllers\ThemeController@create');
Route::post('/theme', 'App\Http\Controllers\ThemeController@store');

Route::put('/themes/{theme}', 'App\Http\Controllers\ThemeController@update');
Route::get('/themes/{theme}', 'App\Http\Controllers\ThemeController@getRelatedData');
Route::get('/themes/{theme}/posts', 'App\Http\Controllers\ThemeController@getRelatedPosts');
Route::get('/themes/{theme}/authors', 'App\Http\Controllers\ThemeController@getRelatedAuthors');

Route::delete('/themes/{theme}', 'App\Http\Controllers\ThemeController@destroy');