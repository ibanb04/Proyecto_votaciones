<header>
	 <div class="row">
     <!-- Dropdown Structure -->
			<ul id="dropdown1" class="dropdown-content">

			  <li><a href="#!" ><i class="fas fa-user"></i>{{ Auth::user()->codigo }}</li></a></li>
			  <li><a href="#!"><i class="fas fa-cog"></i> config</a></li>
			  <li class="divider"></li>
			  <li>
			  	<a href="{{ route('logout') }}"
                    onclick="event.preventDefault();
                             document.getElementById('logout-form').submit();">
                    salir <i class="fas fa-sign-out-alt"></i>
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
			  </li>
			</ul>
			<nav>
			  <div class="nav-wrapper blue darken-2">	
			    <a href="#" class="brand-logo">&nbsp;&nbsp; <i class="fas fa-universal-access"></i>&nbsp;ADMINISTRADOR</a>
			    <ul class="right hide-on-med-and-down">
			    	<li> </li>
			    	
		                 <li></li>
			      <li><a href="index.php?action=admin"><i class="fas fa-users"></i>&nbsp;USUARIOS</a></li>
			      <li><a href="index.php?action=admin-programas"><i class="fas fa-tasks"></i> PROGRAMAS</a></li>
			      		      
			      <!-- Dropdown Trigger -->
			      <li><a class="dropdown-button " href="#!" data-activates="dropdown1"><i class="fas fa-cog"></i> OPCIONES <i class="fas fa-chevron-down"></i></a></li>
			    </ul>
			  </div>
			</nav>

  </div>

</header>