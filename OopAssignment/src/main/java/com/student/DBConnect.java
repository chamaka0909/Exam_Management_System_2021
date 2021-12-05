package com.student;

import java.sql.Connection;
import java.sql.DriverManager;

//connect database and web form

public class DBConnect {

	private static String url = "jdbc:mysql://localhost:3306/oems";
	private static String userName = "root";
	private static String password = "Chamaka#0909";
	private static Connection con;

	public static Connection getConnection() {
		
		//using exception and get the errors
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not successful!!!");
		}
		
		return con;
	}
}
