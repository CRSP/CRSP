package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Department;
import com.crsp.utils.Page;

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
	
	// 根据院系的名称查询
	public Department findByName(String name);
	
	// 分页查询所有的院系
	public List<?> findByPage(Page page);

	// 根据某个属性查询院系的信息
	public List<?> findByProperty(Page page,String propertyName, Object value);

	// 根据某个属性模糊查询院系的信息
	public List<?> findLikeProperty(Page page,String propertyName, Object value);
	
	// 查询总记录数
	public int queryCount(String hql);
}
