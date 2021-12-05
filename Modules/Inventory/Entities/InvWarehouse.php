<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvWarehouse extends Model
{


    protected $fillable = [
        'name', 'phone', 'address', 'status'
    ];

    public static $sortable = ['name' => 'name'];


}
