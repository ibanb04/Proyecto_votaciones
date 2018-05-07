@extends('template.base')

@section('title', 'usuario')
@section('title-nav', 'VOTANTE')

@section('body')
	<div class="container">
		@if(Auth::user()->estado == '1')
			<div class="center">
					<br><br>
					<i class="fas fa-frown fa-10x"></i>
					<h4>Usted no está autorizado para votar</h4>
				</div>
		@elseif (Auth::user()->estado == '2' || Auth::user()->estado == '3')
		 <div class="card z-depth-4">
		    <div class="card-content blue white-text center-align">
				<h4>Tarjetón Electoral - {{ Auth::user()->mesa->lugar->nombre }} - {{ Auth::user()->mesa->nombre }}</h4>
		    </div>
		    <div class="card-tabs">
		      	<ul class="tabs tabs-fixed-width blue">
					@foreach($organos as $organo)
				    	<li class="tab col s3"><a href="#organo-{{$organo->id}}">{{$organo->nombre}}</a></li>
					@endforeach
		      	</ul>
		    </div>
		    <div class="card-content blue-grey lighten-5">
			  	@foreach($organos as $organo)
			  		<div id="organo-{{$organo->id}}" class="col s12">
			  			<div class="row">
			  			@foreach($organo->candidatos as $candidato)
			  				<div class="col s12 m4">
			  					<div class="card hoverable waves-effect waves-blue z-depth-3 card-candidato" id="{{$candidato->id}}" data-organo="{{$candidato->organo_id}}">
			  						<div class="card-image">
			  							<img src="{{ asset('imagenes/candidatos/'.$candidato->foto) }}" alt="">	
			  						</div>
			  						<div class="card-content center-align">
			  							<big>
			  								{{$candidato->user->nombre1}} {{$candidato->user->apellido1}}<br>
			  								<b>{{$candidato->numero}}</b>
			  							</big>
			  						</div>
								
			  					</div>
			  				</div>
			  			@endforeach
			  			</div>
			  		</div>
				@endforeach
			      
		    </div>
		</div>
		<br>
		<div class="row">
			<div class="right">
				<button class="btn btn-large waves-effect waves-light blue" id="btnVotar">VOTAR</button>
			</div>
		</div>

		@elseif (Auth::user()->estado == '4')
			@include('template.modules.certificado')
		@endif

	</div>
	<br>

	<form action="{{ route('votar') }}" method="POST" id="candidatosSeleccionados" class="hide">
		{{ csrf_field() }}
		<input type="number" name="mesa_id" value="{{Auth::User()->mesa_id}}">

	</form>

@endsection

@section('extrajs')
	<script type="text/javascript">
		$(document).ready(function(){

			seleccionados = new Object();

			$('.card-candidato').click(function(){
				var este = $(this);
				var candidato_id = este.attr('id');
				var organo_id = este.attr('data-organo');

				seleccionados[organo_id] = candidato_id;
				console.log(seleccionados);
				// console.log(candidato_id,"- organo",organo_id);
			});

			$('#btnVotar').click(function(){
				var nSeleccionados = Object.keys(seleccionados).length;
				if (nSeleccionados == {{count($organos)}}){

					var formulario = $('#candidatosSeleccionados');
					for (var i in seleccionados){
						var input = $('<input/>', {
							'type': 'number',
							'name': 'candidato_'+parseInt(i),
							'value': seleccionados[i]
						});
						console.log(input);
						formulario.append(input)
					}
					

					formulario.submit();
				}else{
					alert('Debe votar en cada uno de los organos');
					
				}
			});
		});
		
	</script>
@endsection
