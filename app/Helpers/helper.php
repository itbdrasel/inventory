<?php

use Illuminate\Support\Facades\Mail;

use \Illuminate\Support\Facades\DB;


// Menu active class add
if (! function_exists('activeMenu')) {
    function activeMenu($sig, $data){
        return (Request::segment($sig) == $data)?'active':'';
    }
}
// Menu menu open class add
if (! function_exists('menuOpen')) {
    function menuOpen($sig, $data){
        return (Request::segment($sig) == $data)?'menu-open':'';
    }
}


function permissionChecked($array, $object){
    $hotel_create= '';
    if (!empty($array) && !empty($array->$object) && $array->$object== true) {
        $hotel_create = 'checked';
    }
    return $hotel_create;
}


// User Password Generate
function passwordGenerator(){
    $digits = 2;
    $rand =  rand(pow(10, $digits-1), pow(10, $digits)-1);
    $password = 'P$'.date('s').'@'.$rand.'j';
    return $password;
}

// Email Send
function emailSend($to, $subject, $data,$view='mail'){

    Mail::send('email.'.$view, $data, function ($message) use ($to, $subject){
        return $message->to($to)->subject($subject)->from('hotel@gov.bd');
    });
}

function dbDateFormat($date){
    return date('Y-m-d', strtotime($date));
}

function userDateFormat($date){
    return date(config('settings')['date_format'], strtotime($date));
}
