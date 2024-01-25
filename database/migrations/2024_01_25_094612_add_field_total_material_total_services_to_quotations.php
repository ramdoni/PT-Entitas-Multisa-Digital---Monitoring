<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldTotalMaterialTotalServicesToQuotations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('quotations', function (Blueprint $table) {
            $table->bigInteger('total_material')->nullable();
            $table->bigInteger('total_services')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('quotations', function (Blueprint $table) {
            //
        });
    }
}
