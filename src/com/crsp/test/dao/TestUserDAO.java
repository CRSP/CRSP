/**
 * 
 */
package com.crsp.test.dao;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.UserDAO;
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
	
	@Test
	public void testGet(){
		User user = userDAO.findById(1);
		System.out.println(user.toString());
	}
}
