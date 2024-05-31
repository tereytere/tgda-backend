<?php

use Illuminate\Support\Facades\Route;

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
Route::post('/login', ['App\Http\Controllers\LoginController@login']);
Route::post('/logout', ['App\Http\Controllers\LoginController@logout'])->middleware('auth:sanctum');

// Public Routes (No Authentication Required)
Route::get('/posts', 'App\Http\Controllers\PostController@list');
Route::get('/posts/{post}', 'App\Http\Controllers\PostController@getRelatedData');
Route::get('/posts/{post}/authors', 'App\Http\Controllers\PostController@getRelatedAuthors');
Route::get('/posts/{post}/themes', 'App\Http\Controllers\PostController@getRelatedThemes');
Route::get('/authors', 'App\Http\Controllers\AuthorController@list');
Route::get('/authors/{author}', 'App\Http\Controllers\AuthorController@getRelatedData');
Route::get('/authors/{author}/posts', 'App\Http\Controllers\AuthorController@getRelatedPosts');
Route::get('/authors/{author}/themes', 'App\Http\Controllers\AuthorController@getRelatedThemes');
Route::get('/themes', 'App\Http\Controllers\ThemeController@list');
Route::get('/themes/{theme}', 'App\Http\Controllers\ThemeController@getRelatedData');
Route::get('/themes/{theme}/posts', 'App\Http\Controllers\ThemeController@getRelatedPosts');
Route::get('/themes/{theme}/authors', 'App\Http\Controllers\ThemeController@getRelatedAuthors');

// Protected Routes Group (Requires Authentication)
Route::middleware(['auth:sanctum'])->group(function () {
    // Posts
    Route::get('/post', 'App\Http\Controllers\PostController@create');
    Route::post('/post', 'App\Http\Controllers\PostController@store');
    Route::put('/posts/{post}', 'App\Http\Controllers\PostController@update');
    Route::delete('/posts/{post}', 'App\Http\Controllers\PostController@destroy');

    // Authors
    Route::get('/author', 'App\Http\Controllers\AuthorController@create');
    Route::post('/author', 'App\Http\Controllers\AuthorController@store');
    Route::put('/authors/{author}', 'App\Http\Controllers\AuthorController@update');
    Route::delete('/authors/{author}', 'App\Http\Controllers\AuthorController@destroy');

    // Themes
    Route::get('/theme', 'App\Http\Controllers\ThemeController@create');
    Route::post('/theme', 'App\Http\Controllers\ThemeController@store');
    Route::put('/themes/{theme}', 'App\Http\Controllers\ThemeController@update');
    Route::delete('/themes/{theme}', 'App\Http\Controllers\ThemeController@destroy');
});

// Cookies
Route::post('/set-cookie', 'App\Http\Controllers\CookieController@setCookie');

// Search
Route::get('/search', 'App\Http\Controllers\SearchController@search');