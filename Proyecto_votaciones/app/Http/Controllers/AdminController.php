<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminController extends Controller
{
       public function __construct()
    {
        $this->middleware('auth');
    }

       public function autorizar_usuario($codigo){
          $usuario = User::where('codigo','=',$codigo)->first();
          $usuario->estado = '2';
          $usuario->save();
  
          Session::flash('message', 'El usuario '.$usuario->codigo.' ahora se encuentra autorizado para votar');
          return Redirect::to('/admin');
       }
  
       public function desautorizar_usuario($codigo){
          $usuario = User::where('codigo','=',$codigo)->first();
          $usuario->estado = '1';
          $usuario->save();
  
          Session::flash('message', 'El usuario '.$usuario->codigo.' se ha desautorizado para votar');
          return Redirect::to('/admin');
       }




}
