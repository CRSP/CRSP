package com.crsp.test;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


import com.crsp.dao.ResourceDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.dao.UserDAO;
import com.crsp.entity.Resource;
import com.crsp.entity.School;
import com.crsp.entity.User;
import com.crsp.service.UserService;
import com.crsp.utils.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class UsertTest {
	@Autowired
	private UserDAO userDAO;// 用户表的DAO接口类
	@Autowired 
	private ResourceDAO resourceDAO;
	@Autowired 
	private SchoolDAO schoolDAO;
	//@Autowired
//	private UserService userService;

	@Test
	public void testSave() {
		
/*		User user=userService.UserLogin("1", "123456");
		if(user!=null){
			System.out.println(user.toString());
		}
		else{
			System.out.println("输入有误！");
		}*/
		/*User user = new User();
		user.setId(5);
		user.setUser_id("123");
		user.setSchool_id(1);
		user.setDepartment_id(1);
		user.setEmail("123");
		user.setUser_name("123");
		user.setUser_pwd("123456");*/
		
/*		user = userService.userSignUp(user);
		if(user!=null)
		System.out.println(user.toString());
		else{
			System.out.println("用户存在!");
		}*/
		
/*		boolean flag=userService.updateInformation(user);
		if(flag==true){
			System.out.println("保存成功！");
		}
		else{
			System.out.println("插入错误！");
		}*/
		
	/*	user=userService.seeInformation(user.getUser_id());
		if(user!=null){
			System.out.println(user.toString());
		}
		else{
			System.out.println("查看错误");
		}*/
		/*
		 * User user = new User(); user.setId(69);
		 * user.setUser_name("周五了");
		 */
		// save(user);
		// update(user);
		// delete(user);
		// findById(1);
		// userDAO.findAll();
		// findByProperty("user_name","河");
		Page page = new Page();
		@SuppressWarnings("unchecked")
		/*List<User> users = (List<User>) userDAO.findByPage(page);
		for(User u : users){
			System.out.println(u.toString());
		}*/
		/*List<Resource> resources = (List<Resource>) resourceDAO.findByPage(page);
		for(Resource u : resources){
			u.setUser_name(userDAO.findUserName(u.getUser_id()));
			System.out.println(u.toString());
		}*/
		List<School> ss = (List<School>) schoolDAO.findByPage(page);
		for(School s : ss){
			
			System.out.println(s.toString());
		}
	}
	
	

/*	// 添加用户信息
	public void save(User user) {
		userDAO.save(user);
	}

	// 更新用户信息
	public void update(User user) {
		userDAO.update(user);
	}

	// 删除用户信息
	public void delete(User user) {
		userDAO.delete(user);
	}

	// 根据Id查询用户信息
	public void findById(int id) {
		System.out.println(userDAO.findById(id).toString());
	}

	// 查询所有用户的信息
	public void findAll() {
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) userDAO.findAll();
		for (User u : list) {
			System.out.println(u.toString());
		}
	}

	// 根据某个属性查询用户的信息
	public void findByProperty(String propertyName, Object value) {
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) userDAO
				.findByProperty(propertyName, value);
		for (User u : list) {
			System.out.println(u.toString());
		}
	}

	// 查找相应学校的用户信息
	public void findBySchool(int id) {
		@SuppressWarnings("unchecked")
		List<User> list = (List<User>) userDAO
				.findBySchool(id);
		for (User u : list) {
			System.out.println(u.toString());
		}
	}*/
}
