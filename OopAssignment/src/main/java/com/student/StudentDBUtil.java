package com.student;

import java.sql.Connection;


import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class StudentDBUtil {
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
public static boolean validate(String studentid) {
		
		try {
			con = DBConnect.getConnection();  //get connection 
			stmt = con.createStatement();
			String sql = "select * from student where studentid ='"+studentid+"'"; //select data in to the database
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				isSuccess = true;
			} else {
				isSuccess = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
	}
	
	
	public static List<Student> getstudent(String Studentid){
		
		ArrayList <Student> stu = new ArrayList<>();
		
		//validate
		
		try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "select * from student where studentid = '"+Studentid+"'";   //select data in to the database
    	    ResultSet  rs = stmt.executeQuery(sql);
    		
    	    if (rs.next()) {
				int id = rs.getInt(1);
				String studentid1= rs.getString(2);
				String name = rs.getString(3);
				String nic = rs.getString(4);
				String phone = rs.getString(5);
				String email = rs.getString(6);
				String coursetype = rs.getString(7);
				
				Student stu1 = new Student(id,studentid1,name,nic,phone,email,coursetype);
				stu.add(stu1);
			}
    	}
    	catch (Exception e) {
    		e.printStackTrace();
    	}
		
		return stu;
	}
	
	
	
	
	
	
	
	
	
	
	
	  public static boolean insertstudent(String studentid, String name, String nic, String phone, String email ,String coursetype) {
	    	
	    	boolean isSuccess = false;
	    	
	    	
	    	
	    	try {
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    		//insert data in to the database
	    		
	    	    String sql = "insert into student values (0,'"+studentid+"','"+name+"','"+nic+"','"+phone+"','"+email+"','"+coursetype+"')";   
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    
	    
	    	
	    	
	    	
	    }
	  
	  
	  
	  
	  
	  
	  
	  
	  
	  public static boolean updatestudent(String id,String studentid, String name, String nic, String phone, String email ,String coursetype) {
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    		//update data in to the database
	    		
	    		String sql = "update student set name ='"+name+"',nic ='"+nic+"',phone = '"+phone+"',email = '"+email+"',coursetype = '"+coursetype+"'"
	    				+ "where id='"+id+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	  
	  
	  
	  
	  
	  
	  
	  public static List<Student> getStudent(String id) {
			
		  int convertid = Integer.parseInt(id);
		  
			ArrayList<Student> student = new ArrayList<>();
			
			try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "select * from student where id='"+convertid+"'";
	    		rs = stmt.executeQuery(sql);
	    		
	    		while(rs.next()) {
	    			int id1 = rs.getInt(1);
	    			String studentid = rs.getString(2);
	    			String name = rs.getString(3);
	    			String nic = rs.getString(4);
	    			String phone = rs.getString(5);
	    			String email = rs.getString(6);
	  	    		String coursetype = rs.getString(7);
	    			
	    			
	    			Student stu = new Student(id1,studentid,name,nic,phone,email,coursetype);
	    			student.add(stu);
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}	
	    	return student;	
	    }
	  
	  
	  
	  
	  
	  
	  public static boolean deletestudent(String id) {
	    	
		  int convertid = Integer.parseInt(id);
		  
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		
	    		//delete data in to the database
	    		
	    		String sql = "delete from student where id ='"+convertid+"'";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if (rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }











	  
	  
	  
	 
	    
}