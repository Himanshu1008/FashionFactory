<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <title>FashionFactory</title>
  <meta charset="utf-8">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

                      
                       
                       <br><br>
                     <center>
                        <a href="addproduct" class="btn btn-primary">Add product</a>
                        </center>
                       
            <h1><strong>Product Information</strong></h1>
<h3>ProductName:${name}</h3>
<h3>price:${price}</h3>
<h3>Description:${des}</h3>
<h3>Category:${cat}</h3>
<hr><hr>

<table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>Name</th><th>Price</th><th>Description</th><th>Category</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="pro" items="${list}">   
   <tr>  
   <td>${pro.productId}</td>  
   <td>${pro.productName}</td>  
   <td>${pro.productPrice}</td>  
   <td>${pro.productDescription}</td>
   <td>${pro.productCategory}</td>
   <td><a href="updateProduct/${pro.productId}">update</a></td>  
   <td><a href="deleteProductFromDB/${pro.productId}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
</body>
</html>