<?php

namespace App\Http\Controllers;
use App\Http\Controllers\Controller;
use Session;

use Sentinel;
class SystemController extends Controller
{
    private $data;

    public function index(){

        if(Sentinel::check()){
            return redirect('/home');
        }
        echo 'Access Denied !';
    }
    public function dashboard(){
        $this->data['title'] = 'Dashboard';
        // clear module sessions.
        return view('dashboard.dashboard',$this->data);
    }

}
