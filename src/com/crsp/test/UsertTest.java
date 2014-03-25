package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.UserDAO;
import com.crsp.entity.User;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class UsertTest {
	@Autowired
	private UserDAO userDAO;// 用户表的DAO接口类

	@Test
	public void testSave() {
		/*
		 * User user = new User(); user.setId(69);
		 * user.setUser_name("周五了");
		 */
		// save(user);
		// update(user);
		// delete(user);
		// findById(1);
		// findAll();
		// findByProperty("user_name","河");
	}

	// 添加用户信息
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
	}
}
