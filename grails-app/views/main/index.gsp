<!DOCTYPE html>
<html>
  <head>
		<meta name="layout" content="main"/>
	</head>
	<body>
       <div class="container">

      <!-- Static navbar -->
      <nav class="navbar navbar-default">
        <div class="container-fluid">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
                       <g:link class="navbar-brand" controller="main" action="index">Cars information</g:link>

          </div>
          <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
              <li class="active"><g:link controller="main" action="index">Home </g:link></li>
              <li><g:link controller="action" action="brandCars" params="[brandName:"Opel"]">Opel</g:link></li>
              <li><g:link controller="action" action="brandCars" params="[brandName:"Volkswagen"]">Volkswagen</g:link></li>
              <li><g:link controller="action" action="brandCars" params="[brandName:"Fiat"]">Fiat</g:link></li>
              <li><g:link controller="action" action="brandCars" params="[brandName:"Toyota"]">Toyota</g:link></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><g:link controller="action" action="brandCars" params="[brandName:"Skoda"]">Skoda</g:link></li>
                  <li><g:link controller="action" action="brandCars" params="[brandName:"Seat"]">Seat</g:link></li>
                  <li><g:link controller="action" action="brandCars" params="[brandName:"Renault"]">Renault</g:link></li>
                  <li><g:link controller="action" action="brandCars" params="[brandName:"Dacia"]">Dacia</g:link></li>
                  
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>

    <div class="page-header">
        <h1>Welcome</h1>
      </div>
      <p class="lead">This site shows little information about cars. Site allows to edit and add information.</p> 
      </div>

  </body>
</html>