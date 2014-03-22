package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

/*管理省份表的DAO实现类*/
@Repository
public class ProvinceDAOImpl implements ProvinceDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	// 查询所有的省份
	@Override
	public List<?> findAll() {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from Province");
		List<?> list = query.list();
		tr.commit();
		return list;
	}
}
