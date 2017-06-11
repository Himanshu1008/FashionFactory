<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<title>FashionFactory</title>
  <meta charset="utf-8">
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<li ><a href="#">Cart</a></li>
				<li class="active"><a href="${pageContext.request.contextPath}/Home"><span class="glyphicon glyphicon-log-in">LogOut</a></li>
				
				</ul>

	</div>

</nav>

          <table border="0" width="70%" cellpadding="2">  
<tr><th class="col-lg-2">Id</th><th class="col-lg-2">Name</th><th class="col-lg-2">Price</th class="col-lg-2"><th>Description</th><th class="col-lg-2">Category</th><th class="col-lg-2">View</th></tr>  
   <c:forEach var="pro" items="${list}">   
   <tr>  
   <td>${pro.productId}</td>  
   <td>${pro.productName}</td>  
   <td>${pro.productPrice}</td>  
   <td>${pro.productDescription}</td>
   <td>${pro.productCategory}</td>
   <td><a href="${pageContext.request.contextPath}/view/${pro.productId}">View</a></td>   
   </tr>  
   </c:forEach>  
   </table>       
      
</body>
</html>