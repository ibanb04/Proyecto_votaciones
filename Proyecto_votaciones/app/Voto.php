<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Voto extends Model
{
  protected $table = 'voto';
  protected $primaryKey = 'id';
  protected $fillable = [
      'id','id_mesa','id_candidato','cantidad'
  ];

  public function mesa(){
    return $this->belongsTo('App/Mesa');
  }
  public function candidato(){
    return $this->belongsTo('App/Candidato');
  }
}
