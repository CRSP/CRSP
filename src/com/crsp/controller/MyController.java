package com.crsp.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/my")
public class MyController {
	//myService
	
	
	@RequestMapping(value={"/", "/upload"}, method=RequestMethod.GET)
	public String getMyUpload() {
		return "my_upload";
	}
	
	@RequestMapping(value="/download", method=RequestMethod.GET)
	public String getMyDownload() {
		return "my_download";
	}
	
	@RequestMapping(value="/record", method=RequestMethod.GET)
	public String getMyRecord() {
		return "my_record";
	}
}
