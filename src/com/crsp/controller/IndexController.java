package com.crsp.controller;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crsp.entity.Province;
import com.crsp.service.ResourceServiceI;
import com.crsp.service.SchoolServiceI;

@Controller
@RequestMapping(value="/")
public class IndexController {
	public static final int PER_PAGE = 25;
	
	//学校和资源的service
	@Autowired
	private SchoolServiceI schoolService;
	
	public SchoolServiceI getSchoolService() {
		return schoolService;
	}

	public void setSchoolService(SchoolServiceI schoolService) {
		this.schoolService = schoolService;
	}
	
	@Autowired
	private ResourceServiceI resouceService;
	
	public ResourceServiceI getResouceService() {
		return resouceService;
	}

	public void setResouceService(ResourceServiceI resouceService) {
		this.resouceService = resouceService;
	}

	//需要资源最多的12间学校
	//需要最新10个资源
	//Autowired
	@RequestMapping(value={"/", "/index"}, method=RequestMethod.GET)
	public String showIndexPage(Map<String, Object> model) {
		List schools = schoolService.getHottestSchools().getPageList();
		List resource = resouceService.getNewestResource().getPageList();
		model.put("schools", schools);
		model.put("resource", resource);
		return "index";
	}
}
