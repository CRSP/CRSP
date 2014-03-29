package com.crsp.service;



import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crsp.dao.SchoolDAO;
import com.crsp.entity.School;
import com.crsp.entity.Department;

@Service
public class SchoolService {
	@Autowired
	private SchoolDAO schoolDAO;

	
	
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
	
    //查找所开设的院系
	public List<Department> findDepartment(int school_id){

		return 	(List<Department>)schoolDAO.findDepartments(school_id);
		
	}	
	
	//查找各地区的学校
	public List<School> findSchool(int province_id){
	
		return (List<School>)schoolDAO.findByProvince(province_id);
	
		
	}
	
}
