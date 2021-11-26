<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;

use App\Models\BaseSetting;
use Session;
use Illuminate\Http\Request;
use Sentinel;
use Validator;

class BaseSettingController extends Controller
{

    private $data;
    private $model;
    private $bUrl;
    public function __construct(){
        $this->model = BaseSetting::class;
        $this->bUrl = '/base_setting';
    }


    public function layout($pageName){

        $this->data['bUrl']     = 'author/base_setting';
        $this->data['page_icon'] = '<i class="fa fa-edit"></i>';
        echo view('base_setting.'.$pageName.'', $this->data);
    }

    public function index(){
        $this->data['title'] = 'System Settings';
        $this->data['pageUrl']  = 'base_setting';
        $this->data['allData']  = BaseSetting::get()->keyBy('s_name');
        $this->layout('index');
    }

    public function store(Request $request)
    {

        $rules = [
            'app_name'          => 'required',
            'app_title'         => 'required',
            'app_url'           => 'required',
            'email'             => 'required',
            'app_address'       => 'required',
            'contact'           => 'required',
            'currency_symbol'   => 'required',
            'currency_order'    => 'required',
            'date_format'       => 'required',
            'usd_rate'          => 'required',
        ];

        $attribute =[];

        $customMessages =[];

        $validator = Validator::make($request->all(), $rules, $customMessages, $attribute);

        if ($validator->fails()){
            return redirect()->back()->withErrors($validator)->withInput();
        }

        $data = [
            'appName'           => $request['app_name'],
            'appTitle'          => $request['app_title'],
            'url'               => $request['app_url'],
            'email'             => $request['email'],
            'appAddress'        => $request['app_address'],
            'contact'           => $request['contact'],
            'c_symbol'          => $request['currency_symbol'],
            'c_order'           => $request['currency_order'],
            'date_format'       => $request['date_format'],
            'usd_rate'          => $request['usd_rate'],
        ];

         foreach ($data as $key=>$value){

             if ($value != config('settings')[$key]) {
                 $this->model::where('s_name', $key)->update(['s_value'=>$value]);
             }
         }
        return redirect()->back()->with('success', 'Successfully Updated');
    }

    public function logo(Request $request)
    {

        $this->data = [
            'title'     => 'Setting Logo',
            'page_icon' => '<i class="fa fa-book"></i>',
            'pageUrl'   => $this->bUrl.'/logo/',
            'bUrl' 		=> $this->bUrl,
        ];
        $objData = $this->model::where('s_name', 'logo')->first();
        $this->data['objData']=$objData;


        if($request->method() === 'POST' ){

            $rules = [
                'logo' => ['required', 'max:1024', 'dimensions:max_width=1000,max_height=1000', 'mimes:jpeg,bmp,png'],
            ];

            $attributes = [
                'logo' => 'logo',
            ];

            $validator = Validator::make($request->all(), $rules, [],  $attributes);

            if($validator->fails()){
                echo json_encode(['fail' => TRUE, 'messages' => $validator->errors()->first().$request->file('logo') ]);
            }else{


                $logo = $request->file('logo');
                $image_name = 'logo.'.$logo->getClientOriginalExtension();
                $dir_name = "/images/base_setting/";

                // remove from dir
                if(file_exists(public_path().$objData->s_value) && $dir_name.$image_name !=$objData->s_value){
                    //only remove file.
                    if(is_file(public_path().$objData->s_value) ) unlink(public_path().$objData->s_value);
                }
                //processing image file

                $logo->move(public_path().$dir_name, $image_name);

                $this->model::where('s_name', 'logo')->update( ['s_value' => $dir_name.$image_name] );

                echo json_encode(['fail' => FALSE, 'messages' => "Logo Uploaded"]);
            }

        }else{
           echo view('base_setting.logo', $this->data);
        }

    }


}
