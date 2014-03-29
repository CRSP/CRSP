package com.crsp.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.UserDAO;
import com.crsp.entity.User;

@Service
public class UserManageService {
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private SessionFactory sessionFactory;
	
	//查找所有用户
	public List<User> findAllUser(){
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		List<User> list=null;
		try {
			tr = session.beginTransaction();
			list=(List<User>)userDAO.findAll();
			tr.commit();			
		} catch (Exception e) {
			System.out.println("查看错误！");
			e.printStackTrace();
			tr.rollback();
		}		
		return list;	
		
	}
	//根据记录ID查找用户
	public User findUserByID(int id){
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		User user=null;
		try {
			tr = session.beginTransaction();
			user=userDAO.findById(id);
			tr.commit();			
		} catch (Exception e) {
			System.out.println("查看错误！");
			e.printStackTrace();
			tr.rollback();
		}							
		return user;
		
	}
	
/*	public boolean updateUserPoint(int point){
		
		
		
		return false;
	}*/
	
	public boolean limitUser(User user){
		return false;
	}
	
	public boolean frozenUser(User user){
		return false;
	}
	
	
	

}
