package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.crsp.entity.Department;

/*院系表的DAO实现类*/
@Repository
public class DepartmentDAOImpl implements DepartmentDAO {
	@Autowired
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;

	// 添加院系信息
	@Override
	public void save(Department department) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.persist(department);
		tr.commit();
	}

	// 更新院系信息
	@Override
	public void update(Department department) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.update(department);
		tr.commit();
	}

	// 删除院系信息
	@Override
	public void delete(Department department) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		session.delete(department);
		tr.commit();
	}

	// 根据Id查询院系信息
	@Override
	public Department findById(int id) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		Department sh = (Department) session.load(Department.class, id);
		sh.getName();// 测试用,可以删除
		tr.commit();
		return sh;
	}

	// 根据某个属性查询院系的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
		Session session = sessionFactory.getCurrentSession();
		Transaction tr = session.beginTransaction();
		String queryString = "from Department as model where model." + propertyName
				+ " like ?";
		Query queryObject = session.createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
		tr.commit();
		return list;
	}

	// 查找相应学校的院系信息
	@Override
	public List<?> findBySchool(int id) {
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
