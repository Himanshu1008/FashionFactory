<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1><strong>Product Update</strong></h1>
<form:form method="post" action="${pageContext.request.contextPath}/updateProductToDB" modelAttribute="Product">

	<form:input type="hidden" path="productId"/>
	<form:input type="text" path="productName"/>
	<input type="submit" value="Edit" class="btn btn-warning btn-block" />
	
</form:form>

</body>
</html>