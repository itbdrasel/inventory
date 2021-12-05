<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvProductWarehouse extends Model
{

    protected  $table ='inv_product_warehouse';
    protected $fillable = [
        'product_id', 'warehouse_id', 'qty', 'requisition_status'
    ];

//    public static $sortable = ['name' => 'name'];

}
