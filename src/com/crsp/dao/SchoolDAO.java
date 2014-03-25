package com.crsp.dao;

import java.util.List;

import com.crsp.entity.School;

/*学校表的DAO接口类*/
public interface SchoolDAO {
	// 添加学校信息
	public void save(School school);

	// 更新学校信息
	public void update(School school);

	// 删除学校信息
	public void delete(School school);

	// 根据Id查询学校信息
	public School findById(int id);
	
	// 查询所有的学校信息
	public List<?> findAll();

	// 根据某个属性查询学校的信息
	public List<?> findByProperty(String propertyName, Object value);
	
	// 根据某个属性模糊查询学校的信息
	public List<?> findLikeProperty(String propertyName, Object value);

	// 查找相应省份的学校信息
	public List<?> findByProvince(int id);
	
	// 查询学校开设的院系
	public List<?> findDepartments(int id);
}
