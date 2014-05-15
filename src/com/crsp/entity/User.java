package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 用户表实体类
 */
@Entity
@Table(name = "user")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue
	private int id;// Id,主键
	@ManyToOne
	@JoinColumn(name = "school_id")
	private School school;// 校园对象
	@ManyToOne
	@JoinColumn(name = "department_id")
	private Department department;// 部门对象

	private String user_id;// 用户Id

	private String user_pwd;// 用户密码

	private String user_name;// 用户名

	private String avatar;// 用户头像

	private int points;// 积分

	private String email;// 邮箱
	
	private int status;// 0为冻结状态,1为可用状态 

	public User() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	public Department getDepartment() {
		return department;
	}

	public void setDepartment(Department department) {
		this.department = department;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pwd() {
		return user_pwd;
	}

	public void setUser_pwd(String user_pwd) {
		this.user_pwd = user_pwd;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
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

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", school=" + school + ", department="
				+ department + ", user_id=" + user_id + ", user_pwd="
				+ user_pwd + ", user_name=" + user_name + ", avatar=" + avatar
				+ ", points=" + points + ", email=" + email + ", status="
				+ status + "]";
	}
}
