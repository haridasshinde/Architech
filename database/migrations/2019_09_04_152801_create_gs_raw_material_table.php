<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsRawMaterialTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_raw_material', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nm', 50);
            $table->string('model_nm', 50);
            $table->integer('uom_id')->nullable();
            $table->decimal('qty', 10,2)->nullable();
            $table->integer('default_vendor')->nullable();
            $table->char('is_active', 1);
            $table->string('photo', 500)->nullable();
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
        Schema::dropIfExists('gs_raw_material');
    }
}
