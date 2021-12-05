package com.student;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class StudentInsertServlet
 */
@WebServlet("/StudentInsertServlet")
public class StudentInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String studentid = request.getParameter("studentid");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String coursetype = request.getParameter("coursetype");
		
		//using boolean variable
		
    boolean isTrue;
		
		isTrue = StudentDBUtil.insertstudent(studentid,name,nic,phone,email,coursetype);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('New Student Data Added Successfully !!!');");  //javascript successful massages
			out.println("location='admindashbord.jsp'");
			out.println("</script>");
			

				
			
			
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('New Student Data Added UnSuccessfully Try Again !!!');"); //javascript error massages
			out.println("location='admindashbord.jsp'");
			out.println("</script>");
		}
		
		
	}
}