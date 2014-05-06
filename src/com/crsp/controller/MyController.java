package com.crsp.controller;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.crsp.dto.UserDTO;
import com.crsp.entity.User;
import com.crsp.service.UserServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;
import com.crsp.utils.RegValidator;

@Controller
@RequestMapping(value="/my")
public class MyController {
	
	@Autowired
	private UserServiceI userService;
	
	public UserServiceI getUserService() {
		return userService;
	}

	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}
	
	@Resource
	private RegValidator regValidator;

	@RequestMapping(value={"/", "/upload"}, method=RequestMethod.GET)
	public String getMyUpload(HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		Page page = new Page();
		Pages uploadList = userService.getMyUpload(userId, page);
		page = uploadList.getPage();
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("uploads", uploadList.getPageList());
		model.put("page", page);
		model.put("profile", userDTO);
		return "my_upload";
	}
	
	@RequestMapping(value="/upload/{p}", method=RequestMethod.GET)
	public String getMyUpload(@PathVariable int p, HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		Page page = new Page();
		page.setPageNow(p);
		Pages uploadList = userService.getMyUpload(userId, page);
		page = uploadList.getPage();
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("uploads", uploadList.getPageList());
		model.put("page", page);
		model.put("profile", userDTO);
		return "my_upload";
	}
	
	@RequestMapping(value="/download", method=RequestMethod.GET)
	public String getMyDownload(HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		Page page = new Page();
		page.setPageNow(1);
		Pages downloadList = userService.getMyDownload(userId, page);
		page = downloadList.getPage();
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("downloads", downloadList.getPageList());
		model.put("page", page);
		model.put("profile", userDTO);
		return "my_download";
	}
	
	@RequestMapping(value="/download/{p}", method=RequestMethod.GET)
	public String getMyDownload(@PathVariable int p ,HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		Page page = new Page();
		page.setPageNow(p);
		Pages downloadList = userService.getMyDownload(userId, page);
		page = downloadList.getPage();
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("downloads", downloadList.getPageList());
		model.put("page", page);
		model.put("profile", userDTO);
		return "my_download";
	}
	
	@RequestMapping(value="/record", method=RequestMethod.GET)
	public String getMyRecord(HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		Page page = new Page();
		page.setPageNow(0);
		Pages recordList = userService.getMyRecord(userId, page);
		page = recordList.getPage();
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("records", recordList.getPageList());
		model.put("page", page);
		model.put("profile", userDTO);
		return "my_record";
	}
	
	@RequestMapping(value="/record/{p}", method=RequestMethod.GET)
	public String getMyRecord(@PathVariable int p, HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		Page page = new Page();
		page.setPageNow(p);
		Pages recordList = userService.getMyRecord(userId, page);
		page = recordList.getPage();
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("records", recordList.getPageList());
		model.put("page", page);
		model.put("profile", userDTO);
		return "my_record";
	}
	
	@RequestMapping(value="/profile/init", method=RequestMethod.GET)
	public String InitProfile(HttpSession session, Map<String, Object> model) {
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("profile", userDTO);
		model.put("user", new User());
		return "updateprofile";
	}
	
	@RequestMapping(value="/profile/update", method=RequestMethod.POST)
	public String updateProfile(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, HttpSession session, Map<String, Object> model) {
		this.regValidator.validateForUpdate(user, bindingResult);
		int userId = Integer.parseInt(session.getAttribute("ID").toString());
		UserDTO userDTO = userService.getUserProfile(userId);
		model.put("profile", userDTO);
		if(bindingResult.hasErrors()) {
			return "updateprofile";
		}
		session.setAttribute("user_name", user.getUser_name());
		
		return "redirect:/my/upload";
	}
}
