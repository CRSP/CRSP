package com.crsp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crsp.dao.DepartmentDAO;
import com.crsp.entity.Department;


@Service
public class DepartmentService {
	@Autowired
	private DepartmentDAO departmentDAO;
	//添加院系
	public Department addDepartment(Department department){
		
		 departmentDAO.save(department);
		 return  departmentDAO.findById(department.getId());	
	}
	//更新信息
	public void updateInformation(Department department){
	
	departmentDAO.update(department);
		
	}
	
	//查看信息
	public Department seeInformation(int department_id){
	
		return  departmentDAO.findById(department_id);						
		
	}
	

}
