package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;

/*用户表实体类*/
@Entity
@Table(name = "user")
public class User implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@Column(name = "id")
	@GenericGenerator(name = "paymentableGenerator", strategy = "native")
	@GeneratedValue(generator = "paymentableGenerator")
	private int id;// Id,主键
	@ManyToOne(targetEntity=School.class)
	@JoinColumn(referencedColumnName="id",name="school_id")
	private School school;// 学校
	@ManyToOne(targetEntity=Department.class)
	@JoinColumn(referencedColumnName="id",name="department_id")
	private Department department;// 院系
	@Column
	private String user_id;// 用户Id
	@Column
	private String user_pwd;// 用户密码
	@Column
	private String user_name;// 用户名
	@Column
	private String avatar;// 用户头像
	@Column
	private Integer points;// 积分
	@Column
	private String email;// 邮箱

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

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setPoints(Integer points) {
		this.points = points;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", school=" + school.toString() + ", department="
				+ department.toString() + ", user_id=" + user_id + ", user_pwd="
				+ user_pwd + ", user_name=" + user_name + ", avatar=" + avatar
				+ ", points=" + points + ", email=" + email + "]";
	}

}
