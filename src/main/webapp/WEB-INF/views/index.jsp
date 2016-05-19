<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
  </style>

</head>

<body>

	<c:set var="searchKey" scope="session" value="lallu"/>

	<script type="text/javascript" src="resources/references/js/jquery-1.11.1.min.js"></script>
	<script type="text/javascript" src="resources/references/js/bootstrap.min.js"></script>
	
	<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>      
    </ol>

    <!-- Wrapper for slides -->
    <div style="height: 270px;" class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/images/image1.jpg" alt="image1" width="360px" height="245px">
      </div>

      <div class="item">
        <img src="resources/images/image2.jpg" alt="image2" width="360px" height="245px">
      </div>
    
      <div class="item">
        <img src="resources/images/image3.jpg" alt="image3" width="360px" height="245px">
      </div>
      
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
  
  <!--  -->
  
  
  <div style="
                    color: #000000;
                    text-align: center;
                    vertical-align: middle;
                    line-height: 10px;
                    border: 0px solid #FFC706;
                    box-shadow: 5px 25px 40px #555555;
                    font-style: italic;
                    font-weight: bold;
                    font-size: 14px;
                    font-family: Segoe UI, Tahoma, sans-serif;
                    
      				
                " class="container-fluid carousel slide" >
                <div class="row">
                <br>
	                <div class="col-md-4">
		                <a href="product" ><div class="img-circle img-responsive nopadding col-centered" style="background-image: url(resources/images/guitar.jpg);width: 280px ; height: 220px;" > <a align="center" href="product?searchKey=Guitar" style="line-height: 340px; font-size: 140%;" > Guitars </a> </div></a>
		                <br><br>
		                <p style="font-weight: none; font-size: 12px; font-style: none; line-height: 20px;">The guitar is an ancient and noble instrument, whose history can be traced back over 4000 years.The name "guitar" comes from the ancient Sanskrit word for "string" - "tar".</p>
	                </div>
	                
	                <div class="col-md-4">
		                <a href="product" ><div class="img-circle img-responsive nopadding col-centered" style="background-image: url(resources/images/piano.jpg);width: 280px ; height: 220px;" > <a align="center" href="product?searchKey=Piano" style="line-height: 340px; font-size: 140%;" > Pianos </a> </div></a>
		                <br><br>
		                <p style="font-weight: none; font-size: 12px; font-style: none; line-height: 20px;">They come in all shapes and sizes, from a small spinet to a huge 9-foot concert grand, upright, console, grand, electric, digital reproducing.</p>
	                </div>
	                
	                <div class="col-md-4">
		                <a href="product" ><div class="img-circle img-responsive nopadding col-centered" style="background-image: url(resources/images/accessories.jpg); background-size: 280px 220px; width: 280px ; height: 220px;" > <a align="center" href="product?searchKey=Accessories" style="line-height: 340px; font-size: 140%;" > Accessories </a> </div></a>
		                <br><br>
		                <p style="font-weight: none; font-size: 12px; font-style: none; line-height: 20px;">A variety of add-ons, which would bring a spring in your tunes.</p>
	                </div>
                
                </div>
                
                
                <br><br>
                
	                <footer class="container-fluid text-center">
					  <p><b>&copy; Vasudev Vashisht</b></p>
					</footer>
					
				</div>
  
  <!--  -->
  
</div>

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

	
	
				
				
	
				
				
</body>

