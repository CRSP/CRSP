/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Resource_Type;

/**
 * @author Administrator
 *
 */
public interface Resource_TypeDAO extends BaseDAO<Resource_Type>{
	/**
	 * 获取所有的资源类型
	 * @return
	 */
	public List<Resource_Type> list();
}
