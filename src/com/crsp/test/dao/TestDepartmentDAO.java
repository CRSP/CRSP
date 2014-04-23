/**
 * 
 */
package com.crsp.test.dao;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.DepartmentDAO;
import com.crsp.entity.Department;

/**
 * @author Administrator
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestDepartmentDAO {
	@Autowired
	private DepartmentDAO departmentDAO;
	
	@Test
	public void testQueryBySchool(){
		int school_id = 1;
		List<Department> list = departmentDAO.queryBySchool(school_id);
		for(Department d : list){
			System.out.println(d.toString());
		}
	}
}
