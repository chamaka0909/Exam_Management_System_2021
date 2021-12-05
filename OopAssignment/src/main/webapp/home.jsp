<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/home.css">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">

<title>Online Examination Management System</title>

</head>

<body>

<%-- navigation bar  --%>
    <div class="topnav" id="myTopnav">
         <a href="#">Home</a>
        <a href="admindashbord.jsp">Manage Student</a>
        <a href="#">Manage Exams</a>
        <a href="#">Manage Questions</a>
        <a href="#">Manage Results</a>
        <a href="#">Contact Us</a>
        <a href="#">About Us</a> 
         
        <form action="adminlogin.jsp">
        
       <button onclick="adminlogin.jsp" style="margin-right: 20px; float: right;" class="navButton"> Sign Out </button>
       
       </form>
        <button onclick="myAccount.jsp" style="margin-right: 20px; float: right;" class="navButton"> My Account </button>
    </div>
    
  		
                      





  <h1 style="font-size:6vw" class = "title1">WELCOME <br>ONLINE EXAMS</h1>
  




</body>
</html>