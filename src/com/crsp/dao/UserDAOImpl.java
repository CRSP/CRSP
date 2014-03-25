package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.User;

/*用户管理的DAO实现类*/
@Repository
public class UserDAOImpl implements UserDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	// 添加用户信息
	@Override
	public void save(User user) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.persist(user);
		tr.commit();
	}

	// 更新用户信息
	@Override
	public void update(User user) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.update(user);
		tr.commit();
	}

	// 删除用户信息
	@Override
	public void delete(User user) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.delete(user);
		tr.commit();
	}

	// 根据Id查询用户信息
	@Override
	public User findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		User user = (User) session.load(User.class, id);
		user.getUser_name();// 测试用,可以删除
		tr.commit();
		return user;
	}

	// 查询所有用户
	@Override
	public List<?> findAll() {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Query query = session.createQuery("from User");
		List<?> list = query.list();
		tr.commit();
		return list;
	}

	// 根据某个属性查询用户的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		String queryString = "from User as model where model." + propertyName
				+ "=?";
		Query queryObject = session.createQuery(queryString);
		queryObject.setParameter(0, value);
		List<?> list = queryObject.list();
		tr.commit();
		return list;
	}

	// 根据某个属性模糊查询用户的信息
	@Override
	public List<?> findLikeProperty(String propertyName, Object value) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		String queryString = "from User as model where model." + propertyName
				+ " like ?";
		Query queryObject = session.createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
		tr.commit();
		return list;
	}

	// 根据学校查询用户
	@Override
	public List<?> findBySchool(int school_id) {
		return findByProperty("school_id", school_id);
	}

	// 根据院系查询用户
	@Override
	public List<?> findByDepartment(int department_id) {
		return findByProperty("department_id", department_id);
	}
}
