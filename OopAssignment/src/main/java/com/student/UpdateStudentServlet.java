package com.student;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;






 //Servlet implementation class UpdateStudentServlet

@WebServlet("/UpdateStudentServlet")
public class UpdateStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 //@see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		String studentid = request.getParameter("studentid");
		String name = request.getParameter("name");
		String nic = request.getParameter("nic");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String coursetype = request.getParameter("coursetype");
		
		//using boolean variable
		
		boolean True;
		
		True = StudentDBUtil.updatestudent( id, studentid, name,  nic, phone,  email , coursetype);
		
		if(True == true) {
			
			List<Student> stuDetails = StudentDBUtil.getStudent(id);
			request.setAttribute("stuDetails", stuDetails);
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("viewstudentdetails.jsp");
			dis.forward(request, response);
		}
		else {
			
			List<Student> stuDetails = StudentDBUtil.getStudent(id);
			request.setAttribute("stuDetails", stuDetails);
			
			
			
			RequestDispatcher dis = request.getRequestDispatcher("unsuccess.jsp");
			dis.forward(request, response);
		}
	}
	

}
