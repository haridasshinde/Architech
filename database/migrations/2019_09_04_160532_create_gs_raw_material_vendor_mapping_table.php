<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsRawMaterialVendorMappingTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_raw_material_vendor_mapping', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('raw_material_id');
            $table->integer('vendor_id');
            $table->decimal('rate', 10,2)->default(0.00);
            $table->integer('uom_id')->nullable();
            $table->char('is_active', 1)->default(0);
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
        Schema::dropIfExists('gs_raw_material_vendor_mapping');
    }
}
