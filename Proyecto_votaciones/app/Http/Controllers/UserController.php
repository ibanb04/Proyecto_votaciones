<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;

class UserController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function redireccionar()
    {
    	if (Auth::User()->rol_id == 'A') {

   			return redirect()->route('admin');

    	}elseif (Auth::User()->rol_id == 'V') {
            
    		return redirect()->route('votante');
    	}
    	echo "No se encuentra redireccion para este usuario";
    }


    public function admin_index()
    {
    	$usuarios = User::where('rol_id','<>','A')->get();


    	//dd($usuarios[0]->id_mesa);
    	return view('usuario.admin.inicioAdmin')->with('usuarios', $usuarios);
    }


    public function votante_index()
    {
    
    	return view('usuario.votante.inicioVotante');
    }
}
