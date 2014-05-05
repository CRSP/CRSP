package com.crsp.dto;

import java.io.Serializable;

public class UserDTO extends BaseDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private long id;
	private String user_name;
	private String school_name;
	private String department_name;
	private int points;
	private String email;
	private String avatar;
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getSchool_name() {
		return school_name;
	}

	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}
	
	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}
	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	@Override
	public String toString() {
		return "[id: " + id + ", user_name: " + user_name + ", school_name: "
				+ school_name + ", department_name: " + department_name + "]";
	}
}
