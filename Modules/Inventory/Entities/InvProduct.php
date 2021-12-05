<?php

namespace Modules\Inventory\Entities;

use Illuminate\Database\Eloquent\Model;

class InvProduct extends Model
{


    protected $fillable = [
        'category_id', 'product_name', 'product_code', 'product_sku', 'product_unit', 'sell_unit', 'purchase_unit', 'unit_price', 'quantity', 'alert_quantity', 'product_type', 'brand_id', 'pack_id', 'origin_id', 'image', 'expiry_date', 'user_id', 'discount_status', 'vat_status', 'status'
    ];

    public static $sortable = ['name' => 'name'];

    public static $insertData=[
        'category_id', 'product_name', 'product_code', 'product_sku', 'product_unit', 'sell_unit', 'purchase_unit', 'unit_price', 'quantity', 'alert_quantity', 'product_type', 'brand_id', 'pack_id', 'origin_id', 'discount_status', 'vat_status', 'status'
    ];

    public function category(){
        return $this->belongsTo(InvCategory::class);
    }

}
