<?php

namespace Modules\Inventory\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Inventory\Entities\InvCategory;
use Validator;
use Sentinel;

class CategoriesController extends Controller
{

    private $model;
    private $moduleName;
    private $data;
    private $bUrl;
    private $title;

    public function __construct(){
        $this->model = InvCategory::class;
        $this->moduleName = 'inventory';
        $this->title = 'Category';
        $this->bUrl = $this->moduleName.'/categories';

    }

    public function layout($pageName){
        $this->data['bUrl'] = $this->bUrl;
        $this->data['moduleName'] = $this->moduleName;
        echo view($this->moduleName.'::.categories.'.$pageName.'', $this->data);
    }

    /**
     * Display a listing of the resource.
     * @return Renderable
     */
    public function index(Request $request)
    {

        $this->data = [
            'title'         => $this->title.' Manage',
            'pageUrl'       => $this->bUrl,
            'page_icon'     => '<i class="fa fa-book"></i>',
            'categories'    => $this->model::where('parent','!=',0)->get()
        ];


        //result per page
        $perPage = session('per_page') ?: 20;

        //table item serial starting from 0
        $this->data['serial'] = ( ($request->get('page') ?? 1) -1) * $perPage;


        if($request->method() === 'POST'){
            session(['per_page' => $request->post('per_page') ]);
        }

        //model query...
        $queryData = $this->model::orderByFilter($this->model)->where('parent',0);

        //filter by text.....
        if( $request->filled('filter') ){
            $filter = $this->data['filter'] = $request->get('filter');
            $queryData->where('name', 'like', '%'.$filter.'%');
        }



        $this->data['allData'] =  $queryData->paginate($perPage)->appends( request()->query() ); // paginate

        $this->layout('index');
    }

    /**
     * Show the form for creating a new resource.
     * @return Renderable
     */
    public function create()
    {
        $this->data =[
            'title'         => 'Add New '.$this->title,
            'page_icon'     => '<i class="fa fa-book"></i>',
            'objData'       => '',
            'parents'       => $this->model::get()
        ];
        $this->layout('create');
    }

    /**
     * Store a newly created resource in storage.
     * @param Request $request
     * @return Renderable
     */
    public function store(Request $request)
    {
        $id = $request['id'];

        $rules = [
            'name'      => 'required',
            'status'    => 'required',
        ];

        $attribute =[

        ];

        $customMessages =[];

        $validator = Validator::make($request->all(), $rules, $customMessages, $attribute);
        if ($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $mode =1;
        $parent = $request['parent'];
        if ($parent>0){
            $category = $this->model::where('id', $request['parent'])->first();
            $mode = $category->mode+1;
        }
        $data = [
            'name'      => $request['name'],
            'parent'    => $parent,
            'status'    => $request['status'],
            'mode'      => $mode,
        ];

        if (empty($id)){
            $data['used_id'] = Sentinel::getUser()->id;
            $this->model::create($data);
            return redirect($this->bUrl)->with('success', 'Record Successfully Created.');
        }else{
            $this->model::where('id', $id)->update($data);
            $this->mode($id, $mode);
            return redirect($this->bUrl)->with('success', 'Successfully Updated');
        }
    }

    public function mode($id, $mode){
        $categories = $this->model::where('parent', $id)->get();
        if (count($categories)>0){
            foreach ($categories as $key =>$value){
                $mode = $mode+1;
                $data =['mode'=>$mode];
                $this->model::where('id',$value->id)->update($data);
                $this->mode($value->id, $mode);
            }
        }
    }

    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {

    }

    /**
     * Show the form for editing the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function edit($id)
    {
        $id = filter_var($id, FILTER_VALIDATE_INT);
        $objData = $this->model::where('id', $id)->first();
        if( !$id || empty($objData)){ exit('Bad Request!'); }

        $this->data = [
            'title'         => 'Edit '.$this->title,
            'page_icon'     => '<i class="fa fa-book"></i>',
            'objData'       => $objData,
            'parents'       => $this->model::where('id','!=',$id)->get()
        ];

        $this->layout('create');
    }



    /**
     * Remove the specified resource from storage.
     * @param int $id
     * @return Renderable
     */
    public function destroy(Request $request, $id)
    {
        $id = filter_var($id, FILTER_VALIDATE_INT);
        if( !$id ){ exit('Bad Request!'); }

        $this->data = [
            'title'     => 'Delete '.$this->title,
            'pageUrl'   => $this->bUrl.'/delete/'.$id,
            'page_icon' => '<i class="fa fa-book"></i>',
            'objData'   => $this->model::where('id', $id)->first(),
        ];

        $this->data['bUrl'] = $this->bUrl;

        if($request->method() === 'POST' ){
            $this->model::where('id', $id)->delete();

            return json_encode(['fail' => FALSE, 'error_messages' => " was deleted."]);
        }else{
            return view($this->moduleName.'::layouts.delete', $this->data);
        }
    }
}
