package com.crsp.dto;

import java.io.Serializable;
import java.util.List;

public class SchoolDTO implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String school_name;
	private String school_description;
	private String school_avatar;
	private String province_name;
	private String resource_quanities;	//资源数量
	private List<DepartmentDTO> department_list;
	public String getResource_quanities() {
		return resource_quanities;
	}
	public void setResource_quanities(String resource_quanities) {
		this.resource_quanities = resource_quanities;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getProvince_name() {
		return province_name;
	}
	public void setProvince_name(String province_name) {
		this.province_name = province_name;
	}
	public String getSchool_name() {
		return school_name;
	}
	public void setSchool_name(String school_name) {
		this.school_name = school_name;
	}
	public String getSchool_description() {
		return school_description;
	}
	public void setSchool_description(String school_description) {
		this.school_description = school_description;
	}
	public String getSchool_avatar() {
		return school_avatar;
	}
	public void setSchool_avatar(String school_avatar) {
		this.school_avatar = school_avatar;
	}
	public List<DepartmentDTO> getDepartment_list() {
		return department_list;
	}
	public void setDepartment_list(List<DepartmentDTO> department_list) {
		this.department_list = department_list;
	}
}
