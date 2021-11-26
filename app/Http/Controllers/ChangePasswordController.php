<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

use Illuminate\Http\Request;
use Sentinel;
use Validator;

class ChangePasswordController extends Controller
{
    private $data;

     public function changePassword(){
         $this->data = [
             'title'    =>'Change Password',
             'users'    =>Sentinel::getUserRepository()->get(),
         ];
         return view('auth.change_password', $this->data);
     }

    public function changePasswordStore(Request $request){
        $validator = Validator::make($request->all(),[
            'user'      => 'required',
            'password'  => 'required|confirmed|string|min:8|confirmed|regex:/^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{6,}$/',
        ]);
        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput()->with('error', 'Provide Valid Information' );
        }
        $id = $request['user'];
        $user = Sentinel::findById($id);
        Sentinel::update($user, ['password' => $request['password']]);
//        return redirect('system/core/profile/'.$id)->with('success', 'Successfully Updated');
        return redirect()->back()->with('success', 'your password has been changed successfully.');
    }


}
