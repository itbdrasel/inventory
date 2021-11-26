<?php

namespace App\Http\Middleware;
use Illuminate\Support\Facades\Route;
use Closure;
use Sentinel;

class AdminMiddleware
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
	
		//Sentinel::getUser()->roles->first()->name == 'admin'
		
		//see(Route::currentRouteName());
		
		//see(\Request::route()->getPrefix());
		
		if(Sentinel::check()){						
			       
			if( Route::currentRouteName() ){
				if(Sentinel::hasAccess(Route::currentRouteName())){            
					return $next($request);				
				}else{
					die('You are not permitted to access here!');
				}
			}else{
				die('No route name found for this request.');
			}
									
			//return $next($request);			
        }else{			
            return redirect('/');
        }


    }
}
