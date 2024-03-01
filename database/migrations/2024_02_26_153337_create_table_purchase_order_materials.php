<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTablePurchaseOrderMaterials extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('purchase_order_materials', function (Blueprint $table) {
            $table->id();
            $table->integer('purchase_order_id')->nullable();
            $table->text('material_row')->nullable();
            $table->integer('material_id')->nullable();
            $table->smallInteger('qty')->nullable();
            $table->integer('price')->nullable();
            $table->bigInteger('total')->nullable();
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
        Schema::dropIfExists('purchase_order_materials');
    }
}
