/**
 * 
 */
package com.crsp.test;

import static org.easymock.EasyMock.expectLastCall;
import static org.easymock.EasyMock.replay;
import static org.easymock.EasyMock.reset;
import static org.easymock.EasyMock.verify;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.UserDAO;
import com.crsp.entity.User;
import com.crsp.service.UserService2;
import static org.easymock.EasyMock.*;
/**
 * @author Administrator
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestService {
	@Autowired
	private UserService2 userService2;
	@Autowired
	private UserDAO userDAO;
	
	public UserService2 getUserService2() {
		return userService2;
	}

	public void setUserService2(UserService2 userService2) {
		this.userService2 = userService2;
	}

	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	private User user = new User(1,1,1,"11080718","123456","周杰伦","1.jpg",1000,"qwerty@163.com");
	
	@Test
	public void testAddHas() {
		reset(userDAO);
		expect(userDAO.findByUserId("11080718")).andReturn(user);
		replay(userDAO);
		userService2.add(user);
		verify(userDAO);
	}
	
	@Test
	public void testAddNoHas() {
		reset(userDAO);
		expect(userDAO.findByUserId("11080718")).andReturn(null);
		expect(userDAO.add(user)).andReturn(user);
		replay(userDAO);
		userService2.add(user);
		verify(userDAO);
		//expectLastCall();
	}
}
