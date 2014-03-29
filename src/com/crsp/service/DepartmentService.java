package com.crsp.service;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.DepartmentDAO;
import com.crsp.entity.Department;


@Service
public class DepartmentService {
	@Autowired
	private DepartmentDAO departmentDAO;
	@Autowired
	private SessionFactory sessionFactory;
	
	//添加院系
	public Department addDepartment(Department department){
		
		Session session=sessionFactory.getCurrentSession();
		Transaction tr=null;
		try{
			tr=session.beginTransaction();
			 departmentDAO.save(department);
			tr.commit();			
		}
		catch (Exception e) {
			department=null;
			System.out.println("插入错误");
			tr.rollback();
		}
		
		return department;						
	}
	
	//更新信息
	public boolean updateInformation(Department department){
		boolean flag=false;
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		try {
			tr = session.beginTransaction();			
			departmentDAO.update(department);
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
	public Department seeInformation(int department_id){
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = null;	
		Department department=null;
		try {
			tr = session.beginTransaction();
			department=departmentDAO.findById(department_id);
			tr.commit();			
		} catch (Exception e) {
			System.out.println("查看错误！");
			e.printStackTrace();
			tr.rollback();
		}							
		return department;
		
	}
	

}
