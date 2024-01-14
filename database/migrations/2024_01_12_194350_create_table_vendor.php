<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTableVendor extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('vendors', function (Blueprint $table) {
            $table->id();
            $table->string('vendor_code',25)->nullable();
            $table->string('name',255)->nullable();
            $table->string('phone',25)->nullable();
            $table->text('address')->nullable();
            $table->string('person',100)->nullable();
            $table->string('position',100)->nullable();
            $table->string('mobile',50)->nullable();
            $table->string('email',100)->nullable();
            $table->text('proposed')->nullable();
            $table->string('rekening',50)->nullable();
            $table->string('bank',90)->nullable();
            $table->string('account_name',100)->nullable();
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
        Schema::dropIfExists('vendors');
    }
}
