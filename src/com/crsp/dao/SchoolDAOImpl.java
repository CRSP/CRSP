package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.School;
import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/*学校表的DAO实现类*/
@Repository
public class SchoolDAOImpl implements SchoolDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// 添加学校信息
	@Override
	public void save(School school) {
		getSession().save(school);
	}

	// 更新学校信息
	@Override
	public void update(School school) {
		getSession().update(school);
	}

	// 删除学校信息
	@Override
	public void delete(School school) {
		getSession().delete(school);
	}

	// 根据Id查询学校信息
	@Override
	public School findById(int id) {
		return (School) getSession().get(School.class, id);
	}

	// 根据名称查询学校信息
	@Override
	public School findByName(String name) {
		List<?> list = findByProperty(null, "name", name);
		if (list.size() != 0) {
			return (School) list.get(0);
		}
		return null;
	}

	// 分页查询学校开设的院系
	@Override
	public List<?> findDepartments(Page page, int school_id) {
		// 初始化分页信息
		PageUtil.initPage(
				page,
				queryCount("select dp from School sh,Department dp,School_Department sh_dp where sh.id="
						+ school_id
						+ " and sh.id=sh_dp.school_id and sh_dp.department_id=dp.id"));
		Query query = getSession()
				.createQuery(
						"select dp from School sh,Department dp,School_Department sh_dp where sh.id=? and sh.id=sh_dp.school_id and sh_dp.department_id=dp.id");
		query.setParameter(0, school_id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 查询学校开设的所有院系
	@Override
	public List<?> findDepartments(int school_id) {
		Query query = getSession()
				.createQuery(
						"select dp from School sh,Department dp,School_Department sh_dp where sh.id=? and sh.id=sh_dp.school_id and sh_dp.department_id=dp.id");
		query.setParameter(0, school_id);
		List<?> list = query.list();
		return list;
	}

	//分页查询该学校的用户信息
	@Override
	public List<?> findUsers(Page page, int school_id) {
		// 初始化分页信息
		PageUtil.initPage(page,
				queryCount("select count(*) from User u where u.school_id="
						+ school_id));
		Query query = getSession()
				.createQuery("from User u where u.school_id=");
		query.setParameter(0, school_id);
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 分页查询学校
	@Override
	public List<?> findByPage(Page page) {
		// 初始化分页信息
		PageUtil.initPage(page, queryCount(null));
		Query query = getSession().createQuery("from School");
		query.setFirstResult(page.getBeginIndex());// 查询的起点
		query.setMaxResults(page.getPageSize()); // 查询记录数
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询学校的信息
	@Override
	public List<?> findByProperty(Page page, String propertyName, Object value) {
		String queryString = "from School as model where model." + propertyName
				+ "=?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value);
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from School as model where model."
							+ propertyName + "=" + value));
			query.setFirstResult(page.getBeginIndex());// 查询的起点
			query.setMaxResults(page.getPageSize()); // 查询记录数
		}
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性模糊查询学校的信息
	@Override
	public List<?> findLikeProperty(Page page, String propertyName, Object value) {
		String queryString = "from School as model where model." + propertyName
				+ " like ?";
		Query query = getSession().createQuery(queryString);
		query.setParameter(0, value + "%");
		if (page != null) {
			// 初始化分页信息
			PageUtil.initPage(
					page,
					queryCount("select count(*) from School as model where model."
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
			hql = "select count(*) from School";
		}
		Query query = getSession().createQuery(hql);
		List<?> list = query.list();
		return ((Long) list.get(0)).intValue();
	}
}
