<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsQuotationDetailTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_quotation_detail', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('quotation_header_id');
            $table->integer('item_id');
            $table->integer('qty');
            $table->integer('uom_id');
            $table->double('rate', 10,2)->default(0.00);
            $table->double('amount', 10,2)->default(0.00);
            $table->double('tax_amount', 10,2)->default(0.00);
            $table->string('product_img', 255)->nullable();
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
        Schema::dropIfExists('gs_quotation_detail');
    }
}
