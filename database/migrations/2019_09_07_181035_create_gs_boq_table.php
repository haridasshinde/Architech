<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsBoqTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_boq', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('raw_material_id');
            $table->string('category', 50);
            $table->string('make_model', 50);
            $table->double('total_qty', 20,2);
            $table->double('total_order_qty', 20,2);
            $table->char('is_active', 1)->defalt(0);
            $table->integer('created_by');
            $table->integer('updated_by')->nullable();
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
        Schema::dropIfExists('gs_boq');
    }
}
