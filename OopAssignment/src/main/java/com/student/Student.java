package com.student;

//declare variables

public class Student {

	private int id;
	private String studentid;
	private String name;
	private String nic;
	private String phone;
	private String email;
	private String coursetype;
	
	// assign values using constructor
	
	public Student(int id, String studentid, String name, String nic, String phone, String email, String coursetype) {
		
		this.id = id;
		this.studentid = studentid;
		this.name = name;
		this.nic = nic;
		this.phone = phone;
		this.email = email;
		this.coursetype = coursetype;
	}
	
	// get values using getters

	public int getId() {
		return id;
	}

	

	public String getStudentid() {
		return studentid;
	}

	

	public String getName() {
		return name;
	}

	

	public String getNic() {
		return nic;
	}

	

	public String getPhone() {
		return phone;
	}

	

	public String getEmail() {
		return email;
	}

	

	public String getCoursetype() {
		return coursetype;
	}

	
	
}
	
