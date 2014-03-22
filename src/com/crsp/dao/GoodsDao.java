package com.crsp.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.Goods;

@Repository
public class GoodsDao {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	
	public void save() {
		Session session = this.getSessionFactory().getCurrentSession();
		Transaction tr = session.beginTransaction();
		Goods goods = new Goods();
		goods.setName("spring touch");
		goods.setType("book");
		goods.setPrice(40.5);
		session.save(goods);
		tr.commit();
	}
}
