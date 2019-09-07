<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsRawMaterialItemMappingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_raw_material_item_mapping', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('item_id');
            $table->integer('raw_material_id')->nullable();
            $table->integer('uom_id')->nullable();
            $table->decimal('qty', 10,2)->default(0.00);
            $table->char('is_active', 1);
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
        Schema::dropIfExists('gs_raw_material_item_mapping');
    }
}
