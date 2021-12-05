<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvWarehousePr extends Model
{

    protected  $table ='inv_warehouse_pr';
    protected $fillable = [
        'warehouse_id', 'pr_status'
    ];

//    public static $sortable = ['name' => 'name'];

}
