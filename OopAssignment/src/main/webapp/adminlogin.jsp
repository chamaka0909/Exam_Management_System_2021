<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="css/adminlogin.css">
</head>

<body>

<%-- create a admin details form  --%>
 
<form  action="Login" class="box"  method="post">

<h1>Login</h1>
<input type="text" name="username" placeholder="Username" required><br> 
<input type="password" name="password" placeholder="Password" required><br>
<input type="submit" name="submit" value="Login">

</form>

</body>
</html>