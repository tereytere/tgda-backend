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

// Posts
Route::get('/posts', 'App\Http\Controllers\PostController@list');

Route::get('/create-post', 'App\Http\Controllers\PostController@create');
Route::post('/create-post', 'App\Http\Controllers\PostController@store');

Route::get('/posts/{post}', 'App\Http\Controllers\PostController@edit');
Route::post('/posts/{post}', 'App\Http\Controllers\PostController@update');

Route::delete('/posts/{post}', 'App\Http\Controllers\PostController@destroy');

// Authors
Route::get('/authors', 'App\Http\Controllers\AuthorController@list');

Route::get('/create-author', 'App\Http\Controllers\AuthorController@create');
Route::post('/create-author', 'App\Http\Controllers\AuthorController@store');

Route::get('/authors/{author}', 'App\Http\Controllers\AuthorController@edit');
Route::post('/authors/{author}', 'App\Http\Controllers\AuthorController@update');

Route::delete('/authors/{author}', 'App\Http\Controllers\AuthorController@destroy');

// Themes
Route::get('/themes', 'App\Http\Controllers\ThemeController@list');

Route::get('/create-theme', 'App\Http\Controllers\ThemeController@create');
Route::post('/create-theme', 'App\Http\Controllers\ThemeController@store');

Route::get('/themes/{theme}', 'App\Http\Controllers\ThemeController@edit');
Route::post('/themes/{theme}', 'App\Http\Controllers\ThemeController@update');

Route::delete('/themes/{theme}', 'App\Http\Controllers\ThemeController@destroy');

// Books
Route::get('/books', 'App\Http\Controllers\BookController@list');

Route::get('/create-book', 'App\Http\Controllers\BookController@create');
Route::post('/create-book', 'App\Http\Controllers\BookController@store');

Route::get('/books/{book}', 'App\Http\Controllers\BookController@edit');
Route::post('/books/{book}', 'App\Http\Controllers\BookController@update');

Route::delete('/books/{book}', 'App\Http\Controllers\BookController@destroy');

