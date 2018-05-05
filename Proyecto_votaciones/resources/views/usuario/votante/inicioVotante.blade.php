@extends('template.base')

@section('title', 'usuario')
@section('title-nav', 'VOTANTE')

@section('body')
	<div class="container">
		<div class="row">
		<div class="right">
				
		<h5> {{ Auth::user()->mesa->nombre }} </h5>
			</disv>
		</div>
		<h2>Tarjetón Electoral - {{ Auth::user()->mesa->lugar->nombre }} </h2>
		<div class="row">
			
		 <ul id="tabs-swipe-demo" class="tabs ">
		 	 @foreach($organos as $organo)
    <li class="tab col s3 "><a href="#test-swipe-{{$organo->id}}">{{$organo->nombre}}</a></li>  
        	 @endforeach
  </ul>
  @foreach($organos as $organo)
  <div id="test-swipe-{{$organo->id}}" class="col s12 #eeeeee grey lighten-3">
  	 @foreach($candidatos as $candidato)  
    	
    	@if($candidato->organo_id == $organo->id)

    <div class="col m6">
      <div class="card  hoverable pink ">
        <div class="card-content white-text">
         
          <span class="card-title">{{$candidato->nombre1}}</span>
          <span>Candidato No.{{$candidato->numero}}</span>
          <p></p>
        </div>
        <div class="card-action">
          <a href="#">This is a link</a>
          <a href="#">This is a link</a>
        </div>
      </div>
    </div>
     @endif
	
   @endforeach
  </div>
  @endforeach
  
	</div>
		</div>
@endsection