<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldFactorPersenToQuotationMaterial extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('quotation_material', function (Blueprint $table) {
            $table->integer('factor_amount')->nullable();
        });
        Schema::table('quotation_services', function (Blueprint $table) {
            $table->integer('factor_amount')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('quotation_material', function (Blueprint $table) {
            //
        });
    }
}
