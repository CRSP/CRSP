package com.crsp.dao;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.crsp.utils.Page;
import com.crsp.utils.PageUtil;

/**
 * @author Administrator DAO的基类实现类
 */
@SuppressWarnings("unchecked")
public class BaseDAOImpl<T> implements BaseDAO<T> {
	@Autowired
	private SessionFactory sessionFactory;
	private Class<?> clz;

	/**
	 * 获取Session对象
	 */
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	/**
	 * 获取泛型对象
	 */
	public Class<?> getClz() {
		if (clz == null) {
			// 获取泛型的Class对象
			clz = ((Class<?>) (((ParameterizedType) (this.getClass()
					.getGenericSuperclass())).getActualTypeArguments()[0]));
		}
		return clz;
	}

	/**
	 * 初始化参数
	 * 
	 * @param query
	 * @param args
	 */
	public void setParameter(Query query, Object[] args) {
		// 设置参数
		if (args != null && args.length > 0) {
			int index = 0;
			for (Object arg : args) {
				query.setParameter(index++, arg);
			}
		}
	}

	/**
	 * 设置分页方法
	 * 
	 * @param query
	 * @param page
	 */
	private void setPage(Query query, Page page) {
		query.setFirstResult(page.getBeginIndex()).setMaxResults(
				page.getPageSize());
	}

	/**
	 * 构建查询数据总数的hql
	 * 
	 * @param hql
	 * @return
	 */
	private String getCountHql(String hql) {
		// 获取hql字符串from后面的语句
		String end = hql.substring(hql.indexOf("from"));
		String count = "select count(*) " + end;
		count.replaceAll("fetch", "");
		return count;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.BaseDAO#add(java.lang.Object) 添加对象
	 */
	@Override
	public T add(T t) {
		getSession().save(t);
		return t;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.BaseDAO#update(java.lang.Object) 修改对象
	 */
	@Override
	public void update(T t) {
		getSession().update(t);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.BaseDAO#delete(int) 删除对象
	 */
	@Override
	public void delete(int id) {
		getSession().delete(this.findById(id));
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.BaseDAO#load(int) 获取对象
	 */
	@Override
	public T findById(int id) {
		return (T) getSession().load(getClz(), id);
	}

	/**
	 * 通过任意个参数查询对象列表
	 * 
	 * @param hql
	 * @param args
	 * @return
	 */
	public List<T> list(String hql, Object[] args) {
		Query query = getSession().createQuery(hql);
		setParameter(query, args);
		return query.list();
	}

	/**
	 * 通过一个参数查询对象列表
	 * 
	 * @param hql
	 * @param arg
	 * @return
	 */
	public List<T> list(String hql, Object arg) {
		return list(hql, new Object[] { arg });
	}

	/**
	 * 通过查询对象列表
	 * 
	 * @param hql
	 * @param arg
	 * @return
	 */
	public List<T> list(String hql) {
		return list(hql, null);
	}

	/**
	 * 通过任意个参数分页查询对象列表
	 * 
	 * @param hql
	 * @param args
	 * @param page
	 * @return
	 */
	public List<T> listByPage(String hql, Object[] args, Page page) {
		String chql = getCountHql(hql);// 获取查询所有记录的hql
		Query query = getSession().createQuery(hql);
		Query cQuery = getSession().createQuery(chql);
		// 设置参数
		setParameter(query, args);
		setParameter(cQuery, args);
		// 获取总记录数
		long totalCount = (Long) cQuery.uniqueResult();
		// 设置分页
		PageUtil.initPage(page, (int) totalCount);
		setPage(query, page);
		return query.list();
	}

	/**
	 * 通过一个参数分页查询对象列表
	 * 
	 * @param hql
	 * @param arg
	 * @return
	 */
	public List<T> listByPage(String hql, Object arg, Page page) {
		return listByPage(hql, new Object[] { arg }, page);
	}

	/**
	 * 通过分页查询对象列表
	 * 
	 * @param hql
	 * @param arg
	 * @return
	 */
	public List<T> listByPage(String hql, Page page) {
		return listByPage(hql, null, page);
	}

	/**
	 * 通过任意个参数查询对象
	 * 
	 * @param hql
	 * @param args
	 * @return
	 */
	public Object queryObject(String hql, Object[] args) {
		Query query = getSession().createQuery(hql);
		setParameter(query, args);
		return query.uniqueResult();
	}

	/**
	 * 通过一个参数查询对象
	 * 
	 * @param hql
	 * @param arg
	 * @return
	 */
	public Object queryObject(String hql, Object arg) {
		return queryObject(hql, new Object[] { arg });
	}

	/**
	 * 通过查询对象
	 * 
	 * @param hql
	 * @param arg
	 * @return
	 */
	public Object queryObject(String hql) {
		return queryObject(hql, null);
	}
}
