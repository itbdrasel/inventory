<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateInvBrandsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('inv_brands', function (Blueprint $table) {
            $table->id();
            $table->string('brand_name');
            $table->string('brand_type')->nullable();
            $table->bigInteger('parent')->default(false);
            $table->bigInteger('category_id')->nullable();
            $table->bigInteger('supplier_id')->nullable();
            $table->bigInteger('user_id');
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
        Schema::dropIfExists('inv_brands');
    }
}
