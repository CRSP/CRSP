package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*管理省份表的DAO实现类*/
@Repository
public class ProvinceDAOImpl implements ProvinceDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 根据省份Id分页查询学校
	@Override
	public List<?> findSchools(Page page, int id) {
		// 初始化分页信息
		Query q = getSession().createQuery(
				"select count(*) from School sh where sh.province_id=?");
		q.setParameter(0, id);
		List<?> lt = q.list();
		PageUtil.initPage(page, ((Long) lt.get(0)).intValue());
		// 分页查询
		Query query = getSession().createQuery(
				"select sh from School sh where sh.province_id=?");
		query.setParameter(0, id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据省份Id查询学校
	@Override
	public List<?> findSchools(int id) {
		Query query = getSession().createQuery(
				"select sh from School sh where sh.province_id=?");
		query.setParameter(0, id);
		List<?> list = query.list();
		return list;
	}

	// 查询所有的省份
	@Override
	public List<?> findAll() {
		Query query = getSession().createQuery("from Province");
		List<?> list = query.list();
		return list;
	}
}
