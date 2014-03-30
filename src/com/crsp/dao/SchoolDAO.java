package com.crsp.dao;

import java.util.List;

import com.crsp.entity.School;
import com.crsp.utils.Page;

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

	// 根据名称查询学校信息
	public School findByName(String name);

	// 分页查询学校开设的院系
	public List<?> findDepartments(Page page, int school_id);

	// 查询学校开设的所有院系
	public List<?> findDepartments(int school_id);
	
	// 分页查询该学校的用户信息
	public List<?> findUsers(Page page,int school_id);

	// 分页查询所有的学校信息
	public List<?> findByPage(Page page);

	// 根据某个属性查询学校的信息
	public List<?> findByProperty(Page page, String propertyName, Object value);

	// 根据某个属性模糊查询学校的信息
	public List<?> findLikeProperty(Page page, String propertyName, Object value);

	// 查询总记录数
	public int queryCount(String hql);
}
