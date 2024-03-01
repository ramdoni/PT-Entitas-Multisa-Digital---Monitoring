<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableCreditNoteProjects extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('credit_note_purchase_orders', function (Blueprint $table) {
            $table->id();
            $table->integer('credit_note_id')->nullable();
            $table->integer('purchase_order_id')->nullable();
            $table->text('purchase_order_raw')->nullable();
            $table->text('credit_note_raw')->nullable();
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
        Schema::dropIfExists('credit_notes_projects');
    }
}
