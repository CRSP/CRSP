/**
 * 
 */
package com.crsp.dao;

import org.springframework.stereotype.Repository;

import com.crsp.entity.Department;

/**
 * @author Administrator
 *
 */
@Repository("departmentDAO")
public class DepartmentDAOImpl extends BaseDAOImpl<Department> implements DepartmentDAO{

}
