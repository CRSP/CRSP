package com.crsp.dto;

import java.io.Serializable;
import java.util.List;

public class SchoolDTO extends BaseDTO implements Serializable {
	private static final long serialVersionUID = 1L;
	private int id;
	private String school_name;
	private String school_description;
	private String school_avatar;
	private String province_name;
	private int resource_quanities; // 资源数量
	private List<DepartmentDTO> department_list;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getResource_quanities() {
		return resource_quanities;
	}

	public void setResource_quanities(int resource_quanities) {
		this.resource_quanities = resource_quanities;
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

	@Override
	public String toString() {
		return "[id: " + id + ", school_name: " + school_name
				+ ", school_description: " + school_description
				+ ", school_avatar: " + school_avatar + ", province_name: "
				+ province_name + ", resource_quanities: " + resource_quanities
				+ "]";
	}
}
