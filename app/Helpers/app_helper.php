<?php

use Illuminate\Support\Str;
use Carbon\Carbon;


/************
 * **
 * App Helper for BPC
 * Version 1.0
 * @author - Mainul Islam
 * Basic functions for the App
 * **
 */



/*****
 * validation_errors()
 * formating validation errors for views
 **/

function validation_errors($errors){
    if($errors->any()){
        echo '<div class="alert alert-danger"><ul>';
        foreach ($errors->all() as $error){
            echo '<li>'.$error.'</li>';
        }
        echo '</ul></div>';
    }
}


/*****
 * getOrder()
 * sorting table fields by asc or desc
 ***
 * @$fields must be indexed array.
 * @$default must need a db table field name.
 **/

function getOrder($fields, $default=''){
    $default = (!empty($default))?$default:'id';
    $getOrder = [];
    $order = Request::get('order') ?? 2; // OrderStatus asc or desc;
    $by = Request::get('by'); // by field name;

    //define ASC or DESC
    if($order == 1) $getOrder['order'] = "ASC";
    elseif( $order == 2) $getOrder['order'] = "DESC";
    else $getOrder['order'] = "DESC";

    // define order by which field
    if(!empty($by) ){
        if(array_key_exists($by, $fields)){
            $getOrder['by'] = $fields[$by];
        }else $getOrder['by'] = $default;

    }else{
        $getOrder['by'] = $default;
    }
    return $getOrder;
}



function getValue($field, $data, $default=null){
    return (!empty($data) && !empty($data->$field)) ? $data->$field : old($field,$default);
}





 /*****
  * currency()
  * Return currency format.
  */





/*****
 * isAlphaNumeric()
 * form validation callback.
 **/

function isAlphaNumeric($attribute, $value, $fail )
{
    if(preg_match('/[A-Za-z_]/', $value) && preg_match('/[0-9]/', $value))
        return true;
    else
        $fail(ucfirst($attribute).' must be the combination of letters and numbers.');
}


/*****
 * reCAPTCHA validation Check
 * recaptcha()
 **/

function recaptcha($attribute, $value, $fail){
    $secret = '6LcyyqMZAAAAAGLr8ltlPQjN1gZJSz3AcmAZw0Gg';
    $response = file_get_contents("https://www.google.com/recaptcha/api/siteverify?secret=".$secret."&response=".$value."&remoteip=".$_SERVER['REMOTE_ADDR']);
    $obj = json_decode($response);

    if($obj->success == true){
        return true;
    }else{
        $fail('Only the human can change the password!');
    }
}



/*****
 * access_permission()
 * permit users to access controller->method according to users level.
 **/

function access_permission(){

    $users = new \App\Models\Users();
    $router = service('router');

    // define access code for controller->method()
    $access_control = [
        'Article'=> ['index'=> 3, 'add' => 3, 'edit'=>3, 'delete'=>9],
        'InvCategory'=> ['index'=> 3, 'add' => 3, 'edit'=>3, 'delete'=>9],
        'Auth'=> ['profile'=> 3, 'update' => 3, 'register'=>9, 'users_list'=>9, 'delete'=>9],
        'Menu'=> ['index'=> 3, 'add' => 3, 'edit'=>3, 'delete'=>9],
        'Setting'=> ['index'=> 9],
        'Mediamanager'=> ['index'=> 3],
    ];

    $controller = substr( strrchr($router->controllerName(), "\\"), 1); // get name from controller path
    $method = $router->methodName(); // get request method name;

    $access_code =  $access_control[$controller][$method] ?? 3;
    $is_permit = $users->user_validate($access_code); // check if the controller and method have permission to access.

    if($is_permit == FALSE){
        header('Location:'.base_url().'/author/auth/warning'); exit;
    }
}


function user_validate($user_level){
    $users = new \App\Models\Users();

    if($users->user_validate($user_level) )
        return true;
    else
        return false;
}



/*****
 * segment()
 * Return uri segment. return default if not get.
 */

function segment($segment, $default = 0, $slash = ''){

    $getSegment = Request::segment($segment);

    if(!empty($getSegment))
        return $getSegment.$slash;
    else
        return $default.$slash;
}



/*****
 * params()
 * Return url query with the leading separators.
 */

function params($lead = ''){

    //$fullUrl = Request::fullUrl();
    //$parsedUrl = parse_url($fullUrl);
    //$param = $parsedUrl['query'] ?? ''; //http_build_query(Request::query());

    $param = http_build_query(Request::query());

    if(!empty($param)) return ($lead ?: '?').$param;
    else return NULL;

}


/*****
 * show_404()
 * Page not found error. supported for CI 3
 */

function show_404(){
    return abort(404);
}



/*****
 * show_404()
 * Page not found error. supported for CI 3
 */

function base_url($uri = ''){
    return url('/'.$uri);
}


/***
 * return specific words
 **/
function text_num($text, $length){
    if(strlen($text) > $length) $text = substr($text, 0, strpos($text, ' ', $length));
    return $text;
}



/****
 * formatMenu() formats menu array according parent-child
 * return an muti-level array
 ***/
function formatMenu($menu, $parent, $sub_trace=false){
    $menu2 = array();
    foreach($menu as $i => $item){
        if($item['parent'] == $parent){
            $menu2[$item['m_id']] = $item;
            if($sub_trace) $menu2[$item['m_id']]['is_sub']=TRUE;
            $menu2[$item['m_id']]['submenu'] = formatMenu($menu, $item['m_id'], true);
        }
    }
    return $menu2;
}



 /****
  ** view image
  ** single, multiple, with img tag or without img tag.
  ***/

 function viewImage($imgs, $title = '', $withimgtag = TRUE, $single = TRUE){
	if(preg_match('/|/',$imgs)){
		$p_image = explode('|',$imgs);

		if($single){
			if($withimgtag){
				return "<img title='".$title."' src='".url($p_image[0])."' />";
			}else{
				return $p_image[0];
			}
		}else{
			$imgs = '';
			foreach($p_image as $img){
				$imgs.='<div class="col-3"><a data-image="'.url($img).'" href="#"><img class="img-thumbnail" src="'.url($img).'" /></a></div>';
			}
			return $imgs;
		}
	}else{
		if($withimgtag){
			return "<img title='".$title."' src='".$imgs."' />";
		}else{
			return $imgs;
		}
	}
 }




/****
 * get_client_ip_env() get actual user ip/
 * return ip as string
 ***/
function get_client_ip_env() {

    $ipAddress = '';

    if (getenv('HTTP_CLIENT_IP'))
        $ipAddress = getenv('HTTP_CLIENT_IP');
    else if(getenv('HTTP_X_FORWARDED_FOR'))
        $ipAddress = getenv('HTTP_X_FORWARDED_FOR');
    else if(getenv('HTTP_X_FORWARDED'))
        $ipAddress = getenv('HTTP_X_FORWARDED');
    else if(getenv('HTTP_FORWARDED_FOR'))
        $ipAddress = getenv('HTTP_FORWARDED_FOR');
    else if(getenv('HTTP_FORWARDED'))
        $ipAddress = getenv('HTTP_FORWARDED');
    else if(getenv('REMOTE_ADDR'))
        $ipAddress = getenv('REMOTE_ADDR');
    else
        $ipaddress = 'UNKNOWN';

    return $ipAddress;
}




/**
 * see()
 */
function see($data, $way = ''){
    if($way === 'dump' ){
        echo "<pre>"; var_dump($data); die();
    }else{
        echo "<pre>"; print_r($data); die();
    }
}

function getDateFormat($date, $db_date=false){
    if ($db_date) {
        // Database Date Format
        return date('Y-m-d', strtotime($date));
    }
    // View Date Format
    return date('d-m-Y', strtotime($date));
}

function getUrlSlug($id,$title){
    $slug = Str::slug($title, '-');
    return $id.'-'.$slug;
}
function getSlugById($slug){
    $id = explode('-',$slug);
    return $id[0];
}
