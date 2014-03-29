package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

/*管理省份表的DAO实现类*/
@Repository
public class ProvinceDAOImpl implements ProvinceDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	// 根据省份Id查询学校
	@Override
	public List<?> findByProvince(int id) {
		Query query = getSession().createQuery("select sh from School sh where sh.province_id=?");
		query.setParameter(0, id);
		List<?> list = query.list();
		return list;
	}
	
	// 查询所有的省份
	@Override
	public List<?> findAll() {
		Query query = getSession().createQuery("from Province");
		List<?> list = query.list();
		return list;
	}
}
