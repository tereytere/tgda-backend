<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;

class CookieController extends Controller
{
    public function setCookie(Request $request)
    {
        $minutes = 60 * 24 * 30; // Cookie will last for 30 days

        $response = new Response('Cookie set successfully');
        $response->cookie('cookie_name', 'cookie_value', $minutes);

        return $response;
    }
}
