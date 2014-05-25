/**
 * 
 */
package com.crsp.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.dao.DepartmentDAO;
import com.crsp.entity.Department;

/**
 * @author Administrator
 *
 */
@Repository("departmentDAO")
public class DepartmentDAOImpl extends BaseDAOImpl<Department> implements DepartmentDAO{

	/* (non-Javadoc)
	 * @see com.crsp.dao.DepartmentDAO#queryBySchool(int)
	 */
	@Override
	public List<Department> queryBySchool(int school_id) {
		String hql = "select d from Department d,School_Department s_d where s_d.school_id=" + school_id + " and s_d.department_id=d.id";
		return this.list(hql);
	}

}
