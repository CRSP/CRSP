/**
 * 
 */
package com.crsp.dao;

/**
 * @author Administrator
 * DAO的接口基类
 */
public interface BaseDAO<T>  {
	/**
	 * 添加对象
	 * 
	 * @param t
	 * @return
	 */
	public T add(T t);

	/**
	 * 更新对象
	 * @param t
	 */
	public void update(T t);

	/**
	 * 根据id删除对象
	 * 
	 * @param id
	 */
	public void delete(int id);

	/**
	 * 根据id加载对象
	 * 
	 * @param id
	 * @return
	 */
	public T findById(int id);
}
