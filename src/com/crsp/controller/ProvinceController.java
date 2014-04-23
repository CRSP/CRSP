package com.crsp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.service.ProvinceServiceI;

@Controller
@RequestMapping(value="/province")
public class ProvinceController {
	/*@Autowired
	private ProvinceServiceI provinceService;
	
	public ProvinceServiceI getProvinceService() {
		return provinceService;
	}

	public void setProvinceService(ProvinceServiceI provinceService) {
		this.provinceService = provinceService;
	}


	@RequestMapping(value="/list", method=RequestMethod.GET)
	@ResponseBody
	public List getAllProvince() {
		return null;
	}*/
}
