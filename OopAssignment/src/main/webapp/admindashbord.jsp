<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<head>
<meta charset="ISO-8859-1">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">
<link rel="stylesheet" type="text/css" href="css/admindashbord.css">

<title>Manage Student</title>


</head>
<body>

<div class="topnav" id="myTopnav">
         <a href="home.jsp">Home</a>
        <a href="#">Manage Student</a>
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

<h1 style="font-size:4vw ;color:white ;text-align:center;margin-top:180px; ">Manage Student</h1>

   
   <%-- create a serch field   --%>
   
    <form action="Search" method="post" >    
    
    <div class="wrap">
          <div class="search">
          
               <input type="text" class="searchTerm" name = "studentid" pattern ="[a-zA-Z]{2}[0-9]{8}" placeholder="Enter Student ID Here...." required>
               <button type="submit" class="searchButton" name="submit" value ="submit">Search </button>
       
               
          </div>
      </div>

   </form>
   
     <%-- create a serch button   --%>
     
     <form action="addnewuser.jsp" >    
     <button type="submit" class="addnewuserbutton" value ="submit">Add New Student </button>

       </form>  

</body>
</html>