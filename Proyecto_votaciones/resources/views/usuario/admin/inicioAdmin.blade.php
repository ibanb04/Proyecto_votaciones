@extends('template.base')

@section('title', 'Admin')

@section('body')
	<div class="row">
	    <h1 align="center">USUARIOS</h1>
			<div class="container"> 

				<a href="index.php?action=formUsuario" class="btn waves-effect blue btn waves-light">NUEVO</a>
			</div>
	    <div class="col m1"></div>
	    <div class=" card col m9">
	        <table class="  striped responsive-table highlight">
			<br>
	            <thead>
	                <tr>
	                    <th>Codigo</th>
	                    <th>Nombre</th>
	                    <th>2do Nombre</th>
	                    <th>Apellido</th>
	                    <th>2do Apellido</th>
	                    <th>Rol</th>
	                    <th>Programa</th>
	                    <th>Mesa</th>
	                </tr>
	            </thead>
	            <tbody>
	                @foreach($usuarios as $usuario)
	                	<tr>
	                		<td>{{ $usuario->codigo }}</td>
	                		<td>{{ $usuario->nombre1 }}</td>
	                		<td>{{ $usuario->nombre2 }}</td>
	                		<td>{{ $usuario->apellido1 }}</td>
	                		<td>{{ $usuario->apellido2 }}</td>
	                		<td>{{ $usuario->rol->nombre }}</td>
	                		<td>{{ $usuario->programa->nombre }}</td>
	                	</tr>
	                @endforeach
	            </tbody>
	        </table>
	    </div>
	     <div class="col m2"></div>
	</div>
	<div class="container">
		

	<div id="modal-confirmarEliminacion" class="modal">
	     <div class="modal-content center-align">
	        <h4> ¿Estás seguro que quieres eliminar a este usuario? </h4>
	     </div>
	     <div class="modal-footer">
	         <a href="#!" class="modal-action modal-close waves-effect waves-red btn-flat">Cancelar</a>
	         <a href="#!" class="modal-action modal-close waves-effect waves-light btn #ef5350 red lighten-1" id="btnEliminar">Aceptar</a>
	   </div>
	  </div>



	</div>

@endsection