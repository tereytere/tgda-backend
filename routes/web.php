<?php

use Illuminate\Http\Request;
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

// Admin Login
Route::post('/login', 'App\Http\Controllers\AuthController@login');

// Search
Route::get('/search', 'App\Http\Controllers\SearchController@search');

// Posts
Route::get('/posts', 'App\Http\Controllers\PostController@list');

Route::get('/post', 'App\Http\Controllers\PostController@create');
Route::post('/post', 'App\Http\Controllers\PostController@store');

Route::post('/posts/{post}', 'App\Http\Controllers\PostController@update');

Route::delete('/posts/{post}', 'App\Http\Controllers\PostController@destroy');

// Authors
Route::get('/authors', 'App\Http\Controllers\AuthorController@list');

Route::get('/author', 'App\Http\Controllers\AuthorController@create');
Route::post('/author', 'App\Http\Controllers\AuthorController@store');

Route::post('/authors/{author}', 'App\Http\Controllers\AuthorController@update');

Route::delete('/authors/{author}', 'App\Http\Controllers\AuthorController@destroy');

// Themes
Route::get('/themes', 'App\Http\Controllers\ThemeController@list');

Route::get('/theme', 'App\Http\Controllers\ThemeController@create');
Route::post('/theme', 'App\Http\Controllers\ThemeController@store');

Route::post('/themes/{theme}', 'App\Http\Controllers\ThemeController@update');
Route::get('/themes/{theme}', 'App\Http\Controllers\ThemeController@getRelated');

Route::delete('/themes/{theme}', 'App\Http\Controllers\ThemeController@destroy');