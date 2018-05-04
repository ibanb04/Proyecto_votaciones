<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Login</title>

	<link rel="stylesheet" href="{{ asset('css/materialize.css') }}">
	<link rel="stylesheet" href="{{ asset('css/estilos.css') }}">
	<link rel="stylesheet" href="{{ asset('css/material-icons.css') }}">
	<script defer src="{{ asset('js/fontawesome-all.js') }}"></script>

</head>
<body>

<section class="valign-wrapper">
<div class="container">
	<div class="row">
		<div class="col s12 offset-m1 m10 offset-l3 l6">
			<div class="card hoverable" style="background-color: rgba(255,255,255,.9);" id="card-login">
		<form action="{{ route('login') }}" method="POST" role="form">
			{{ csrf_field() }}
			<div class="card-content grey lighten-4">
				<div class="center-align"><b><i class="fas fa-universal-access"></i> LOGIN</b></div>
				
				<div class="input-field">
					<input type="number" name="codigo" id="codigo" required="required">
					<label for="codigo">Codigo:</label>
				</div>
				<div class="input-field">
					<input type="password" name="password" id="password" required="required">
					<label for="password">Contraseña:</label>
				</div>	
			</div>
			<div class="card-action center-align ">
				<button type="submit" name='submit' value="Submit" class="btn btn-large waves-effect waves-light blue hoverable pulse" id="btnLogin">Ingresar</button>
			</div>
		</form>
	</div>
					@if ($errors->has('email'))
						<div class="card-panel red white-text">
	                   		<strong>{{ $errors->first('email') }}</strong>
						</div>					
	                @endif
</div>
</section>

	@include('template.modules.footer')

	<div id="myModal" class="modal">
		<div class="modal-content">
			<h4 id="titulo-modal"></h4>
			<p class="flow-text" id="mensaje-modal"></p>
		</div>
		<div class="modal-footer">
			<a href="#!" class="modal-action modal-close waves-effect waves-purple btn-flat">Cerrar</a>
		</div>
	</div>

	<script type="text/javascript" src="{{ asset('js/jquery-3.3.1.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('js/materialize.js') }}"></script>

	<script type="text/javascript">
		$(function(){
			$('#codigo').val("2015114010");	
			$('#password').val("1234");	
			
		});
	</script>
	


</body>

</html>