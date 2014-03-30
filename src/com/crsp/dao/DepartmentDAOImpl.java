package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.Department;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*院系表的DAO实现类*/
@Repository
public class DepartmentDAOImpl implements DepartmentDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加院系信息
	@Override
	public void save(Department department) {
		getSession().save(department);
	}

	// 更新院系信息
	@Override
	public void update(Department department) {
		getSession().update(department);
	}

	// 删除院系信息
	@Override
	public void delete(Department department) {
		getSession().delete(department);
	}

	// 根据Id查询院系信息
	@Override
	public Department findById(int id) {
		return (Department) getSession().get(Department.class, id);
	}
	
	// 根据院系的名称查询
	@Override
	public Department findByName(String name) {
		List<?> list = findByProperty(null, "name", name);
		if (list.size() != 0) {
			return (Department) list.get(0);
		}
		return null;
	}
	
	// 查询所有的院系
	@Override
	public List<?> findByPage(Page page) {
		PageUtil.initPage(page, queryCount(null));// 初始化分页信息
		Query query = getSession().createQuery("from Department");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询院系的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from Department as model where model."
				+ propertyName + "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Department as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询院系的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from Department as model where model."
				+ propertyName + " like ?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value + "%");
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Department as model where model."
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
			hql = "select count(*) from Department a";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}
}
