package com.crsp.service;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.ProvinceDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.entity.School;
import com.crsp.entity.Department;
import com.crsp.utils.Page;

@Service
public class SchoolService {
	@Autowired
	private SchoolDAO schoolDAO;
	@Autowired
	private ProvinceDAO provinceDAO;

	
	
	//添加学校
	public School addSchool(School school){
		schoolDAO.save(school);
		return schoolDAO.findById(school.getId());
	}
	//更新学校信息
	public void updateInformation(School school){
		
	schoolDAO.update(school);
		
	}
	//查询学校信息
	public School seeInformation(int school_id){

		return schoolDAO.findById(school_id);
	}
	
    //查找所开设的院系(没通过测试)
	public List<Department> findDepartment(Page page,int school_id){

		return 	(List<Department>)schoolDAO.findDepartments(page,school_id);
		
	}	
	
	//查找各地区的学校
	public List<School> findSchools(Page page,int province_id){
	
		return (List<School>)provinceDAO.findSchools(page, province_id);
	
		
	}
	
}
