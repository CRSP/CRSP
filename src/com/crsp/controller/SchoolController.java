package com.crsp.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.dto.SchoolDTO;
import com.crsp.entity.Department;
import com.crsp.entity.Province;
import com.crsp.entity.School;
import com.crsp.service.SchoolServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;

@Controller
@RequestMapping(value = "/school")
public class SchoolController {
	@Autowired
	private SchoolServiceI schoolService;

	public SchoolServiceI getSchoolService() {
		return schoolService;
	}

	public void setSchoolService(SchoolServiceI schoolService) {
		this.schoolService = schoolService;
	}

	@RequestMapping(value = "/list/{page}", method = RequestMethod.GET)
	public String getPagesSchools(@PathVariable int page, Map<String, Object> model) {
		Page p  = new Page();
		p.setPageNow(page);
		Pages schoolProfile = schoolService.getSchools(p);
		List schoolsList = schoolProfile.getPageList();
		model.put("schools", schoolsList);
		model.put("page", p);
		return "schools_list";
	}
	
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getDefualtSchools(Map<String, Object> model) {
		Page page = new Page();
		page.setPageNow(1);
		Pages schoolProfile = schoolService.getSchools(page);
		List schoolsList = schoolProfile.getPageList();
		model.put("schools", schoolsList);
		model.put("page", schoolProfile.getPage());
		return "schools_list";
	}
	
	

	// 按省份找学校
	@RequestMapping(value = "/list/province/{provinceid}", method = RequestMethod.GET)
	@ResponseBody
	public List getSchoolsByProvinceId(@PathVariable int provinceid) {
		Page page = new Page();
		page.setPageSize(999);
		return schoolService.getSchoolsByProvinceId(provinceid, page).getPageList();
	}

	//按学校找院系
	@RequestMapping(value="/list/department/school/{schoolid}", method = RequestMethod.GET)
	@ResponseBody
	public List getDepartmentsBySchoolId(@PathVariable int schoolid) {
		return schoolService.getProfile(schoolid).getDepartment_list();
	}
	
	//获取学校详细信息(学校省份，资源数，院系列表等)
	@RequestMapping(value = "/profile/{schoolid}", method = RequestMethod.GET)
	public String getDepartmentsBySchoolId(@PathVariable int schoolid, Map<String, Object> model) {
		//学院列表
		//学校信息
		SchoolDTO schoolDTO = schoolService.getProfile(schoolid);
		List departmentsList = schoolDTO.getDepartment_list();
		model.put("school_profile", schoolDTO);
		model.put("departments", departmentsList);
		return "departments_list";
	}

}