package com.crsp.dto;

import java.io.Serializable;

<<<<<<< HEAD
public class DepartmentDTO implements Serializable {
=======
public class DepartmentDTO extends BaseDTO implements Serializable {
>>>>>>> 0bad5360b8fc5b835d88d9e2bc20afb72f81c4d1
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int id;
	private String department_name;
	private int resource_quantities;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public int getResource_quantities() {
		return resource_quantities;
	}

	public void setResource_quantities(int resource_quantities) {
		this.resource_quantities = resource_quantities;
	}
}
