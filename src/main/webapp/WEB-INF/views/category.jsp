<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Category</title>
 <meta charset="utf-8">
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
 
                       <form name="my_form1" method="post" action="categoryview">
                       <br><br>
                     <center>
                        <button type="submit"class="btn btn-warning" class="form-control">Add Category</button>
                        </center>
                       </form>
                       <h3>CategoryName:${cat}</h3>
                       <table border="2" width="70%" cellpadding="2">  
<tr><th>Id</th><th>CtegoryName</th><th>Edit</th><th>Delete</th></tr>  
   <c:forEach var="pro" items="${cat}">   
   <tr>  
   <td>${pro.categoryId}</td>  
  
   <td>${pro.categoryname}</td>  
  
   <td><a href="updatecategory/${pro.categoryId}">update</a></td>  
   <td><a href="deleteCategoryFromDB/${pro.categoryId}">Delete</a></td>  
   </tr>  
   </c:forEach>  
   </table>  
</body>
</html>