package com.crsp.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crsp.service.ResourceServiceI;
import com.crsp.service.SchoolServiceI;
import com.crsp.utils.Formattor;

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
	//需要最热10个资源
	@RequestMapping(value={"/", "/index"}, method=RequestMethod.GET)
	public String showIndexPage(Map<String, Object> model, HttpServletRequest request) {
		List schools = schoolService.getHottestSchools().getPageList();
		//简介处理
		Formattor.formatDescription(schools);
		List resource = resouceService.getHottestResource().getPageList();
		model.put("schools", schools);
		model.put("resource", resource);
		return "index";
	}
}
