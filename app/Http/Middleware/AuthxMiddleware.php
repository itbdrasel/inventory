<?php

namespace App\Http\Middleware;

use Closure;
use Sentinel;
class AuthxMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {		
		//Sentinel::logout();
		//dd(Sentinel::getUser()->hotel_id);
		
		if (Sentinel::guest()) {
            if ($request->ajax()) {
                return response('Unauthorized.', 401);
            } else {
                return redirect()->guest('system/core');
            }
        }
        return $next($request);
    }
}
