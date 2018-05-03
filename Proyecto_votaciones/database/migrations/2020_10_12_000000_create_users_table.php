<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('codigo',12)->unique();
            $table->string('nombre1',30);
            $table->string('nombre2',30);
            $table->string('apellido1',30);
            $table->string('apellido2',30);
            $table->string('email',50)->unique();
            $table->string('password',30);
            $table->integer('id_rol')->unsigned();
            $table->integer('id_programa')->unsigned();
            $table->integer('id_mesa')->unsigned();
            $table->integer('estado')->default(0);
            $table->rememberToken();
            $table->timestamps();

            // $table->primary('codigo');
            $table->foreign('id_rol')->references('id')->on('rol')->onDelete('cascade');
            $table->foreign('id_programa')->references('id')->on('programa')->onDelete('cascade');
            $table->foreign('id_mesa')->references('id')->on('mesa');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
