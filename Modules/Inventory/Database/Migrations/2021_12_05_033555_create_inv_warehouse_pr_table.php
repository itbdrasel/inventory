<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvWarehousePrTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inv_warehouse_pr', function (Blueprint $table) {
            $table->id();
            $table->integer('warehouse_id');
            $table->tinyInteger('pr_status')->default(true)->comment('1=request, 2= received, 3=Cancel');
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
        Schema::dropIfExists('inv_warehouse_pr');
    }
}
