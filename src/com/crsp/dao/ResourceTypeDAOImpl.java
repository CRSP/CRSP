package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.crsp.entity.Resource_Type;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*资源类型表的DAO实现类*/
public class ResourceTypeDAOImpl implements ResourceTypeDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加资源类型信息
	@Override
	public void save(Resource_Type resource_type) {
		getSession().save(resource_type);
	}

	// 更新资源类型信息
	@Override
	public void update(Resource_Type resource_type) {
		getSession().update(resource_type);
	}

	// 删除资源类型信息
	@Override
	public void delete(Resource_Type resource_type) {
		getSession().delete(resource_type);
	}

	// 根据Id查询资源类型信息
	@Override
	public Resource_Type findById(int id) {
		return (Resource_Type) getSession().get(Resource_Type.class, id);
	}

	// 根据资源类型名查询
	@Override
	public Resource_Type findByName(String name) {
		List<?> list = findByProperty(null, "name", name);
		if (list.size() != 0) {
			return (Resource_Type) list.get(0);
		}
		return null;
	}

	// 分页查询所有的资源类型
	@Override
	public List<?> findByPage(Page page) {
		// 初始化分页信息
		PageUtil.initPage(page, queryCount(null));
		Query query = getSession().createQuery("from Resource_Type");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 查询所有的资源类型
	@Override
	public List<?> findAll() {
		Query query = getSession().createQuery("from Resource_Type");
		List<?> list = query.list();
		return list;
	}

	// 查找某个类型的资源
	@Override
	public List<?> findResources(Page page, int type_id) {
		// 初始化分页信息
		PageUtil.initPage(page,
				queryCount("select count(*) from Resource r where r.type_id="
						+ type_id));
		Query query = getSession().createQuery(
				"from Resource r where r.type_id=?");
		query.setParameter(0, type_id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询资源类型的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from Resource_Type as model where model."
				+ propertyName + "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Resource_Type as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询资源类型的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from Resource_Type as model where model."
				+ propertyName + "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Resource_Type as model where model."
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
			hql = "select count(*) from Resource_Type";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}
}
