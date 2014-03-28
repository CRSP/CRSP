package com.crsp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crsp.service.SchoolService;

@Controller
@RequestMapping(value="/school")
public class SchoolController {
	private SchoolService schoolService;

	public SchoolService getSchoolService() {
		return schoolService;
	}

	public void setSchoolService(SchoolService schoolService) {
		this.schoolService = schoolService;
	}
	
	/*@RequestMapping(value="/schoolslist/{schoolid}")
	public void */
	
}
