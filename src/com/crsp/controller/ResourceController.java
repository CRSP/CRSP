package com.crsp.controller;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.entity.Resource;

@Controller
@RequestMapping(value="/resource")
public class ResourceController {
	//resourceService
	
	@RequestMapping(value="/list", method=RequestMethod.GET)
	public String getResourceList(Map<String, Object> model) {
		List resourceList = new LinkedList();
		for(int i = 0; i < 10; i++) {
			Resource r = new Resource();
			r.setId(i);
			r.setName("cocos2d x跑酷源码 C++版");
			r.setPrice(2);
			r.setStatus(1);
			r.setTime("2014-03-28");
			r.setType_id(1);
			r.setUser_id(1);
			resourceList.add(r);
		}
		model.put("resourceList", resourceList);
		return "resource_list";
	}
	
	@RequestMapping(value="/list/{resourceid}", method=RequestMethod.GET)
	public String getResourceByID(@PathVariable int resourceid, Map<String, Object> model) {
		return "download";
	}
	
	@RequestMapping(value="/download/{resourceid}", method=RequestMethod.GET)
	@ResponseBody
	public Map getDownloadURL(@PathVariable int resourceid, HttpSession session) {
		//判断是否登录
		Map msgMap = new HashMap();
		if(session.getAttribute("user_name") == null) {
			msgMap.put("isLogined", false);
			return msgMap;
		} else {
			msgMap.put("isLogined", true);
			msgMap.put("rUrl", resourceid);
			return msgMap;
		}
	}
}
