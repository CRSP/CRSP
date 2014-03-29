package com.crsp.dao;

import java.util.List;

/*省份表的DAO接口类*/
public interface ProvinceDAO {
	// 根据省份Id查询学校
	public List<?> findByProvince(int id);

	// 查询所有的省份
	public List<?> findAll();
}
