/**
 * 
 */
package com.crsp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.UserDAO;
import com.crsp.entity.User;

/**
 * @author Administrator
 * 
 */
@Service("userService2")
public class UserServiceImpl2 implements UserService2 {
	@Autowired
	private UserDAO userDAO;
	
	public UserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.UserService2#findUser(int)
	 */
	@Override
	public User find(int id) {
		return userDAO.findById(id);
	}
	
	/* (non-Javadoc)
	 * @see com.crsp.service.UserService2#findUser(java.lang.String)
	 */
	@Override
	public User find(String user_id) {
		return userDAO.findByUserId(user_id);
	}


	/* (non-Javadoc)
	 * @see com.crsp.service.UserService2#addUser(com.crsp.entity.User)
	 */
	@Override
	public void add(User user) {
		User u = userDAO.findByUserId(user.getUser_id());
		if(u != null){
			System.out.println("该用户名账号已经存在");
		}else{
			userDAO.add(user);
			System.out.println("添加成功");
		}
	}
}
