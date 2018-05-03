<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateCandidatoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('candidato', function (Blueprint $table) {
            // $table->increments('id');
            $table->integer('id')->unsigned();
            $table->string('numero',5);
            $table->integer('id_organo')->unsigned();
            $table->string('foto');
            $table->timestamps();
            $table->primary('id');
            $table->foreign('id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('id_organo')->references('id')->on('organo')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('candidato');
    }
}
