/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.School;
import com.crsp.utils.Page;

/**
 * 学校管理DAO接口类
 * 
 * @author Administrator
 * 
 */
public interface SchoolDAO extends BaseDAO<School> {
	// 分页查询学校的信息
	public List<School> querySchoolByPage(Page page);

	// 分页查询某个省份的学校信息
	public List<School> querySchoolByProvince(Page page, int province_id);
	
	// 查询最多资源的12个学校
	public List<School> querySchoolMostResource();
}
