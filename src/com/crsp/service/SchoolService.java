package com.crsp.service;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.SchoolDAO;
import com.crsp.entity.School;
import com.crsp.entity.User;
import com.crsp.entity.Department;

@Service
public class SchoolService {
	@Autowired
	private SchoolDAO schoolDAO;
	@Autowired
	private SessionFactory sessionFactory;
	
	
	//添加学校
	public School addSchool(School school){
		Session session=sessionFactory.getCurrentSession();
		Transaction tr=null;
		try{
			tr=session.beginTransaction();
			schoolDAO.save(school);
			tr.commit();			
		}
		catch (Exception e) {
			school=null;
			System.out.println("插入错误");
		}
		return school;
	}
	//更新学校信息
	public boolean updateInformation(School school){
		boolean flag=false;
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		try {
			tr = session.beginTransaction();			
			schoolDAO.update(school);
			tr.commit();
			flag=true;
		} catch (Exception e) {
			System.out.println("保存错误！");
			e.printStackTrace();
			tr.rollback();
		}		
		return flag;					
	}
	//查询学校信息
	public School seeInformation(int school_id){
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		School school=null;
		try {
			tr = session.beginTransaction();
			school=schoolDAO.findById(school_id);
			tr.commit();			
		} catch (Exception e) {
			System.out.println("查看错误！");
			e.printStackTrace();
			tr.rollback();
		}							
		return school;

	}
	
    //查找所开设的院系
	public List<Department> findDepartment(int school_id){
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		List<Department> list=null;
		try {
			tr = session.beginTransaction();
			list=(List<Department>)schoolDAO.findDepartments(school_id);
			tr.commit();			
		} catch (Exception e) {
			System.out.println("查看错误！");
			e.printStackTrace();
			tr.rollback();
		}		
		return list;
	}			
}
