/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Department;

/**
 * 部门管理DAO接口类
 * 
 * @author Administrator
 *
 */
public interface DepartmentDAO extends BaseDAO<Department>{
	// 获取某个学校拥有的院系信息
	public List<Department> queryBySchool(int school_id);
}
