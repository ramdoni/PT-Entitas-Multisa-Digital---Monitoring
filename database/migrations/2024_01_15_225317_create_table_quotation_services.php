<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableQuotationServices extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quotation_material', function (Blueprint $table) {
            $table->id();
            $table->integer('quotation_id')->nullable();
            $table->integer('material_id')->nullable();
            $table->smallInteger('qty')->nullable();
            $table->integer('price')->nullable();
            $table->integer('total')->nullable();
            $table->text('material_detail')->nullable();
            $table->timestamps();
        });

        Schema::create('quotation_services', function (Blueprint $table) {
            $table->id();
            $table->integer('quotation_id')->nullable();
            $table->string('description')->nullable();
            $table->string('unit',25)->nullable();
            $table->smallInteger('qty')->nullable();
            $table->integer('price')->nullable();
            $table->integer('total')->nullable();
            $table->timestamps();
        });

        Schema::create('quotation_engineering', function (Blueprint $table) {
            $table->id();
            $table->integer('quotation_id')->nullable();
            $table->integer('vendor_id')->nullable();
            $table->string('unit',25)->nullable();
            $table->smallInteger('qty')->nullable();
            $table->integer('price')->nullable();
            $table->integer('total')->nullable();
            $table->text('vendor_detail')->nullable();
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
        Schema::dropIfExists('quotation_services');
    }
}
