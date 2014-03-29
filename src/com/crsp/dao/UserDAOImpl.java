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
		return (User) getSession().get(User.class, id);
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
		Query query = getSession().createQuery("from User");
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询用户的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
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
