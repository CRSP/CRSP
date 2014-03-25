package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Department;

/*院系表的DAO接口类*/
public interface DepartmentDAO {
	// 添加院系信息
	public void save(Department department);

	// 更新院系信息
	public void update(Department department);

	// 删除院系信息
	public void delete(Department department);

	// 根据Id查询院系信息
	public Department findById(int id);
	
	// 查询所有的院系
	public List<?> findAll();

	// 根据某个属性查询院系的信息
	public List<?> findByProperty(String propertyName, Object value);
	
	// 根据某个属性模糊查询院系的信息
	public List<?> findLikeProperty(String propertyName, Object value);

	// 查找相应学校的院系信息
	public List<?> findBySchool(int id);
}
