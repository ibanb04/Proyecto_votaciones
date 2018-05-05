<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use App\Organo;
use App\Candidato;
use DB;

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
        
        $organos = Organo::all();
        $candidatos = DB::table('organo')->join('candidato', 'organo.id', '=', 'candidato.organo_id')->join('users', 'candidato.id', '=', 'users.codigo')->select('users.nombre1','users.nombre2','users.apellido1','users.apellido2', 'candidato.numero','candidato.organo_id', 'organo.nombre')->get();
        //dd($candidatos);
    	return view('usuario.votante.inicioVotante')->with('organos', $organos)->with('candidatos', $candidatos);
    }
}
