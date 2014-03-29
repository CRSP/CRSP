package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加用户信息
	@Override
	public void save(User user) {
		getSession().save(user);
	}

	// 更新用户信息
	@Override
	public void update(User user) {
		getSession().update(user);
	}

	// 删除用户信息
	@Override
	public void delete(User user) {
		getSession().delete(user);
	}

	// 根据Id查询用户信息
	@Override
	public User findById(int id) {
<<<<<<< HEAD
		Session session = sessionFactory.getCurrentSession();
		User user = (User) session.load(User.class, id);
		user.getUser_name();// 测试用,可以删除
		return user;
=======
		return (User) getSession().get(User.class, id);
>>>>>>> 000f3b6d18cfce89c6cf2a495a52ab82b60169f7
	}

	// 根据Id查询用户信息
	@Override
	public User findByUserId(String id) {
		User user = null;
		List<?> list = findByProperty("user_id", id);
		if (list.size() != 0) {
			user = (User) list.get(0);
			return user;
		}
		return null;
	}

	// 查询所有用户
	@Override
	public List<?> findAll() {
<<<<<<< HEAD
		Session session = sessionFactory.getCurrentSession();
		Query query = session.createQuery("from User");
		List<?> list = query.list();		
=======
		Query query = getSession().createQuery("from User");
		List<?> list = query.list();
>>>>>>> 000f3b6d18cfce89c6cf2a495a52ab82b60169f7
		return list;
	}

	// 根据某个属性查询用户的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
<<<<<<< HEAD
		Session session = sessionFactory.getCurrentSession();
=======
>>>>>>> 000f3b6d18cfce89c6cf2a495a52ab82b60169f7
		String queryString = "from User as model where model." + propertyName
				+ "=?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value);
		List<?> list = queryObject.list();
		return list;
	}

	// 根据某个属性模糊查询用户的信息
	@Override
	public List<?> findLikeProperty(String propertyName, Object value) {
		String queryString = "from User as model where model." + propertyName
				+ " like ?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
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
