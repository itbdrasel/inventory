<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\RoleUser;
use App\Roles;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Validator;
use Sentinel;

class UsersController extends Controller
{

    private $model;
    private $data;
    private $bUrl;
    public function __construct(){

        $this->model    = User::class;
        $this->bUrl     = 'author/user';

    }

    public function layout($pageName){
        $this->data['bUrl']     = $this->bUrl;
        echo view('auth.users.'.$pageName.'', $this->data);
    }


    public function index(Request $request){
        $this->data = [
            'title'         => 'User Manager',
            'pageUrl'         => $this->bUrl,
            'page_icon'     => '<i class="fa fa-book"></i>',
        ];

        // result per page


        $this->data['roles'] = Roles::get();

        $this->data['selected'] = $request['selected'];

        $perPage = session('per_page') ?: 20;


        //table item serial starting from 0
        $this->data['serial'] = ( ($request->get('page') ?? 1) -1) * $perPage;


        if($request->method() === 'POST'){
            session(['per_page' => $request->post('per_page') ]);
        }


        // model query...
        $queryData = $this->model::
            leftJoin('role_users', 'users.id', 'role_users.user_id')
            ->leftJoin('roles', 'role_users.role_id', 'roles.id')
            ->selectRaw('users.*, roles.name')
            // Group by...
            ->orderBy( getOrder($this->model::$sortable, 'users.id')['by'], getOrder($this->model::$sortable, 'users.id')['order'])
        ;

        if( $request->filled('filter') ) {
            $this->data['filter'] = $filter = $request->get('filter');
            $queryData->where(function ($query) use ($filter) {
                $query->orWhere('full_name', 'like', $filter);
                $query->orWhere('email', 'like', $filter);
            });
        }

        //filter by User Role.....
        if( $request->filled('selected') ){
            $this->data['selected'] = $selectedFilter = $request->get('selected');
            $queryData->where( [ 'roles.id' => $selectedFilter ] );
        }

        $this->data['allData'] =  $queryData->paginate($perPage)->appends( request()->query() ); // paginate

        $this->layout('index');


    }

    public function profile($id, Request $request){

        $user= $this->model::where('users.id', $id)
            ->leftJoin('role_users', 'users.id', 'role_users.user_id')
            ->leftJoin('roles', 'role_users.role_id', 'roles.id')
            ->selectRaw('users.*, roles.name, roles.id as role_id')->first();

        $this->data = [
            'title'         => 'User Profile',
            'page_icon'     => '<i class="fa fa-book"></i>',
            'objData'       => $user,
            'permission'    => $request['permission']
        ];

        $this->data['sectionNames'] = DB::table('tbl_module_sections')->get();
        $this->layout('profile');
    }
}
