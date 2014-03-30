package com.crsp.dao;

import java.util.List;

import com.crsp.utils.Page;

/*省份表的DAO接口类*/
public interface ProvinceDAO {
	// 根据省份Id分页查询学校
	public List<?> findSchools(Page page,int id);
	
	// 根据省份Id查询所有学校
	public List<?> findSchools(int id);

	// 查询所有的省份
	public List<?> findAll();
}
