<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

  <meta charset="utf-8">
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<head>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Detail</title>
</head>
<body>
<div class="container-fluid">
	<div class="col-md-4 col-md-offset-4">
	<h3><b>PRODUCT DETAIL</b></h3>
	</div>
<div class="col-md-6">
			<div><span style="font-size:25px"><strong>${item.productName}</strong></span></div>
			<hr>
			<div><span class="badge">&nbsp${productCategory}&nbsp</span><br><br>
			
			
			</div><br>
			
			<img src="${pageContext.request.contextPath}/Resources/images/${productId}.jpg" height=30px width=30px  onerror="this.src='${pageContext.request.contextPath}/resources/images/logo.png'" >
		<br>
			<br>
			
			<div>${productDescription} </div><br>
			<div><span style="font-size:20px" class="text-warning"><strong>&#8377  ${productPrice}</strong></span></div>
			<br>
		        
        	<form action="${pageContext.request.contextPath}/addToCart" method="post">

				<input type="hidden" value="${productId}" name="pid" />
				<div>
				<b>Quantity :</b>
				
				<input type="number" value="1" min="1" max="10"
						name="pqty"   />
				</div>
		</div>
		
		
		
		<div class="col-md-12" align="center" style="margin-top:30px;">
				<input type="submit" value="Add To Cart"
						class="btn btn-warning btn-lg" />
				</div>
				
				
			</form>
		
</div>
</body>
</html>