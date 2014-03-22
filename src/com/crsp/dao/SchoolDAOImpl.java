package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
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

	// 添加学校信息
	@Override
	public void save(School school) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.persist(school);
		tr.commit();
	}

	// 更新学校信息
	@Override
	public void update(School school) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.update(school);
		tr.commit();
	}

	// 删除学校信息
	@Override
	public void delete(School school) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.delete(school);
		tr.commit();
	}

	// 根据Id查询学校信息
	@Override
	public School findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		School sh = (School) session.load(School.class, id);
		sh.getName();// 测试用,可以删除
		tr.commit();
		return sh;
	}

	// 根据某个属性查询学校的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		String queryString = "from School as model where model." + propertyName
				+ " like ?";
		Query queryObject = session.createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
		tr.commit();
		return list;
	}

	// 查找相应省份的学校信息
	@Override
	public List<?> findByProvince(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Query queryObject = session
				.createQuery("from School sh where sh.province_id=?");
		queryObject.setParameter(0, id);
		List<?> list = queryObject.list();
		tr.commit();
		return list;
	}

	// 查询学校开设的院系
	@Override
	public List<?> findDepartments(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Query queryObject = session
				.createQuery("select dp from School sh,Department dp,School_Department sh_dp where sh.id=? and sh.id=sh_dp.school_id and sh_dp.department_id=dp.id");
		queryObject.setParameter(0, id);
		List<?> list = queryObject.list();
		tr.commit();
		return list;
	}
}
