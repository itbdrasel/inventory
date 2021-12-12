<?php

namespace Modules\Inventory\Http\Controllers;

use Illuminate\Contracts\Support\Renderable;
use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Modules\Inventory\Entities\InvCategory;
use Modules\Inventory\Entities\InvProduct;
use Modules\Inventory\Entities\InvProductPr;
use Modules\Inventory\Entities\InvProductWarehouse;
use Modules\Inventory\Entities\InvWarehouse;
use Modules\Inventory\Entities\InvWarehousePr;
use Validator;
use Sentinel;

class ProductPrController extends Controller
{

    private $model;
    private $moduleName;
    private $data;
    private $bUrl;
    private $title;

    public function __construct(){
        $this->model = InvWarehousePr::class;
        $this->moduleName = 'inventory';
        $this->title = 'Product PR';
        $this->bUrl = $this->moduleName.'/product-pr';

    }

    public function layout($pageName){
        $this->data['bUrl'] = $this->bUrl;
        $this->data['moduleName'] = $this->moduleName;
        echo view($this->moduleName.'::.product_pr.'.$pageName.'', $this->data);
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
        ];


        //result per page
        $perPage = session('per_page') ?: 20;

        //table item serial starting from 0
        $this->data['serial'] = ( ($request->get('page') ?? 1) -1) * $perPage;


        if($request->method() === 'POST'){
            session(['per_page' => $request->post('per_page') ]);
        }

        //model query...
        $queryData = $this->model::orderByFilter($this->model)->with('warehouse');

        //filter by text.....
//        if( $request->filled('filter') ){
//            $filter = $this->data['filter'] = $request->get('filter');
//            $queryData->where('name', 'like', '%'.$filter.'%');
//        }



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
        ];
        $this->data['warehouses']   = InvWarehouse::get();
        $this->data['products']     = InvProduct::where('status',1)->get();
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
            'warehouse_id'      => 'required',
        ];

        $attribute =[
            'warehouse_id'=> 'Warehouse'
        ];

        $customMessages =[];

        $validator = Validator::make($request->all(), $rules, $customMessages, $attribute);
        if ($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }


        $data = [
            'warehouse_id'  => $request['warehouse_id'],
            'title'         => $request['title'],
            'user_id'       => Sentinel::getUser()->id
        ];
       $pr_id = $this->model::insertGetId($data);
       $pr_products = $request['qty'];
       if (!empty($pr_products)){
           foreach ($pr_products as $key=>$value){
               $prData = [
                   'product_id'     => $key,
                   'warehouse_id'   => $request['warehouse_id'],
                   'pr_id'          => $pr_id,
                   'qty'            => $value,
               ];
               InvProductPr::create($prData);
           }
       }
        return redirect($this->bUrl)->with('success', 'Record Successfully Created.');

    }



    /**
     * Show the specified resource.
     * @param int $id
     * @return Renderable
     */
    public function show($id)
    {
        $id = filter_var($id, FILTER_VALIDATE_INT);
        $objData = $this->model::where('id', $id)->first();
        if( !$id || empty($objData)){ exit('Bad Request!'); }

        $this->data = [
            'title'         => 'Show '.$this->title,
            'page_icon'     => '<i class="fa fa-table"></i>',
            'objData'       => $objData,
        ];

        $this->layout('show');
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
            'page_icon'     => '<i class="fa fa-edit"></i>',
            'objData'       => $objData,
            'categories'    => InvCategory::where('status',1)->get()
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
            InvProductPr::where('pr_id', $id)->delete();
            $this->model::where('id', $id)->delete();

            return json_encode(['fail' => FALSE, 'error_messages' => " was deleted."]);
        }else{
            return view($this->moduleName.'::layouts.delete', $this->data);
        }
    }


    public function product($id){
        $id = filter_var($id, FILTER_VALIDATE_INT);
        $objData = $this->model::where('id', $id)->first();
        if( !$id || empty($objData)){ exit('Bad Request!'); }

        $this->data = [
            'title'         => 'Show '.$this->title,
            'page_icon'     => '<i class="fa fa-book"></i>',
            'objData'       => $objData,
        ];

        $this->layout('product');
    }
    public function productStore(Request $request){

        $rules = [
            'order_status'      => 'required',
        ];

        $attribute =[
            'order_status'=> 'Order Status'
        ];

        $customMessages =[];

        $validator = Validator::make($request->all(), $rules, $customMessages, $attribute);

        if ($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }
        $order_status = $request['order_status'];
        $product_status = $request['product_status'];
        $warehouse_id = $request['warehouse_id'];
        if (!empty($product_status)){
            foreach ($product_status as $key=>$value){
//                if ($product_status <= $order_status) {
                    $prData = [
                        'qty' => $request['qty'][$key],
                        'pr_status' => $value,
                    ];
                    InvProductPr::where('id', $key)->update($prData);
                    $product_id = $request['product_id'][$key];
                    $product_p =  InvProductWarehouse::where(['warehouse_id'=>$warehouse_id, 'product_id'=>$product_id])->first();
                    $productData=[
                        'warehouse_id'=>$warehouse_id,
                        'product_id'=>$request['product_id'][$key]
                    ];
                    if (!empty($product_p)){
                        $qty =$product_p->qty + $request['qty'][$key];
                        $status = $request['status'][$key];
                        if ($value !=2 && $status ==2){
                            $qty =  $product_p->qty - $request['qty_hidden'][$key];
                        }
                        $productData['qty']= $qty;
                        InvProductWarehouse::where(['warehouse_id'=>$warehouse_id, 'product_id'=>$product_id])->update($productData);
                    }else{
                        if ($value ==2) {
                            $productData['qty'] = $request['qty'][$key];
                            InvProductWarehouse::create($productData);
                        }
                    }
//                }
            }
        }
        $this->model::where('id',$request['id'])->update(['pr_status'=>$order_status]);
        return redirect($this->bUrl)->with('success', 'Record Successfully Created.');
    }
}
