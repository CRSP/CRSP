package com.crsp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crsp.dto.UserDTO;
import com.crsp.entity.User;
import com.crsp.service.SchoolServiceI;
import com.crsp.service.UserServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.RegValidator;

@Controller
@RequestMapping(value = "/user")
public class UserController {
	// userService
	@Autowired
	private UserServiceI userService;

	@Resource
	private RegValidator regValidator;

	public void setUserService(UserServiceI userService) {
		this.userService = userService;
	}

	public UserServiceI getUserService() {
		return userService;
	}

	// schoolService
	@Autowired
	private SchoolServiceI schoolService;

	public SchoolServiceI getSchoolService() {
		return schoolService;
	}

	public void setSchoolService(SchoolServiceI schoolService) {
		this.schoolService = schoolService;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	@ResponseBody
	public Map userLogin(HttpSession session, HttpServletRequest request) {

		Map msgMap = new HashMap();

		String userId = request.getParameter("user_id").toString();
		String userPwd = request.getParameter("user_pwd").toString();

		UserDTO u = userService.login(userId, userPwd);

		if (u.isErr()) {
			msgMap.put("err", u.getErrMsg());
			return msgMap;
		}

		session.setAttribute("ID", u.getId());
		session.setAttribute("user_name", u.getUser_name());

		msgMap.put("ok", "登陆成功");
		return msgMap;
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String userLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/index";
	}

	@RequestMapping(value = "/register/init", method = RequestMethod.GET)
	public String initUserForm(Model model, HttpSession session) {
		if (session.getAttribute("user_name") != null) {
			return "redirect:/index";
		}
		model.addAttribute(new User());
		return "register";
	}

	// *
	@RequestMapping(value = "/register/save", method = RequestMethod.POST)
	public String addUserFromForm(@ModelAttribute("user") @Valid User user,
			BindingResult bindingResult, Map<String, Object> model,
			HttpSession session, HttpServletRequest request) {
		// 基本信息验证
		this.regValidator.validate(user, bindingResult);

		// 验证两次密码是否相同
		String rpwd = request.getParameter("rpwd").toString();
		if (!user.getUser_pwd().equals(rpwd)) {
			model.put("message", "两次密码不相同");
			return "register";
		}

		if (bindingResult.hasErrors()) {
			return "register";
		}

		// *验证学校，省份，院系的关系是否正确

		// 保存用户
		user.setPoints(20);// 初始点数20
		user.setAvatar("");// 头像初始为空
		UserDTO u = userService.register(user);
		if (u == null) {
			model.put("message", "用户已存在");
			System.out.println("用户已存在");
			return "register";
		}

		// 把用户添加到session
		session.setAttribute("ID", u.getId());
		session.setAttribute("user_name", u.getUser_name());

		return "redirect:/index";
	}

	// 按省份找学校
	@RequestMapping(value = "/register/school/{provinceid}", method = RequestMethod.GET)
	@ResponseBody
	public List getSchoolsByProvinceId(@PathVariable int provinceid) {
		Page page = new Page();
		page.setPageSize(999);
		return schoolService.getSchoolsByProvinceId(provinceid, page)
				.getPageList();
	}

	// 按学校找院系
	@RequestMapping(value = "/register/department/{schoolid}", method = RequestMethod.GET)
	@ResponseBody
	public List getDepartmentsBySchoolId(@PathVariable int schoolid) {
		return schoolService.getProfile(schoolid).getDepartment_list();
	}

	@RequestMapping(value = "/islogined", method = RequestMethod.POST)
	@ResponseBody
	public Map isLogined(HttpSession session) {
		Map msgMap = new HashMap();
		try {
			String id = session.getAttribute("ID").toString();
			if (id == null) {
				msgMap.put("islogined", false);
				return msgMap;
			}
		} catch (Exception e) {
			msgMap.put("islogined", false);
			return msgMap;
		}
		msgMap.put("islogined", true);
		return msgMap;
	}
}
