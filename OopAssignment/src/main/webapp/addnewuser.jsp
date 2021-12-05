<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Add New User</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/addnewuser.css">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="css/navbar.css">

</head>

<body>
<%-- navigation bar  --%>

<div class="topnav" id="myTopnav">
        <a href="home.jsp">Home</a>
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
	
	

<div class="container">

<%-- create a form to get the student details  --%>

    <form action="insert" method="post"id="adduser">

          <div class="header">
        
              <h3>Add New Student</h3>
                                   
        </div>
        
        
        <div class="sep"></div>

        <div class="inputs">
        
        
            
        
          
          <input  type ="text" name ="studentid" placeholder="Student ID" class ="adddetails"  pattern ="[a-zA-Z]{2}[0-9]{8}" required><br>
          
          <input  type ="text" name ="name" class ="adddetails" placeholder="Student Name" required><br>  
          
          <input  type ="text" name ="nic" class ="adddetails" placeholder="NIC" required><br>
            
          <input  type ="text" name ="phone" class ="adddetails" placeholder="Phone No"  pattern ="[0-9]{10}" required ><br>
           
          <input type ="text" name ="email" class ="adddetails"  placeholder="Email" pattern ="[a-zA-Z0-9._%+-]+@[a-z0-9]+\.[a-z]{2,3}"required><br>
              
          <input type ="text" name ="coursetype" class ="adddetails" placeholder="CourseType" required><br>    
            


           
            
            <button type ="submit" name="submit" id="submit" value ="submit">Save </button>
        
        </div>

    </form>

</div>


</body>
</html>