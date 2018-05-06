@extends('template.base')

@section('title', 'usuario')
@section('title-nav', 'VOTANTE')

@section('body')
	<div class="container">
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
			  			@foreach($organo->candidatos as $candidato)
			  				<div class="card-panel">{{$candidato->id}}</div>
			  			@endforeach
			  		</div>
				@endforeach
			      
		    </div>
		</div>


	</div>
	<br><br>
@endsection

@section('extrajs')
	<script type="text/javascript">
		$(document).ready(function(){

			seleccionados = new Object();

			$('.card').click(function(){
				var este = $(this);
				var candidato_id = este.attr('id');
				var organo_id = este.attr('data-organo');

				seleccionados[organo_id] = candidato_id;
				console.log(seleccionados);
				// console.log(candidato_id,"- organo",organo_id);
			});
		});
		
	</script>
@endsection
