<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableTracking extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quotations', function (Blueprint $table) {
            $table->id();
            $table->string('project_type',50)->nullable();
            $table->string('responsibility',25)->nullable();
            $table->string('project_code',50)->nullable();
            $table->string('project_name',200)->nullable();
            $table->string('quotation_number',100)->nullable();
            $table->date('quotation_date')->nullable();
            $table->integer('submitted_id')->nullable();
            $table->bigInteger('amount')->nullable();
            $table->string('discount',12)->nullable();
            $table->string('ppn',12)->nullable();
            $table->string('pph',12)->nullable();
            $table->bigInteger('net_amount')->nullable();
            $table->integer('aging')->nullable();
            $table->boolean('status')->default(0)->nullable();
            $table->integer('remarks')->nullable();
            $table->timestamps();
        });

        Schema::create('purchase_orders', function (Blueprint $table) {
            $table->id();
            $table->integer('quotation_id')->nullable();
            $table->string('po_number',50)->nullable();
            $table->date('po_date')->nullable();
            $table->bigInteger('amount')->nullable();
            $table->boolean('status')->default(0)->nullable();
            $table->timestamps();
        });

        Schema::create('invoices', function (Blueprint $table) {
            $table->id();
            $table->integer('purchase_order_id')->nullable();
            $table->string('invoice_number',50)->nullable();
            $table->date('invoice_date')->nullable();
            $table->date('invoice_sent')->nullable();
            $table->date('invoice_receive')->nullable();
            $table->date('due_date')->nullable();
            $table->bigInteger('amount')->nullable();
            $table->integer('discount')->nullable();
            $table->integer('tax')->nullable();
            $table->bigInteger('nett_amount')->nullable();
            $table->bigInteger('payment_received')->nullable();
            $table->bigInteger('outstanding_balance')->nullable();
            $table->date('payment_date')->nullable();
            $table->boolean('status')->default(0)->nullable();
            $table->smallInteger('top_day')->nullable();
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
        Schema::dropIfExists('tracking');
    }
}
