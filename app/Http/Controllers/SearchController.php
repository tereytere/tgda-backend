<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Author;
use App\Models\Theme;
use App\Models\Post;

class SearchController extends Controller
{
  public function search(Request $request)
  {
    $query = $request->input('query');

    // Perform search across Author, Theme, and Post models
    $authorResults = Author::where('name', 'like', "%$query%")
      ->orWhere('language', 'like', "%$query%")
      ->distinct() // Ensure distinct results
      ->get();

    $themeResults = Theme::where('name', 'like', "%$query%")
      ->distinct()
      ->get();

    $postResults = Post::where(function ($queryBuilder) use ($query) {
      $queryBuilder->where('title', 'like', "%$query%")
        ->orWhere('body', 'like', "%$query%")
        ->orWhere('type', 'like', "%$query%")
        ->orWhere('language', 'like', "%$query%");
    })
      ->distinct() // Ensure distinct results
      ->get();

    return response()->json(['authorResults' => $authorResults, 'themeResults' => $themeResults, 'postResults' => $postResults]);
  }
}
