package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

import com.crsp.entity.Record;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*资源记录表的DAO实现类*/
public class RecordDAOImpl implements RecordDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加资源记录信息
	@Override
	public void save(Record record) {
		getSession().save(record);
	}

	// 更新资源记录信息
	@Override
	public void update(Record record) {
		getSession().update(record);
	}

	// 删除资源记录信息
	@Override
	public void delete(Record record) {
		getSession().delete(record);
	}

	// 根据Id查询资源记录信息
	@Override
	public Record findById(int id) {
		return (Record) getSession().get(Record.class, id);
	}

	// 分页查询资源记录
	@Override
	public List<?> findByPage(Page page) {
		// 初始化分页信息
		PageUtil.initPage(page, queryCount(null));
		Query query = getSession().createQuery("from Record");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询资源记录的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from Record as model where model."
				+ propertyName + "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Record as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询资源记录的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from Record as model where model."
				+ propertyName + " like ?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value + "%");
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from Record as model where model."
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
			hql = "select count(*) from Record";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}
}
