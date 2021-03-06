<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;
    //protected $table = 'users';
    protected $primaryKey = 'codigo';

    protected $fillable = [
        'codigo','nombre1','nombre2','apellido1','apellido2', 'password', 'email','rol_id','programa_id','tipo','estado','mesa_id'
    ];

    protected $hidden = [
        'remember_token'
    ];

    public function rol(){
      return $this->belongsTo('App\Rol');
    }

    public function programa(){
      return $this->belongsTo('App\Programa');
    }
    public function mesa(){
      return $this->belongsTo('App\Mesa');
    }
    public function candidato(){
      return $this->hasOne('App\Candidato');
    }
}
