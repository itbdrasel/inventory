<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvProductPr extends Model
{

    protected  $table ='inv_product_pr';
    protected $fillable = [
        'product_id', 'warehouse_id', 'qty', 'pr_status','pr_id'
    ];

//    public static $sortable = ['name' => 'name'];

    public function product(){
        return $this->belongsTo(InvProduct::class);
    }

}
