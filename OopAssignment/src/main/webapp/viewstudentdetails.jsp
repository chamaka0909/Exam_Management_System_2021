<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Student profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link rel="stylesheet" type="text/css" href="css/viewstudentdetails.css">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <link rel="stylesheet" type="text/css" href="css/navbar.css">
</head>
<body>


	
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

	
	<%-- get the student data from database to view student details form --%>
	
<form class="form-detail">
<c:forEach var="stu" items="${stuDetails}">
	
	<c:set var="id" value="${stu.id}"/>
	<c:set var="studentid" value="${stu.studentid}"/>
	<c:set var="name" value="${stu.name}"/>
	<c:set var="nic" value="${stu.nic}"/>
	<c:set var="phone" value="${stu.phone}"/>
	<c:set var="email" value="${stu.email}"/>
	<c:set var="coursetype" value="${stu.coursetype}"/>
	
	
	  <h2>Student Profile</h2>
				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="index_no">Index No</label>
						<input type="text" name="id" value="${stu.id}" class="input-text" readonly>
					</div>
					<div class="form-row form-row-1">
						<label for="student_id">Student ID</label>
						<input type="text" name="studentid" value="${stu.studentid}"  class="input-text" pattern ="[a-zA-Z]{2}[0-9]{8}" readonly>
					</div>
				</div>
				<div class="form-row">
					<label for="name">Name</label>
					<input type="text" name="name" value="${stu.name}"  class="input-text" readonly>
				</div>

				<div class="form-group">
					<div class="form-row form-row-1">
						<label for="nic">NIC</label>
						<input type="text" name="nic" value="${stu.nic}" class="input-text" readonly>
					</div>
					<div class="form-row form-row-1">
						<label for="phone">Phone</label>
						<input type="text" name="phone" value="${stu.phone}" class="input-text" pattern ="[0-9]{10}"readonly>
					</div>
				</div>
				
				<div class="form-row">
					<label for="email">Email</label>
					<input type="text" name="email" value="${stu.email}" class="input-text" readonly>
				</div>

				<div class="form-row">
					<label for="course_type">Course Type</label>
					<input type="text" name="coursetype" value="${stu.coursetype}" class="input-text" readonly>
				</div>
				</c:forEach>		
		</form>
		</div>
	</div>		
				
	
	
<%-- get the student data from database to student data update  form --%>
	
	
	
	<c:url value="updatestudent.jsp" var="studentupdate">
	
		<c:param name="id" value="${id}"/>
		<c:param name="studentid" value="${studentid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="coursetype" value="${coursetype}"/>
		
	
		
	</c:url>
	
	<a href="${studentupdate}">
	<input type="button" name="update" class = "butt1" value="Update Student Data">
	</a>
	
	<%-- get the student data from database to student data delete form --%>
	
	<c:url value="deletestudent.jsp" var="studentdelete">
	
		<c:param name="id" value="${id}"/>
		<c:param name="studentid" value="${studentid}"/>
		<c:param name="name" value="${name}"/>
		<c:param name="nic" value="${nic}"/>
		<c:param name="phone" value="${phone}"/>
		<c:param name="email" value="${email}"/>
		<c:param name="coursetype" value="${coursetype}"/>
	</c:url>
	
	
	<a href="${studentdelete}">
	<input type="button" name="delete" class = "butt2" value="Delete Student Data">
	</a>

</body>
</html>