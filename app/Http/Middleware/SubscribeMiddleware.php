<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
class SubscribeMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {
        if (Auth::guard($guard)->check()) {
            return $next($request);
        }else{
            return redirect('frontend/login');
        }
    }
}
