<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=0.5">

	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="resources/references/css/bootstrap.min.css">

	<style>
  	.carousel-inner > .item > img,
  	.carousel-inner > .item > a > img
	{
    	width: 70%;
      	margin: auto;
  	}
  	
  	.center
	{
	    margin: auto;
	    width: 60%;
	    border: 1px solid #73AD21;
	    padding: 10px;
	}
	
	.col-centered{
    float: none;
    margin: 0 auto;
}

	.rTable {   	display: table;   	width: 100%; } 
	.rTableRow {   	display: table-row; border-bottom: 1px solid #000000; } 
	.rTableHeading {   	display: table-header-group;   	background-color: #ddd; } 
	.rTableCell, .rTableHead {   	display: table-cell;   	padding: 3px 10px;   	border: 1px solid #999999; } 
	.rTableHeading {   	display: table-header-group;   	background-color: #ddd;   	font-weight: bold; } 
	.rTableFoot {   	display: table-footer-group;   	font-weight: bold;   	background-color: #ddd; } 
	.rTableBody {   	display: table-row-group; }
  </style>

	<script type="text/javascript" src="resources/references/js/data.js"></script>

</head>

<script type="text/javascript" src="resources/references/js/angular.min.js"></script>

<script type="text/javascript">

	var myApp = angular.module("myApp",[]);

	myApp.controller("myCtrl",function($scope){
		
		//$scope.data = data;
		$scope.data = ${dataValue};
		//$scope.searchKeyword = ${searchKey};
	});
	
	
</script>

<body ng-app='myApp'>

	<script type="text/javascript" src="resources/references/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resources/references/js/bootstrap.min.js"></script>

	<div style="
                    position: absolute;
                    top: 1%;
                    left: 0px;
                    right: 0px;
                    height: 70px;
                    background-color: rgb(120,200,228);
                    color: #FFFFFF;
                    text-align: left;
                    vertical-align: middle;
                    line-height: 60px;
                    border: 0px solid #FFC706;
                    box-shadow: 5px 25px 40px #555555;
                    font-style: italic;
                    font-weight: bold;
                    font-size: 20px;
                    font-family: Segoe UI, Tahoma, sans-serif;
                ">
                
				<div style="
                    position: absolute;
                    top: 10%;
                    left: 0px;
                    height: 70px;
                    color: #FFFFFF;
                    width: 100%;
                    text-align: left;
                    vertical-align: middle;
                    line-height: 60px;
                    border: 0px solid #FFC706;
                    box-shadow: 5px 25px 40px #555555;
                    font-style: italic;
                    font-weight: bold;
                    font-size: 20px;
                    font-family: Segoe UI, Tahoma, sans-serif;
                " >
                &nbsp;&nbsp;&nbsp;Music Hub
                
                <nav style="z-index: 4;" class="navbar navbar-inverse">
				  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    	<ul class="nav navbar-nav navbar-left">
	    	<li><a class="nav navbar-left" href="index">Home</a></li>
	        <li><a href="aboutus">About Us</a></li>
	        <li><a href="contactus">Contact Us</a></li>
	        <li><a href="product">Products</a></li>
	    </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login">Login</a></li>
        <li><a href="signup">Sign Up</a></li>
        
      </ul>
    </div>
  </div>
				</nav>
                
                
                
				</div>
				</div>

	<br>
	<br>

					<br><br><br><br><br><br><br>
					<form role="form">
					
					<script type="text/css">
					</script>
					
					</form>
					
					<div class="container">
					<div class="row">
					<div class="col-lg-6 col-centered">
					
					<input type="text" id="search" value="" placeholder="Enter Search Keyword..." class="form-control" ng-model="searchKeyword" ng-init="searchKeyword ='${searchKey}'" />
					
					</div>
					</div>
					</div>
					
					<br><br>
					
					<!--  -->
	                <div class="container">
					<div class="row">
					<div class="col-lg-9 col-centered">
					<!--  -->
					
					
					
					<div class="" >
				
								<div style=" width: 100%; font-style: italic; font-weight: bold; font-size: 1.2vw; font-family: Segoe UI, Tahoma, sans-serif;" ng-controller='myCtrl' class="table-responsive">
				
									<div class="rTableHeading">
									
										<div class="col-xs-2">Product Id</div>
										<div class="col-xs-2">Group Name</div>
										<div class="col-xs-2">Name</div>
										<div class="col-xs-1">Price</div>
										<div class="col-xs-1">Qty</div>
										<div class="col-xs-2">Description</div>
										<div class="col-xs-2">Image</div>
									
									</div>
				
								
									<div ng-repeat="x in data | filter: searchKeyword" class="rTableRow" >
									
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Product_Id }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Group_Name }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Name }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-1">{{ x.Price }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-1">{{ x.Qty }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2">{{ x.Description }}</div>
										<div style="padding-top: 2%;padding-bottom: 2%;" class="col-xs-2"><img ng-src="{{ x.Image }}" width="120" height="60" class="img-circle img-responsive"></img></div>
										
										<div style="width: 100%; height: 1px; background-color: #CCCCCC;"></div>
										
									</div>
					
								</div>
				
							
				
						</div>
				<!--  -->
	            </div>
				</div>
				</div>
				<!--  -->
				
				<br><br>
				<footer class="container-fluid text-center">
				  <p><b>&copy; Vasudev Vashisht </b></p>
				</footer>
				
</body>

