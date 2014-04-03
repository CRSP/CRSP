package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.Admin;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*管理员表的DAO实现类*/
@Repository
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
		List<?> list = findByProperty(null, "user_name", name);
		if (list.size() != 0) {
			return (Admin) list.get(0);
		}
		return null;
	}

	// 查询所有的管理员
	@Override
	public List<?> findByPage(Page page) {
		PageUtil.initPage(page, queryCount(null));// 初始化分页信息
		Query query = getSession().createQuery("from Admin");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询管理员的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from Admin as model where model." + propertyName
				+ "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Admin as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询管理员的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from Admin as model where model." + propertyName
				+ " like ?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value + "%");
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Admin as model where model."
							+ propertyName + " like " + value + "%"));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 查询总记录数
	@Override
	public int queryCount(String hql) {
		if (hql == null) {
			hql = "select count(*) from Admin";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}
}
