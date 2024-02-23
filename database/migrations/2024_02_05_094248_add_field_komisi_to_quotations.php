<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldKomisiToQuotations extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('quotations', function (Blueprint $table) {
            $table->decimal('komisi',2,2)->nullable();
            $table->integer('komisi_amount')->nullable();
        });

        Schema::table('quotation_material', function (Blueprint $table) {
            $table->integer('factor')->nullable();
        });
        Schema::table('quotation_services', function (Blueprint $table) {
            $table->integer('factor')->nullable();
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
