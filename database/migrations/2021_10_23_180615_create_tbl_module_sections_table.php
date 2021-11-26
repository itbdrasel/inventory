<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTblModuleSectionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_module_sections', function (Blueprint $table) {
            $table->id('section_id');
            $table->string('section_name')->unique();
            $table->string('section_module_name')->nullable();
            $table->text('section_action_route')->nullable();
            $table->string('section_roles_permission')->nullable();
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
        Schema::dropIfExists('tbl_module_sections');
    }
}
