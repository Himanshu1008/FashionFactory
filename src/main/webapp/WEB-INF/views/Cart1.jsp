<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<title>FashionFactory</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>  

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
				<li ><a href="${pageContext.request.contextPath}/signup"><span class="glyphicon glyphicon-user"></span>SignUp</a></li>
				<li data-toggle="modal" data-target="#myModal1"><a href="#">Cart</a></li>
				<li class="active"><a href="#"><span class="glyphicon glyphicon-log-in">LogOut</a></li>
				
				</ul>

	</div>

</nav>
<div class="modal fade" id="MyModal1">
         <div class="modal-dialog">
             <div class="modal-content">
                 <div class="modal-header">
                 <button type="button" class="close" data-dismiss="modal">&times;</button>
                 <h4 class="modal-title">Cart Details</h4><br><br>
                 </div>
                       <div class="modal-body">
                       <form name="my_form1" method="post" action="Home">
                       Name:<input type="text" name="name" class="form-control"><br><br><hr>
                       Quantity:      <input type="text" name="quantity" class="form-control"><br><br><hr>
                       Address:<input type="text" name="address" class="form-control"><br><br><hr>
                       BilingAddress:   <input type="text" name="bilingaddress" class="form-control"><br><br><hr>
                        <button type="submit" class="btn btn-warning" class="for-control">ADD</button>
                       </form>
                       </div>
             </div>
         </div>
     </div>
</body>
</html>