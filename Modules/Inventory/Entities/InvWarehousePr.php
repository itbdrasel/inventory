<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class InvWarehousePr extends Model
{

    protected  $table ='inv_warehouse_pr';
    protected $fillable = [
        'warehouse_id', 'pr_status','title','user_id'
    ];

    public static $sortable = ['title' => 'title'];

    public function warehouse(){
        return $this->belongsTo(InvWarehouse::class);
    }

    public function totalPrProduct(){
        return $this->hasOne(InvProductPr::class,'pr_id','id')->groupBy('qty')
            ->select( DB::raw('sum(qty) as total'), DB::raw( 'count(*) as count'));
    }
    public function prProducts(){
        return $this->hasMany(InvProductPr::class,'pr_id','id');
    }

}
