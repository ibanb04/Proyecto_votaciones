@extends('template.base')

@section('title', 'usuario')
@section('title-nav', 'TARGETON')

@section('body')
	<div class="container">
		<h1>Targetón Electoral</h1>
		<div class="row">
			
		 <ul id="tabs-swipe-demo" class="tabs">
    <li class="tab col s3"><a class="active" href="#test-swipe-1">organo 1</a></li>
    <li class="tab col s3"><a  href="#test-swipe-2">organo 2</a></li>
    <li class="tab col s3"><a href="#test-swipe-3">rgano 3</a></li>
  </ul>
  <div id="test-swipe-1" class="col s12 blue">lorem</div>
  <div id="test-swipe-2" class="col s12 red">Test 2</div>
  <div id="test-swipe-3" class="col s12 green">Test 3</div>
	</div>
		</div>
@endsection