<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvProduct extends Model
{


    protected $fillable = [
        'name', 'parent', 'mode', 'used_id', 'status'
    ];

    public static $sortable = ['name' => 'name'];

    public function category(){
        return $this->belongsTo(InvCategory::class);
    }

}
