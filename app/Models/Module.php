<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Module extends Model
{
    protected $table='module_name';

    protected $fillable = [
        'name','module_code','module_url'
    ];
}
