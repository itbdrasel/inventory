<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\User;
use Cartalyst\Sentinel\Checkpoints\ThrottlingException;
use Illuminate\Http\Request;
use Sentinel;
use Validator;

class LoginController extends Controller
{
    private $data;
    public function login(){
        if(Sentinel::check()){
            $status = Sentinel::getUser()->status;
            if ($status !=1) {
                Sentinel::logout();
                return redirect('author/login')->with('error', 'Sorry your user inactive.')->withErrors('Sorry your user inactive.')->withInput();
            }
            switch (Sentinel::getUser()->roles[0]->slug) {
                case "admin":
                    return redirect('author/dashboard');
                default:
                    return redirect('author/dashboard');
            }
        }
        $this->data['title'] = 'Login';
        return view('auth.login',$this->data);
    }

    public function login_user(Request $request){

		Sentinel::disableCheckpoints();

		$errorMsg = [
            'email.required' => 'Please provide email!',
            'email.email' => 'Please provide a valid email!',
            'password.required' => 'Password is Required!',
        ];

		$validator = Validator::make($request->all(),[
            'email' => 'required|email',
            'password' => 'required'
        ], $errorMsg);


		if($validator->fails()){
            return redirect()->back()->with('error', 'Sorry your email or password is incorrect. Please try again.')->withErrors('Sorry your email or password is incorrect. Please try again.')->withInput();
        }

        try{
            $user = Sentinel::authenticate($request->all());

        }catch(ThrottlingException $e){
            return redirect()->back()->with('error', 'Sorry your email or password is incorrect. Please try again.')->withErrors('Sorry your email or password is incorrect. Please try again.')->withInput();
        }

        if(Sentinel::check()){
            $status = Sentinel::getUser()->status;
            if ($status !=1) {
                Sentinel::logout();
                return redirect('author/login')->with('error', 'Sorry your user inactive.')->withErrors('Sorry your user inactive.')->withInput();
            }
            switch (Sentinel::getUser()->roles[0]->slug) {
                case "admin":
                    return redirect('author/dashboard');
                default:
                    return redirect('author/dashboard');
            }
        }else{
            return redirect()->back()->with('error', 'Sorry your email or password is incorrect. Please try again.')->withErrors('Sorry your email or password is incorrect. Please try again.')->withInput();

        }
    }

    public function logout(){
        Sentinel::logout();
        return redirect('author/login');
    }




/****************************
 * Forgot Password
 ***************************/
    public function ForgotPassword(){
        $this->data['title'] = 'Forgot Password';
        return view('author.auth.forgot_password', $this->data);
    }

    public function ForgotPasswordStore(Request $request){
        $email = $request['email'];
        $user = User::where('email', $email)->first();

        if (empty($user)) {
            return redirect()->back()->withErrors('This e-mail is not associated with any user account.')->withInput();
        }
        $user = Sentinel::findById($user->id);
        $reminder=  Reminder::create($user);



        $name = $user->full_name;
        $code = $reminder->code;
        $message =[
            'email'=>$email,
            'name'=>$name,
            'code'=>$code,
            'reset_url'=>'author/reset-password/'.$code,
        ];
        emailSend($email, $name.' reset your password',$message,'forgot_password');
        $data = [
            'email'         => $email,
            'token'         => $code,
            'created_at'    => date('Y-m-d H:i:s'),
        ];

        DB::table('password_resets')->updateOrInsert( ['email' => $email, 'status' =>1], $data );
        return redirect()->back()->with('success', 'Password Reset Instruction was send to your email.');
    }


    public function resetPassword($code){
        $user= DB::table('password_resets')->where('token', $code)->first();

        if (empty($user)) {
            return abort(404);
        }elseif (getHours($user->created_at) >24) {
            return abort(404);
        }
        $this->data['title'] = 'Forgot Password';
        $this->data['user'] = $user;
        return view('auth.reset_password', $this->data);
    }

    public function resetPasswordStore(Request $request, $code){

        $validator = Validator::make($request->all(),[
            'email'     => 'required|email',
            'password'  => 'required|confirmed',
            'code'      => 'required',
        ]);

        if($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput()->with('error', 'Provide Valid Information' );
        }

        $userCheck= DB::table('password_resets')->where('token', $code)->first();
        if (empty($userCheck)) {
            return  SuccessError::errorLogin('Bad Request.','Go to Forgot Password','author/forgot-password');
        }
        $email = $request['email'];
        $user = User::where('email', $email)->first();
        $user = Sentinel::findById($user->id);
        try {
            Sentinel::update($user, ['password' => $request['password']]);
            DB::table('password_resets')->where('token', $code)->delete();
            return  SuccessError::successLogin('Your password has been successfully changed. Use your new password to login.','Go to Login','author/login');

        } catch (NotUniquePasswordException $e) {
            return redirect()->back()->with('error', 'Bad Request.')->withErrors('Bad Request.')->withInput();
        }

    }

}
