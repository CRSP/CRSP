package com.crsp.controller;

import java.io.File;
import java.io.IOException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.crsp.entity.Progress;
import com.crsp.entity.Resource;

@Controller
@SessionAttributes("status")
@RequestMapping(value = "/resource")
public class ResourceController {
	// resourceService

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String getResourceList(Map<String, Object> model) {
		List resourceList = new LinkedList();
		for (int i = 0; i < 10; i++) {
			Resource r = new Resource();
			r.setId(i);
			r.setName("cocos2d x跑酷源码 C++版");
			r.setPrice(2);
			r.setStatus(1);
			r.setTime("2014-03-28");
			resourceList.add(r);
		}
		model.put("resourceList", resourceList);
		return "resource_list";
	}

	@RequestMapping(value = "/list/{resourceid}", method = RequestMethod.GET)
	public String getResourceByID(@PathVariable int resourceid,
			Map<String, Object> model) {
		return "download";
	}

	@RequestMapping(value = "/download/{resourceid}", method = RequestMethod.GET)
	@ResponseBody
	public Map getDownloadURL(@PathVariable int resourceid, HttpSession session) {
		// 判断是否登录
		Map msgMap = new HashMap();
		if (session.getAttribute("user_name") == null) {
			msgMap.put("isLogined", false);
			return msgMap;
		} else {
			msgMap.put("isLogined", true);
			msgMap.put("rUrl", resourceid);
			return msgMap;
		}
	}

	@RequestMapping(value = "/upload", method = RequestMethod.GET)
	public String initUpload() {
		// 初始化类型，积分等选项
		return "upload";
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	@ResponseBody
	public void createResource(HttpServletRequest request,
			@RequestParam(value = "resource_file") MultipartFile... files)
			throws IllegalStateException, IOException {
		for (MultipartFile f : files) {
			// 按月分配文件夹存储用户上传资源
			Calendar cal = Calendar.getInstance();
			int year = cal.get(Calendar.YEAR);
			int month = cal.get(Calendar.MONTH);
			String resourcePath = request.getSession().getServletContext()
					.getRealPath("/")
					+ File.separator
					+ "resource"
					+ File.separator
					+ year + File.separator + month + File.separator;

			if (f.getSize() > 0) {
				File dr = new File(resourcePath);
				File targetFile = new File(resourcePath
						+ new String(f.getOriginalFilename().getBytes(
								"ISO-8859-1"), "UTF-8"));
				if (!dr.exists()) {
					dr.mkdirs();
				}
				f.transferTo(targetFile);// 写入目标文件
			}
		}
	}

	@RequestMapping(value = "/upfile/progress", method = RequestMethod.GET)
	@ResponseBody
	public Progress initCreateInfo(Map<String, Object> model) {
		Progress status = (Progress) model.get("status");
		return status;
	}
}