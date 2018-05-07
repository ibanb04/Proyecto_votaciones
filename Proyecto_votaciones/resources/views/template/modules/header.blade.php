<header>
	 <div class="row">
     <!-- Dropdown Structure -->
			<ul id="dropdown1" class="dropdown-content">

			  <li><a class="blue-text" href="#!"><i class="fas fa-user"></i> {{ Auth::user()->codigo }}</a>

			  </li>

			  <li><a class="blue-text" href="#!"><i class="fas fa-cog"></i> config</a></li>
			  <li class="divider"></li>
			  <li>
			  	<a class="blue-text" href="{{ route('logout') }}"
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
			    <a href="#" class="brand-logo">&nbsp;&nbsp; <i class="fas fa-universal-access"></i>&nbsp;@yield('title-nav', '') - ELECCIONES</a>
			    <ul class="right hide-on-med-and-down">
			    	
			     
			      <!-- Dropdown Trigger -->
			      <li><a class="dropdown-button " href="#!" data-activates="dropdown1"><i class="fas fa-cog"></i>OPCIONES&nbsp;<i class="fas fa-chevron-down"></i></a></li>
			    </ul>
			  </div>
			</nav>

  </div>

</header>