package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.crsp.entity.Admin;

/*管理员表的DAO实现类*/
public class AdminDAOImpl implements AdminDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加管理员信息
	@Override
	public void save(Admin admin) {
		getSession().save(admin);
	}

	// 更新管理员信息
	@Override
	public void update(Admin admin) {
		getSession().update(admin);
	}

	// 删除管理员信息
	@Override
	public void delete(Admin admin) {
		getSession().delete(admin);
	}

	// 根据Id查询管理员信息
	@Override
	public Admin findById(int id) {
		return (Admin) getSession().get(Admin.class, id);
	}

	// 根据管理员的用户名查询
	@Override
	public Admin findByName(String name) {
		List<?> list = findByProperty("user_name", name);
		if (list.size() != 0) {
			return (Admin) findByProperty("user_name", name).get(0);
		}
		return null;
	}

	// 查询所有的管理员
	@Override
	public List<?> findAll() {
		Query query = getSession().createQuery("from Admin");
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询管理员的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
		String queryString = "from Admin as model where model." + propertyName
				+ "=?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value);
		List<?> list = queryObject.list();
		return list;
	}

	// 根据某个属性模糊查询管理员的信息
	@Override
	public List<?> findLikeProperty(String propertyName, Object value) {
		String queryString = "from Department as model where model."
				+ propertyName + " like ?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
		return list;
	}
}
