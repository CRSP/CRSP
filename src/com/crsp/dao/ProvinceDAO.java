/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Province;

/**
 * @author Administrator
 *
 */
public interface ProvinceDAO extends BaseDAO<Province>{
	// 查询所有的省份信息
	public List<Province> queryAll();
}
