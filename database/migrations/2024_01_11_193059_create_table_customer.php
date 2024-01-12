<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableCustomer extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('customer', function (Blueprint $table) {
            $table->id();
            $table->string('customer_code',25)->nullable();
            $table->string('name',255)->nullable();
            $table->string('phone',25)->nullable();
            $table->text('address')->nullable();
            $table->integer('provinsi_id')->nullable();
            $table->integer('kabupaten_id')->nullable();
            $table->integer('kecamatan_id')->nullable();
            $table->integer('kelurahan_id')->nullable();
            $table->timestamps();
        });

        Schema::create('customer_pic', function (Blueprint $table) {
            $table->id();
            $table->string('name',100)->nullable();
            $table->string('position',50)->nullable();
            $table->string('mobile',50)->nullable();
            $table->string('email',100)->nullable();
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
        Schema::dropIfExists('customer');
    }
}
