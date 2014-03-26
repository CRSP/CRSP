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
	@Autowired
	private SessionFactory sessionFactory;
	
	//用户登陆
	public User userLogin(String id, String password) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
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
		tr.commit();
		return user;
	}
	
	//用户注册，
	public User userSignUp(User user) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;		
		try {
			tr = session.beginTransaction();
			if (userDAO.findByUserId(user.getUser_id()) == null) {
				userDAO.save(user);	
			}
			else{
			user=null;
			}
			tr.commit();
		} catch (Exception e) {
			e.printStackTrace();
			tr.rollback();
		}	
		
		return user;  
		
		/*		tr = session.beginTransaction();
		User user1=null;
		if (userDAO.findByUserId(user.getUser_id()) == null) {
			userDAO.save(user);
			user1=userDAO.findByUserId(user.getUser_id());
			if(user1==null){
				System.out.println("数据插入错误！");
			}
			
		}
		else{
			System.out.println("用户存在！");
		}
		tr.commit();
		return user1;*/
	}
	
	//更新信息
	public boolean updateInformation(User user){
		boolean flag=false;
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		try {
			tr = session.beginTransaction();
			userDAO.update(user);						
			tr.commit();
			flag=true;
		} catch (Exception e) {
			System.out.println("保存错误！");
			e.printStackTrace();
			tr.rollback();
		}			
		return flag;
	}
	
	//查看信息
	public User seeInformation(String  user_id){
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		User user=null;
		try {
			tr = session.beginTransaction();
			user=userDAO.findByUserId(user_id);						
			tr.commit();
			
		} catch (Exception e) {
			System.out.println("查看错误！");
			e.printStackTrace();
			tr.rollback();
		}							
		return user;
	}
}
