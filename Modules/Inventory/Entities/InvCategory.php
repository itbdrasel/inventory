<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvCategory extends Model
{


    protected $fillable = [
        'name', 'parent', 'mode', 'used_id', 'status'
    ];

    public static $sortable = ['name' => 'name'];

    public function parents(){
        return $this->hasMany(InvCategory::class, 'parent','id');
    }

}
