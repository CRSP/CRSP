package com.crsp.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.crsp.dao.UserDAO;
import com.crsp.entity.User;

@Service
public class UserService {

	@Autowired
	private UserDAO userDAO;

	
	//用户登陆
	public User userLogin(String id, String password) {
		User user = null;
		user = userDAO.findByUserId(id);
		if (user == null) {
			System.out.println("用户ID不存在");

		} else {
			if (!user.getUser_pwd().equals(password)) {
				System.out.println("密码错误！");
				user = null;
			}
		}
		return user;
	}
	
	//用户注册，
	public User userSignUp(User user) {
	
			if (userDAO.findByUserId(user.getUser_id()) == null) {
				userDAO.save(user);	
			}
			else{
			user=null;
			}
			
		return userDAO.findById(user.getId());
		
	}
	
	//更新信息
	public void updateInformation(User user){
	
	     userDAO.update(user);						
	}
	
	//查看信息
	public User seeInformation(String  user_id){
							
		return userDAO.findByUserId(user_id);	
	}
}
