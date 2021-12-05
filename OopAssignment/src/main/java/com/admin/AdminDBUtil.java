package com.admin;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.student.DBConnect;

public class AdminDBUtil {
	
	private static boolean Success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean validate(String username,String password) {
		
		try {
			con = DBConnect.getConnection();
    		stmt = con.createStatement();
			String sql = "select * from admin where username ='"+username+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				Success = true;
			} else {
				Success = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return Success;
	}

}



