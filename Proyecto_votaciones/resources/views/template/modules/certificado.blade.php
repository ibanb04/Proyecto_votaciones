<center>
	<h4>CERTIFICADO ELECTORAL</h4>
	<br>
</center>
<div class="card-panel grey lighten-2 z-depth-5">
	<div class="certificado">
		<center>
			<h5>UNIVERSIDAD DEL MAGDALENA</h5>
			<b>CERTIFICADO ELECTORAL ELECCIONES 2018</b>
		</center>
		<hr>
			<br>
		<div class="container">	
			<div class="row">
				<div class="col s12 m6"><h5>Codigo:</h5></div>
				<div class="col s12 m6 right-align"><h5>{{Auth::User()->codigo}}</h5></div>
			</div>
			<div class="row">
				<div class="col s12 m6"><h5>Nombre y Apellido:</h5></div>
				<div class="col s12 m6 right-align"><h5>{{Auth::User()->nombre1}} {{Auth::User()->apellido1}}</h5></div>
			</div>
			<div class="row">
				<div class="col s12 m6"><h5>Sede y Mesa:</h5></div>
				<div class="col s12 m6 right-align"><h5>{{Auth::User()->mesa->lugar->nombre}} - {{Auth::User()->mesa->nombre}}</h5></div>
			</div>
			<div class="row">
				<div class="col s12 m6"><h5>Ciudad Departamento:</h5></div>
				<div class="col s12 m6 right-align"><h5>Santa Marta - Magdalena</h5></div>
			</div>
		</div>
	</div>
</div>
<br>
<div class="row">
	<div class="center">
		<button class="btn waves-effect waves-light btn-large black"> <i class="fas fa-download"></i> DESCARGAR</button>
		<button class="btn waves-effect waves-blue btn-large blue">ENVIAR A MI NUBE <i class="fas fa-cloud-upload-alt"></i></button>
	</div>
</div>