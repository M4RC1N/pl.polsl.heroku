<!DOCTYPE html>
<html>
  <head>
		<meta name="layout" content="main"/>
		<title>Brand ${currBrand.brandName} </title>
	
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
	<div class="container">
    	<g:message code="${flash.message}" args="${flash.args}"
           default="${flash.default}"/>
           
      <div class="page-header">
        <h1>${currBrand.brandName}</h1>
      </div>
      <p class="lead"> <g:if test="${models.size()==0}">
      	<g:message message="No models to display"/>
      </g:if>
       <g:if test="${models.size()>0}">
      	
      
      <div class="table-responsive">
      <table class="table table-striped">
              <thead>
                <tr>
                <tr>
                  <th>#</th>
                  <th>Model name</th>
                  <th>Body type</th>
                  <th>Fuel type</th>
                  <th>Seats</th>
                  <th>Engine Capacity</th>
                  <th>Engine performance</th>
                  <th></th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
      <g:each in="${models}" var="model" status="i">
            <tr>
            <td>${i+1+j}</td>
            <td>${model.modelName}</td>
            <td>${model.type}</td>
            <td>${model.fuelType}</td>
            <td>${formatNumber(number: model.numberOfSeats)}</td>
            <td> ${formatNumber(number: model.engineCapacity) }</td>
            <td> ${formatNumber(number:  model.enginePerformance) } hp</td>
            <td><g:link controller="action" action="modifyModel" params="[modelId:model.id]"><button type="button" class="btn btn-info">Edit</button></g:link></td>
            <td><g:link controller="action" action="removeModel" params="[modelId:model.id]"><button type="button" class="btn btn-danger">Remove</button></g:link></td>
            </tr>
            <br/>
        </g:each></p>
         
        </tbody>
        </table>
    
      </div>
      
	<div class="pagination">
            <g:paginate total="${numberOfModels}" params="${[brandName:currBrand.brandName, j:j+10]}"/>
        </div>
        </g:if>
      
      
	<g:link controller="action" action="addModel" params='[brandId:currBrand.id]'>
    <input type="button" value="Add new" class="button" style="float: right;">
    </g:link>
    </div>
    </div> <!-- /container -->
  </body>
</html>