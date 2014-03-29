package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.School;

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

	// 查询所有的学校
	@Override
	public List<?> findAll() {
		Query query = getSession().createQuery("from School");
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询学校的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
		String queryString = "from School as model where model." + propertyName
				+ "=?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value);
		List<?> list = queryObject.list();
		return list;
	}

	// 根据某个属性模糊查询学校的信息
	@Override
	public List<?> findLikeProperty(String propertyName, Object value) {
		String queryString = "from School as model where model." + propertyName
				+ " like ?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
		return list;
	}

	// 查找相应省份的学校信息
	@Override
	public List<?> findByProvince(int id) {
		return findByProperty("province_id", id);
	}

	// 查询学校开设的院系
	@Override
	public List<?> findDepartments(int id) {
		Query queryObject = getSession()
				.createQuery(
						"select dp from School sh,Department dp,School_Department sh_dp where sh.id=? and sh.id=sh_dp.school_id and sh_dp.department_id=dp.id");
		queryObject.setParameter(0, id);
		List<?> list = queryObject.list();
		return list;
	}
}
