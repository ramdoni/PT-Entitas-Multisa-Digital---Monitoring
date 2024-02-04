<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldQuotationDetailToPurchaseOrders extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('purchase_orders', function (Blueprint $table) {
            $table->text('quotation_detail')->nullable();
        });

        Schema::table('invoices', function (Blueprint $table) {
            $table->text('purchase_order_detail')->nullable();
            $table->text('quotation_detail')->nullable();
        });
        
        Schema::table('income', function (Blueprint $table) {
            $table->text('purchase_order_detail')->nullable();
            $table->text('quotation_detail')->nullable();
            $table->text('invoice_detail')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('purchase_orders', function (Blueprint $table) {
            //
        });
    }
}
