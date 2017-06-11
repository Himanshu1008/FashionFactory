<!DOCTYPE html>
<html lang="en">
<head>
  <title>FashionFactory</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
</head>
<style>

body {
    font: 400 15px/1.8 Lato, sans-serif;
    color: #777;
}

.navbar {
    font-family: Montserrat, sans-serif;
}
</style>
<body style="background-color:#edeeef">
<nav class="navbar navbar-default" style="margin-bottom: 0px" style="background-color:#EFEFEF" >

	<div class="container-fluid">
		<div class="navbar-header" ><a class="navbar-brand" href="#">Fashionfactory</a></div>
		
		<ul class="nav navbar-nav navbar-left">
		<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Home<span class="caret"></span></a>
				<ul class="dropdown-menu">
				<li><a href="#">Setting</a></li>
				<li><a href="#">Account</a></li>
				<li><a href="#">Information</a></li>
				</ul>
				<li><a href="#">ContactUs</a></li>
				<li><a href="${pageContext.request.contextPath}/product">Product</a></li>
				<li><a href="${pageContext.request.contextPath}/category" >Category</a></li>
				</li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
				<li><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
				<li class="active"><a href="${pageContext.request.contextPath}/Login"><span class="glyphicon glyphicon-log-in">LogIn</a></li>
				
				

				</ul>


	</div>

</nav>
 <div class="modal fade" id="MyModal1">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <h4 class="modal-title">Product Details</h4><br><br>
                 </div>
                       <div class="modal-body">
                       <form name="my_form1" method="post" action="productview">
                       ProductName:<input type="text" name="productname" class="form-control"><br><br><hr>
                       Price:      <input type="text" name="price" class="form-control"><br><br><hr>
                       Description:<input type="text" name="desc" class="form-control"><br><br><hr>
                       Category:   <input type="text" name="category" class="form-control"><br><br><hr>
                        <button type="submit" class="btn btn-warning" class="for-control">ADD</button>
                       </form>
                       </div>
             </div>
         </div>
     </div>
     <div class="modal fade" id="MyModal2">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <h4 class="modal-title">Category Details</h4><br><br>
                 </div>
                       <div class="modal-body">
                       <form name="my_form1" method="post" action="categoryview">
                       CategoryName:<input type="text" name="categoryname" class="form-control"><br><br><hr>
                        <button type="submit" class="btn btn-warning" class="for-control">ADD</button>
                       </form>
                       </div>
             </div>
         </div>
     </div>
<div class="container">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="Resources\images\ff.jpg" alt="gmail"  width="1200" height="700">
        <div class="carousel-caption">
          
          
        </div>
      </div>

      <div class="item">
        <img src="Resources\images\ff1.jpg" alt="gmail1"  width="1200" height="700">
        <div class="carousel-caption">
          
        </div>
      </div>
    
      <div class="item">
        <img src="Resources\images\ff2.jpg" alt="gmail2"  width="1200" height="700">
        <div class="carousel-caption">

        </div>
      </div>

      <div class="item">
        <img src="Resources\images\ff3.jpg" alt="gmail3"  width="1200" height="700">
        <div class="carousel-caption">
          
        </div>
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
</div><br>
<br>


 <div class="row">
    <div class="col-sm-4">
      <img src="Resources\images\ff4.jpg" class="img-circle" width="350" height="400" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <img src="Resources\images\ff6.jpg" class="img-circle" width="350" height="400" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <img src="Resources\images\ff5.jpg" class="img-circle" width="350" height="400" alt="Image">
    </div>
  </div>
</div>

<footer class="text-center">
  <a class="up-arrow" href="#myPage" data-toggle="tooltip" title="TO TOP">
    <span class="glyphicon glyphicon-chevron-up"></span>
  </a><br><br>
  <p>WWW.FF.COM <a href="#" data-toggle="tooltip" ></a></p> 
</footer>


</body>
</html>