/**
 * 
 */
package com.crsp.test.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.UserDAO;
import com.crsp.entity.Department;
import com.crsp.entity.School;
import com.crsp.entity.User;

/**
 * 用户DAO测试类
 * 
 * @author Administrator
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestUserDAO {
	@Autowired
	private UserDAO userDAO;// 用户表的DAO接口类

	public void queryAllUsers() {
		List<User> users = userDAO.queryAllUsers();
		for (User u : users) {
			System.out.println(u.toString());
		}
	}

	@Test
	public void testGet() {
		System.out.println(userDAO.findById(1).toString());
	}

	@Test
	public void testAdd() {
		User user = new User();
		user.setUser_id("22222222222");
		user.setUser_name("321");
		user.setUser_pwd("123213213");
		user.setEmail("123333");
		School school = new School();
		school.setId(1);
		user.setSchool(school);
		Department department = new Department();
		department.setId(1);
		user.setDepartment(department);
		userDAO.add(user);
	}

	@Test
	public void testDelete() {
		userDAO.delete(11);
	}

	@Test
	public void testUpdate() {
		User user = new User();
		user.setId(12);
		user.setUser_id("321");
		user.setUser_name("321");
		user.setUser_pwd("123213213");
		user.setEmail("123333");
		School school = new School();
		school.setId(2);
		user.setSchool(school);
		Department department = new Department();
		department.setId(2);
		user.setDepartment(department);
		userDAO.update(user);
	}
	
	@Test
	public void testGetByUserId() {
		User user = userDAO.findByUserId("11080701");
		System.out.println(user.toString());
	}
}
