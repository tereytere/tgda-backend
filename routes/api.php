<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\AuthorController;
use App\Http\Controllers\ThemeController;

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
Route::post('/login', 'App\Http\Controllers\UserController@login');
Route::post('/logout', 'App\Http\Controllers\UserController@logout');


// Public Routes (No Authentication Required)
Route::post('/users', 'App\Http\Controllers\UserController@create');
Route::get('/users/{id}', 'App\Http\Controllers\UserController@show');
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
//Route::middleware(['auth'])->group(function () {
// Posts
Route::post('/post', [PostController::class, 'create']);
Route::put('/posts/{post}', [PostController::class, 'update']);
Route::delete('/posts/{post}', [PostController::class, 'destroy']);

// Authors
Route::post('/author', [AuthorController::class, 'create']);
Route::put('/authors/{author}', [AuthorController::class, 'update']);
Route::delete('/authors/{author}', [AuthorController::class, 'destroy']);

// Themes
Route::post('/theme', [ThemeController::class, 'create']);
Route::put('/themes/{theme}', [ThemeController::class, 'update']);
Route::delete('/themes/{theme}', [ThemeController::class, 'destroy']);

// Users
Route::get('/users', 'App\Http\Controllers\UserController@list');
Route::put('/users/{id}', 'App\Http\Controllers\UserController@update');
Route::delete('/users/{id}', 'App\Http\Controllers\UserController@delete');
//});

// Search
Route::get('/search', 'App\Http\Controllers\SearchController@search');