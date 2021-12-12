<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvProductWarehouseTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inv_product_warehouse', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('product_id');
            $table->integer('warehouse_id');
            $table->double('qty')->default(false);
            $table->tinyInteger('requisition_status')->default(true);
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
        Schema::dropIfExists('inv_product_warehouse');
    }
}
