<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>@yield('title', '') - Votaciones</title>

	<link rel="stylesheet" href="{{ asset('css/materialize.css') }}">
	<link rel="stylesheet" href="{{ asset('css/estilos.css') }}">
	<link rel="stylesheet" href="{{ asset('css/material-icons.css') }}">
	<script defer src="{{ asset('js/fontawesome-all.js') }}"></script>

</head>
<body>
	
	@include('template.modules.header')
	
	<main>
		@yield('body', 'No se encontro la pagina')
	</main>

	@include('template.modules.footer')

	<script type="text/javascript" src="{{ asset('js/jquery-3.3.1.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('js/materialize.js') }}"></script>

	<script type="text/javascript">
		
	</script>


</body>

</html>