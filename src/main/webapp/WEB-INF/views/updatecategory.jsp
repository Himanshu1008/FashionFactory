<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<title>Update Category</title>
</head>
<body>
  <form:form method="post" action="${pageContext.request.contextPath}/updateCategoryToDB" modelAttribute="Category">

	<form:input type="hidden" path="categoryId"/>
	<form:input type="text" path="categoryName"/>
	<input type="submit" value="Edit" class="btn btn-warning btn-block" />
	
</form:form>
</body>
</html>