<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsItemTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_item', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nm', 50);
            $table->string('description', 50)->nullable();
            $table->integer('uom_id')->nullable();
            $table->char('is_active', 1)->default(0);
            $table->double('amount', 10,2)->default(0.00);
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
        Schema::dropIfExists('gs_item');
    }
}
