<?php

namespace App\Http\Middleware;

use Illuminate\Auth\Middleware\Authenticate as Middleware;
use Closure;
use Tymon\JWTAuth\Facades\JWTAuth;
use Exception;

class Authenticate extends Middleware
{
    /**
     * Handle an incoming request and check for JWT token in the Authorization header.
     *
     * @param \Illuminate\Http\Request $request
     * @param \Closure $next
     * @param string[] ...$guards
     * @return mixed
     */
    public function handle($request, Closure $next, ...$guards)
    {
        try {
            // Check if the token exists in the Authorization header
            $token = $request->bearerToken();

            if (!$token) {
                return response()->json(['error' => 'Token not provided'], 401);
            }

            // Decode and validate the JWT token
            $user = JWTAuth::parseToken()->authenticate();

            if (!$user) {
                return response()->json(['error' => 'User not found'], 401);
            }

            // Allow request to proceed
            return $next($request);

        } catch (Exception $e) {
            // If token is invalid or expired, return a 401 error
            return response()->json([
                'error' => 'Token invalid or expired',
                'message' => $e->getMessage()
            ], 401);
        }
    }

    /**
     * Get the path the user should be redirected to when they are not authenticated.
     *
     * @param \Illuminate\Http\Request $request
     * @return string|null
     */
    protected function redirectTo($request): ?string
    {
        return $request->expectsJson() ? null : route('login');
    }
}