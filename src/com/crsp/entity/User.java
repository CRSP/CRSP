package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
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

	private int school_id;// 外键,校园Id

	private int department_id;// 外键,部门Id

	private String user_id;// 用户Id

	private String user_pwd;// 用户密码

	private String user_name;// 用户名

	private String avatar;// 用户头像

	private int points;// 积分

	private String email;// 邮箱
	
	

	public User() {

	}
	
	public User(int id,int school_id, int department_id, String user_id,
			String user_pwd, String user_name, String avatar, int points,
			String email) {
		this.id = id;
		this.school_id = school_id;
		this.department_id = department_id;
		this.user_id = user_id;
		this.user_pwd = user_pwd;
		this.user_name = user_name;
		this.avatar = avatar;
		this.points = points;
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSchool_id() {
		return school_id;
	}

	public void setSchool_id(int school_id) {
		this.school_id = school_id;
	}

	public int getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
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

	@Override
	public String toString() {
		return "User [id=" + id + ", school_id=" + school_id
				+ ", department_id=" + department_id + ", user_id=" + user_id
				+ ", user_pwd=" + user_pwd + ", user_name=" + user_name
				+ ", avatar=" + avatar + ", points=" + points + ", email="
				+ email + "]";
	}
}
