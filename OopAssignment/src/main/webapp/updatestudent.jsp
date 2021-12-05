<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Update Student Data</title>
	
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	
	<meta charset="ISO-8859-1">
    <link rel="stylesheet" href="css/updatestudent.css"/>

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" type="text/css" href="css/navbar.css"></head>

<body class="form-v4">
<%-- get the student data from database to web form   --%>


<%
		String id = request.getParameter("id");
        String studentid = request.getParameter("studentid");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String coursetype = request.getParameter("coursetype");
	%>
	
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

	
	<div class="page-content">
		<div class="form-v4-content">
			<div class="form-left">
				
				
				
			</div>
			
			<%-- student data update form   --%>

<form action="update" method="post" class="form-detail">
	
	        <h2>UPDATE STUDENT DATA</h2>
				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="index_no">Index No</label>
						<input type="text" name="id" value="<%= id %>" class="input-text" readonly>
					</div>
					<div class="form-row form-row-1">
						<label for="student_id">Student ID</label>
						<input type="text" name="studentid" value="<%= studentid %>"  class="input-text" pattern ="[a-zA-Z]{2}[0-9]{8}" readonly>
					</div>
				</div>
				<div class="form-row">
					<label for="name">Name</label>
					<input type="text" name="name" value="<%= name %>"  class="input-text">
				</div>

				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="nic">NIC</label>
						<input type="text" name="nic" value="<%= nic %>" class="input-text">
					</div>
					<div class="form-row form-row-1">
						<label for="phone">Phone</label>
						<input type="text" name="phone" value="<%= phone %>" class="input-text" pattern ="[0-9]{10}" > 
					</div>
				</div>
				
				<div class="form-row">
					<label for="email">Email</label>
					<input type="text" name="email" value="<%= email %>" class="input-text" > 
				</div>

				<div class="form-row">
					<label for="course_type">Course Type</label>
					<input type="text" name="coursetype" value="<%= coursetype %>" class="input-text"> 
				</div>
				
				
				<div class="form-row-last">
			
	<input type="submit" name="submit" class="register"  value="Update Student Data">
	</div>
			</form>
		</div>
	</div>
	
</body>
</html>