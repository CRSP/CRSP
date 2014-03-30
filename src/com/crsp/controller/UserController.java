package com.crsp.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.entity.User;
import com.crsp.service.UserService;
import com.crsp.utils.JsonUtil;
import com.crsp.utils.RegValidator;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	//userService
	@Autowired
	private UserService userService;
	
    @Resource  
    private RegValidator regValidator;  

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

	public UserService getUserService() {
		return userService;
	}
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	@ResponseBody
	public Map userLogin(HttpSession session, HttpServletRequest request) {
		
		Map msgMap = new HashMap();
		
		if(request.getParameter("user_id") == null || request.getParameter("user_pwd") == null) {
			msgMap.put("err", "账号或密码不能为空");
			return msgMap;
		}
		
		String userId = request.getParameter("user_id").toString();
		String userPwd = request.getParameter("user_pwd").toString();
		
		User u = userService.userLogin(userId, userPwd);
		
		if(u == null) {
			msgMap.put("err", "账号或密码出错");
			return msgMap;
		}
		
		session.setAttribute("ID", u.getId());
		session.setAttribute("user_name", u.getUser_name());
		
		msgMap.put("ok", "登陆成功");
		return msgMap;
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.GET)
	public String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}

	@RequestMapping(value="/register/init", method=RequestMethod.GET)
	public String initUserForm(Model model, HttpSession session) {
		if(session.getAttribute("user_name") != null) {
			return "redirect:/index";
		}
		model.addAttribute(new User());
		return "register";
	}
	
	@RequestMapping(value="/register/save", method=RequestMethod.POST)
	public String addUserFromForm(@ModelAttribute("user") @Valid User user, BindingResult bindingResult, Map<String, Object> model, HttpSession session, HttpServletRequest request) {
		//基本信息验证
		this.regValidator.validate(user, bindingResult);
		
		//验证两次密码是否相同
		String rpwd = request.getParameter("rpwd").toString();
		if(!user.getUser_pwd().equals(rpwd)) {
			model.put("message", "两次密码不相同");
			return "register";
		}
		
		if(bindingResult.hasErrors()) {
			return "register";
		}
		
		//*验证学校，省份，院系的关系是否正确
		
		//保存用户
		user.setPoints(20);//初始点数20
		user.setAvatar("default.jsp");
		User u = userService.userSignUp(user);
		if(u == null) {
			model.put("message", "用户已存在");
			System.out.println("用户已存在");
			return "register";
		}
		
		//把用户添加到session
		session.setAttribute("ID", u.getId());
		session.setAttribute("user_name", u.getUser_name());
		
		return "redirect:/index";
	}
}
