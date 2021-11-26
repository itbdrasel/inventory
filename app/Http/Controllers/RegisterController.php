<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Roles;
use App\User;
use Illuminate\Http\Request;
use Validator;
use Sentinel;

class RegisterController extends Controller
{

    private $model;
    private $data;
    private $tableId;
    private $bUrl;

    public function __construct(){

        $this->tableId  = 'cat_id';
        $this->model    = User::class;
        $this->bUrl     = 'author/user';

    }

    public function layout($pageName){
        $this->data['tableID']  = $this->tableId;
        $this->data['bUrl']     = $this->bUrl;
        echo view('auth.users.'.$pageName.'', $this->data);
    }


    public function create(){
        $this->data = [
            'title'     => 'Add New User',
            'page_icon' => '<i class="fa fa-book"></i>',
            'roles'     => Roles::get()
        ];

        $this->layout('create');
    }


    public function store(Request $request){

        $validator = Validator::make($request->all(),[
            'full_name' => 'required',
            'role'      => 'required',
            'email'     => 'required|email|unique:users',
            'password'  => 'required|confirmed|min:6'
        ]);


        if($validator->fails()){
			return redirect()->back()->withErrors($validator)->withInput()->with('error', 'Provide Valid Information' );
        }

        $data = $request->all();
        $user = Sentinel::registerAndActivate($request->all());
        $role = Sentinel::findRoleByID($data['role']);

        $role->users()->attach($user);

		$userData = [
			'full_name' => $request->post('full_name'),
			'phone'     => $request->post('phone') ?: NULL,
		];

		$this->model::where('id', $user->id)->update($userData);

        return redirect()->to($this->bUrl)->with('success', 'User Successfully Created!');

    }

	public function edit($id){
        $this->data=[
            'title'         => 'Edit User',
            'bUrl'          => $this->bUrl.'/update',
            'objData'       => User::where('id',$id)->with('role')->first(),
            'roles'         => Roles::get()
        ];
        return view('auth.users.edit',$this->data);

    }

    public function update(Request $request){
        $id = $request['id'];

        $rules = [
            'full_name' => 'required',
//            'email' => 'required|email|unique:users,email,'.$id,
        ];

        $attribute =[
            'full_name'      => 'User Name',
        ];

        $customMessages =[];

        $validator = Validator::make($request->all(), $rules, $customMessages, $attribute);

        if ($validator->fails()){
            return response()->json($validator->messages(), 200);
        }

        $params =[
            'full_name' =>$request['full_name'],
            'status'    =>$request['status'],
        ];

        $this->model::where('id', $id)->update($params);
        return 'success';
    }

    public function show($id){
        $this->data=[
            'title'         => 'User Show',
            'page_icon'     => '<i class="fa fa-book"></i>',
            'objData'       => $this->model::where('id',$id)->with('role','role.roleName')->first(),
        ];
        $this->layout('show');
    }


    public function destroy(Request $request, $id)
    {
        $id = filter_var($id, FILTER_VALIDATE_INT);
        if( !$id ){ exit('Bad Request!'); }

        $this->data = [
            'title'     => 'Delete user',
            'pageUrl'   => $this->bUrl.'/delete/'.$id,
            'objData'   => User::where('id',$id)->first(),
        ];

        $this->data['bUrl'] = $this->bUrl.'/delete/'.$id;

        if($request->method() === 'POST' ){
            User::where('id',$id)->delete();
            return json_encode(['fail' => FALSE, 'error_messages' => " was deleted."]);
        }else{
            return view('auth.users.delete',$this->data);
        }

    }

    public function user($user_type=''){
        $user = Sentinel::getUser();

        $this->data=[
            'title'         => 'User Details',
            'page_icon'     => '<i class="fa fa-book"></i>',
            'objData'       => User::where('id',$user->id)->with('role','role.roleName')->first(),
        ];
        $this->layout('admin_user');
    }

}
