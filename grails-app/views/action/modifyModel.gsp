<!DOCTYPE html>
<html>
  <head>
  <title>Create Product</title>
		<meta name="layout" content="main"/>
	
	
	
		
	</head>
	<body>
	 <div class="container">
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
              <li><g:link controller="main" action="index">Home </g:link></li>
              <li class=${currBrand.brandName.equals('Opel') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Opel"]">Opel</g:link></li>
              <li class=${currBrand.brandName.equals('Volkswagen') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Volkswagen"]">Volkswagen</g:link></li>
              <li class=${currBrand.brandName.equals('Fiat') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Fiat"]">Fiat</g:link></li>
              <li class=${currBrand.brandName.equals('Toyota') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Toyota"]">Toyota</g:link></li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li class=${currBrand.brandName.equals('Skoda') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Skoda"]">Skoda</g:link></li>
                  <li class=${currBrand.brandName.equals('Seat') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Seat"]">Seat</g:link></li>
                  <li class=${currBrand.brandName.equals('Renault') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Renault"]">Renault</g:link></li>
                  <li class=${currBrand.brandName.equals('Dacia') ? 'active' : ''}><g:link controller="action" action="brandCars" params="[brandName:"Dacia"]">Dacia</g:link></li>
                  
                </ul>
              </li>
            </ul>
          </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
      </nav>
        
      <p class="lead">
      
      
      

    <!-- Begin page content -->
    <div class="container">

      <div class="page-header">
        <h1>${currBrand.brandName}</h1>
      </div>

    <g:form action="confirmModify"  class="form-horizontal" role="form">
    
			<div class="form-group">
	      		
	      		<div class="form-group">
	      		<label class="col-sm-2 control-label" for="model.modelName">Model name: </label>
	      		<div class="col-sm-9">
	    		<g:textField name="model.modelName"  class="form-control" id="modelName" value="${model.modelName}"/>
	    		 <g:hasErrors bean="${model}" field="modelName">
	    		 	<g:eachError bean="${model}" field="modelName">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
	    		</div>
	    		</div>
	    		
	    		<div class="form-group">
	      		<label class="col-sm-2 control-label" for="model.type">Body type: </label>
	      		<div class="col-sm-4">
	    		<g:select name="model.type" class="form-control" from="${['Sedan', 'Hatchback', 'Kombi', 'Coupé', 'Limousine']}" id="type" value="${model.type}"/>
	    		 <g:hasErrors bean="${model}" field="type">
	    		 	<g:eachError bean="${model}" field="type">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
	    		</div>
	    		<label class="col-sm-1 control-label" for="model.fuelType">Fuel type: </label>
	      		<div class="col-sm-4">
	    		<g:select name="model.fuelType" class="form-control" from="${['Petrol', 'Diesel', 'Gas', 'Electric']}" id="fuelType" value="${model.fuelType}"/>
	    		 <g:hasErrors bean="${model}" field="fuelType">
	    		 	<g:eachError bean="${model}" field="fuelType">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
	    		</div>
	    		</div>
	    		<div class="form-group">
	      		<label class="col-sm-2 control-label" for="model.numberOfSeats">Number of seats: </label>
	      		<div class="col-sm-1">
				<g:textField name="model.numberOfSeats" value="${formatNumber(number: model.numberOfSeats) }" class="form-control"  id="numberOfSeats"  />
				<g:hasErrors bean="${product}" field="numberOfSeats">
	    		 	<g:eachError bean="${product}" field="numberOfSeats">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
				</div>
				
				<label class="col-sm-2 control-label" for="model.numberOfSeats">Engine capacity: </label>
	      		<div class="col-sm-2">
				<g:textField name="model.engineCapacity" value="${formatNumber(number: model.engineCapacity) }" class="form-control"  id="engineCapacity"  />
				<g:hasErrors bean="${product}" field="engineCapacity">
	    		 	<g:eachError bean="${product}" field="engineCapacity">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
				</div>
				
				<label class="col-sm-2 control-label" for="model.numberOfSeats">Engine performance: </label>
	      		<div class="col-sm-1">
				<g:textField name="model.enginePerformance" value="${formatNumber(number: model.enginePerformance) }" class="form-control"  id="enginePerformance"  />
				<g:hasErrors bean="${product}" field="enginePerformance">
	    		 	<g:eachError bean="${product}" field="enginePerformance">
	    		 	<p style="color: red;"><g:message error="${it}"/></p>
	    		 	</g:eachError>
	    		</g:hasErrors>
				</div>
				<label class="col-sm-1 control-label" style="text-align: left;" >hp</label>
				
			</div>
	      	<g:hiddenField name="model.id" id="model.id" value="${model.id}" />	
			<g:hiddenField name="model.brand" id="brand" value="${currBrand.id}" />

    	<g:submitButton name="submit" value="save" style="float: right;"/>
	</g:form>

    </div>


	
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
    <script>window.jQuery || document.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')</script>
    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>