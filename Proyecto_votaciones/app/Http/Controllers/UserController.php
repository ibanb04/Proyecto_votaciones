<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\User;
use App\Organo;
use App\Candidato;
use App\Voto;
use DB;
use Redirect;

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
     //    $candidatos = DB::table('organo')->join('candidato', 'organo.id', '=', 'candidato.organo_id')->join('users', 'candidato.id', '=', 'users.codigo')->select('candidato.id','users.nombre1','users.nombre2','users.apellido1','users.apellido2', 'candidato.numero','candidato.organo_id', 'organo.nombre')->get();
     //    //dd($candidatos);
    	// return view('usuario.votante.inicioVotante')->with('organos', $organos)->with('candidatos', $candidatos);
        return view('usuario.votante.inicioVotante')->with('organos', $organos);
    }

    public function votar(Request $request){
        // dd($request->all());
        foreach ($request->all() as $key => $candidato_id){
            if ($key != "_token" && $key != "mesa_id"){
                echo $candidato_id.'<br>';
                $voto = new Voto();
                $voto->mesa_id = $request->mesa_id;
                $voto->candidato_id = $candidato_id;
                $voto->save();
            }
        }

        $usuario = User::find(Auth::User()->codigo);
        $usuario->estado = '4';
        $usuario->save();
        // dd($usuario);

        return Redirect()->route('votante');
        
    }

    public function autorizar($codigo){
        $usuario = User::find($codigo);
        $usuario->estado = '2';
        $usuario->save();

        return Redirect::to('/admin');
     }

     public function desautorizar($codigo){
        $usuario = User::find($codigo);
        $usuario->estado = '1';
        $usuario->save();

        return Redirect::to('/admin');
     }

}
