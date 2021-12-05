<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Unuccess</title>


<style>

body {
  background-color: #75e2e9;
}

h1 {
  color: white;
  
   font-size: 50px;

   background-color:red;
}
.submit{
width: 300px;
  height: 55px;
  border: 2px solid white;
  background: blue;
  text-align: center;
  color: #fff;
  border-radius:  5px 5px 5px 5px;
  cursor: pointer;
  font-size: 20px;
  margin-top :180px;
   margin-bottom: 13px;
   margin-left:40%;
}


</style>
</head>


<body>
	
<h1 align ="center">Unsuccess !!!</h1>                       <%-- create a unsuccess massage   --%>

<form action="admindashbord.jsp">
<input type="submit" name="submit"  class ="submit" value="Back">
</form>

</body>
</html>
