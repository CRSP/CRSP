package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.Resource;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*资源表的DAO实现类*/
@Repository
public class ResourceDAOImpl implements ResourceDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加资源信息
	@Override
	public void save(Resource resource) {
		getSession().save(resource);
	}

	// 更新资源信息
	@Override
	public void update(Resource resource) {
		getSession().update(resource);
	}

	// 删除资源信息
	@Override
	public void delete(Resource resource) {
		getSession().delete(resource);
	}

	// 根据Id查询资源信息
	@Override
	public Resource findById(int id) {
		return (Resource) getSession().get(Resource.class, id);
	}

	// 根据资源名查询
	@Override
	public Resource findByName(String name) {
		List<?> list = findByProperty(null, "name", name);
		if (list.size() != 0) {
			return (Resource) list.get(0);
		}
		return null;
	}

	// 分页查找该资源的记录
	@Override
	public List<?> findRecords(Page page, int resource_id) {
		// 初始化分页信息
		PageUtil.initPage(page,
				queryCount("select count(*) from Record r where r.resource_id="
						+ resource_id));
		Query query = getSession().createQuery(
				"from Record r where r.resource_id=?");
		query.setParameter(0, resource_id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 分页查询资源
	@Override
	public List<?> findByPage(Page page) {
		// 初始化分页信息
		PageUtil.initPage(page, queryCount(null));
		Query query = getSession().createQuery("from Resource");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询资源的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from Resource as model where model."
				+ propertyName + "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Resource as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询资源的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from Resource as model where model."
				+ propertyName + " like ?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value + "%");
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Resource as model where model."
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
			hql = "select count(*) from Resource";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}

	// 查询某资源的下载次数
	@Override
	public int findDownCount(int id) {
		Query query = getSession()
				.createQuery(
						"select count(*) from Record r where r.resource_id=? and type=?");
		query.setParameter(0, id);
		query.setParameter(1, 1);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}

	@Override
	public List<?> findByPage(Page page, int status) {
		// 初始化分页信息
		PageUtil.initPage(page,
				queryCount("select count(*) from Resource r where r.status=" + status));
		Query query = getSession().createQuery(
				"from Resource r where r.status");
		query.setParameter(0, status);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}
}
