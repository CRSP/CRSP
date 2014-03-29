package com.crsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crsp.dao.UserDAO;
import com.crsp.entity.User;

@Service
public class UserManageService {
	@Autowired
	private UserDAO userDAO;

	
	//查找所有用户
	public List<User> findAllUser(){
			
		return (List<User>)userDAO.findAll();
		
	}
	//根据记录ID查找用户
	public User findUserByID(int id){

		return userDAO.findById(id);						
	}
	
	public boolean limitUser(User user){
		return false;
	}
	
	public boolean frozenUser(User user){
		return false;
	}
	
	
	

}
