<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateGsClientMasterTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('gs_client', function (Blueprint $table) {
            $table->increments('id');
            $table->string('client_name', 50);
            $table->string('address1', 255)->nullable();
            $table->string('address2', 255)->nullable();
            $table->string('city', 50)->nullable();
            $table->string('state', 50)->nullable();
            $table->string('pincode', 10)->nullable();
            $table->string('contact_no', 25)->nullable();
            $table->string('mobile_no', 25)->nullable();
            $table->string('reference_by', 50)->nullable();
            $table->string('gst_no', 20)->nullable();
            $table->string('email_id', 50)->nullable();
            $table->string('pan_no', 10)->nullable();
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
        Schema::dropIfExists('gs_client');
    }
}
