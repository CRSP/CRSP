package com.crsp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.entity.School;
import com.crsp.service.SchoolService;

@Controller
@RequestMapping(value="/school")
public class SchoolController {
	@Autowired
	private SchoolService schoolService;

	public SchoolService getSchoolService() {
		return schoolService;
	}

	public void setSchoolService(SchoolService schoolService) {
		this.schoolService = schoolService;
	}
	
	@RequestMapping(value="/list/school/{schoolid}", method=RequestMethod.GET)
	@ResponseBody
	public School getSchoolBySchoolId(@PathVariable int schoolid) {
		return null;
	}
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String getAllSchools() {
		return "schools_list";
	}
	
	//按省份找学校
	@RequestMapping(value="/list/province/{provinceid}", method=RequestMethod.GET)
	@ResponseBody
	public List getSchoolsByProvinceId(@PathVariable int provinceid) {
		List schoolList = schoolService.findSchool(provinceid);
		return schoolList;
	}
	
	//按学校找院系
	@RequestMapping(value="/department/list/{schoolid}", method=RequestMethod.GET)
	@ResponseBody
	public List getDepartmentBySchoolId(@PathVariable int schoolid) {
		List departmentList = schoolService.findDepartment(schoolid);
		return departmentList;
	}
	
}
