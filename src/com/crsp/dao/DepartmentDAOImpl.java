package com.crsp.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
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

	// 查询所有的院系
	@Override
	public List<?> findAll() {
		Query query = getSession().createQuery("from Department");
		List<?> list = query.list();
		return list;
	}

	// 根据某个属性查询院系的信息
	@Override
	public List<?> findByProperty(String propertyName, Object value) {
		String queryString = "from Department as model where model."
				+ propertyName + "=?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value);
		List<?> list = queryObject.list();
		return list;
	}

	// 根据某个属性模糊查询院系的信息
	@Override
	public List<?> findLikeProperty(String propertyName, Object value) {
		String queryString = "from Department as model where model."
				+ propertyName + " like ?";
		Query queryObject = getSession().createQuery(queryString);
		queryObject.setParameter(0, value + "%");
		List<?> list = queryObject.list();
		return list;
	}

	// 查找相应学校的院系信息
	@Override
	public List<?> findBySchool(int id) {
		Query queryObject = getSession()
				.createQuery(
						"select dp from School sh,Department dp,School_Department sh_dp where sh.id=? and sh.id=sh_dp.school_id and sh_dp.department_id=dp.id");
		queryObject.setParameter(0, id);
		List<?> list = queryObject.list();
		return list;
	}
}
