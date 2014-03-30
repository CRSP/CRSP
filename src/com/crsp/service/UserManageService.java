package com.crsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.crsp.dao.UserDAO;
import com.crsp.entity.User;
import com.crsp.utils.Page;

@Service
public class UserManageService {
	@Autowired
	private UserDAO userDAO;

	
	//查找所有用户
	@SuppressWarnings("unchecked")
	public List<User> findAllUser(Page page){
		return (List<User>)userDAO.findAll(page);
		
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
