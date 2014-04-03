package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.User;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

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
		List<?> list = findByProperty(null, "user_id", id);
		if (list.size() != 0) {
			user = (User) list.get(0);
			return user;
		}
		return null;
	}

	// 分页查询用户信息
	@Override
	public List<?> findByPage(Page page) {
		// 初始化分页信息
		PageUtil.initPage(page, queryCount(null));
		Query query = getSession().createQuery("from User");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询用户的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from User as model where model." + propertyName
				+ "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from User as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询用户的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from User as model where model." + propertyName
				+ " like ?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value + "%");
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from User as model where model."
							+ propertyName + " like " + value + "%"));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 分页查询该用户上传的资源信息
	@Override
	public List<?> findResources(Page page, int user_id) {
		// 初始化分页信息
		PageUtil.initPage(page,
				queryCount("select count(*) from Resource r where r.user_id="
						+ user_id));
		Query query = getSession().createQuery(
				"from Resource r where user_id=?");
		query.setParameter(0, user_id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 分页查找该用户的资源记录
	@Override
	public List<?> findRecords(Page page, int user_id) {
		// 初始化分页信息
		PageUtil.initPage(page,
				queryCount("select count(*) from Record r where r.user_id="
						+ user_id));
		Query query = getSession().createQuery(
				"from Record r where r.user_id=?");
		query.setParameter(0, user_id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 查询总记录数
	@Override
	public int queryCount(String hql) {
		if (hql == null) {
			hql = "select count(*) from User";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}

	// 查询用户的名称
	@Override
	public String findUserName(int id) {
		Query query = getSession().createQuery(
				"select u.user_name from User u where u.id=?");
		query.setParameter(0, id);
		List<?> list = query.list();
		if (list != null) {
			return (String) list.get(0);
		}
		return null;
	}
	
	// 查询某用户拥有的资源数量
	@Override
	public int findResourceCount(int id) {
		Query query = getSession().createQuery("select count(*) from Resource r where r.user_id=?");
		query.setParameter(0, id);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}
}
