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
import com.crsp.entity.Record;
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
	@Autowired
	private UserService userService;


	@Test
	public void testSave() {
		

		Page page = new Page();
/*		@SuppressWarnings("unchecked")

		List<School> ss = (List<School>) schoolDAO.findByPage(page);
		for(School s : ss){
			
			System.out.println(s.toString());
		}*/
		
		List<Record> list=userService.myDownload(page, 1, 0);
		for(Record r:list){
			System.out.println(r.toString());
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
