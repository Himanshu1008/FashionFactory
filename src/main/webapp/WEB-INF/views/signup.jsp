<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<c:if test="${not empty passwordmismatch}">
		<h1 class="alert alert-danger">Passwords do not match</h1>
	</c:if>
	<c:if test="${useralreadyexists}">
	<h1 class="alert alert-danger">User Already Exist!!!</h1>
	</c:if>

	<form:form method="POST" modelAttribute="user" action="AddUserToDB" >
						
							  <table style="width: 80%;" class="table center">
							  	<tr>
							  		<td><form:label path="email" for="email">Email address:</form:label></td>
							  		<td><form:input path="email" type="email" class="form-control" id="email" autofocus="true"/></td>
							  		 <td class="alert alert-danger"><form:errors path="email"/></td> 
							  	</tr>
							  	
							  	<tr>
							  		<td><form:label path="username" for="username">Username:</form:label></td>
							  		<td><form:input path="username" type="text" class="form-control" id="username"/></td>
							  		 <td class="alert alert-danger"><form:errors path="username"/></td> 
							  	</tr>
							  	
							  	<tr>
							  		<td><form:label path="password" for="password">Password:</form:label></td>
							  		<td><form:input path="password" type="password" class="form-control" id="password"/></td>
							  		<td class="alert alert-danger"><form:errors path="password"/></td> 
							  	</tr>
							  	
							  	<tr>
							  		<td><form:label path="cPassword" for="cPassword">Confirm Password:</form:label></td>
							  		<td><form:input path="cPassword" type="password" class="form-control" id="cpassword"/></td>
							  		 <td class="alert alert-danger"><form:errors path="cPassword"/></td> 
							  	</tr>
							  	
							  	<tr>
							  		<td><form:label path="phone" for="phone">Phone:</form:label></td>
							  		<td><form:input path="phone" type="phone" class="form-control" id="phone"/></td>
							  		<td class="alert alert-danger"><form:errors path="phone" /></td> 
							  	</tr>
							  	
							  	<tr>
							  		<td><form:label path="address" for="address">Address:</form:label></td>
							  		<td><form:textarea path="address" class="form-control" id="address"></form:textarea></td>
							  		 <td class="alert alert-danger"><form:errors path="address" /></td> 
							  	</tr>
							  	
							  	<tr>
							  		<td colspan="2" >
							  		<div class="row">
									    <div class="col-md-2 col-md-offset-5"> <button type="submit" class="btn btn-default">Submit</button> </div>
									</div>
							  		</td>
							  	</tr>
							  	
							  </table>
							  </form:form>
</body>
</html>