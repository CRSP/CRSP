package com.crsp.entity;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;


/**
 * 学校和院系的对应关系表
 * 
 * @author Administrator
 * 
 */
@Entity
@Table(name = "school_department")
public class School_Department implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	private int id;// 主键,自增
	@ManyToOne
	@JoinColumn(name = "school_id")
	private School school;// 学校对象
	@ManyToOne
	@JoinColumn(name = "department_id")
	private Department department;// 部门对象

	public int getId() {
		return id;
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

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "School_Department [id=" + id + ", school=" + school.toString()
				+ ", department=" + department.toString() + "]";
	}
}
