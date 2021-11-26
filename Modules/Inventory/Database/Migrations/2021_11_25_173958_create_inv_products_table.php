<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inv_products', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('category_id');
            $table->string('name');
            $table->string('product_code')->nullable();
            $table->string('product_sku')->nullable();
            $table->string('product_unit')->nullable();
            $table->string('sell_unit')->nullable();
            $table->string('purchase_unit')->nullable();
            $table->string('unit_price')->nullable();
            $table->string('type')->nullable();
            $table->bigInteger('brand_id')->nullable();
            $table->integer('pack_id')->nullable();
            $table->integer('pack_id')->nullable();
            $table->integer('origin_id')->nullable();
            $table->integer('image')->nullable();
            $table->date('expiry_date')->nullable();
            $table->bigInteger('user_id');
            $table->tinyInteger('discount_status')->default(true);
            $table->tinyInteger('vat_status')->default(true);
            $table->tinyInteger('status')->default(true);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('inv_products');
    }
}
