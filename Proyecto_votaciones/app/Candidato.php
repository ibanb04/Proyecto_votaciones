<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Candidato extends Model
{
  protected $table = 'candidato';
  protected $primaryKey = 'id';
  protected $fillable = [
      'id','numero','id_organo','foto'
  ];
  public function votos(){
    return $this->hasMany('App/Voto');
  }
  public function organo(){
    return $this->belongsTo('App/Organo');
  }
  public function user(){
    return $this->belongsTo('App/User');
  }

}