package com.crsp.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/my")
public class MyController {
	//myservice
	
	
	@RequestMapping(value="/")
	public String showMyPage(@PathVariable int id, Map<String, Object> model) {
		return "my";
	}
}
