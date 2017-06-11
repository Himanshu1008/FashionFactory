<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <%@page isELIgnored="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background:#b0b4ba">

<div class="col-lg-6">
<img src="Resources\images\login.jpg" width="100%" height="450" />
</div>
<div class="col-lg-6">
<form action="CartFlow/Cart1" method="post">
<center>
    <div>
      <label for="email" style= "color:blue; font-size:180%;">UserName:</label>
      <input type="text" class="form-control" id="email" placeholder="Enter user name" name="username">
    </div>
    <br>
    
    
    <div >
      <label for="pwd" style= "color:blue; font-size:180%;">Password:</label>
      
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="password">
    </div>
    <br>
    
    <br>
    
    <button type="submit" class="btn btn-warning" style="font-size:200%; color: white;">Submit</button>
  </form>
  </div>
  </center>
</body>
</html>