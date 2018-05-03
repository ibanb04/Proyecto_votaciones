<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateVotoTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('voto', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('id_mesa')->unsigned();
            $table->integer('id_candidato')->unsigned();
            $table->integer('cantidad');
            $table->timestamps();
            $table->foreign('id_mesa')->references('id')->on('mesa');
            $table->foreign('id_candidato')->references('id')->on('candidato');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('voto');
    }
}
