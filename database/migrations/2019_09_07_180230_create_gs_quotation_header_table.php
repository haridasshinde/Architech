<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsQuotationHeaderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_quotation_header', function (Blueprint $table) {
            $table->increments('id');
            $table->date('quotation_date');
            $table->string('status',30);
            $table->dateTime('quotation_approval_date')->nullable();
            $table->integer('project_id');
            $table->integer('client_id');
            $table->integer('site_id');
            $table->string('attachment_details')->nullable();
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
        Schema::dropIfExists('gs_quotation_header');
    }
}
