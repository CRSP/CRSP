package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.DepartmentDAO;
import com.crsp.entity.Department;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:spring-config.xml" })
public class DepartmentTest {
	@Autowired
	private DepartmentDAO departmentDAO;// 院系表的DAO接口类

	@Test
	public void testSave() {
		/*
		 * Department department = new Department(); department.setId(69);
		 * department.setName("周五了");
		 */
		// save(department);
		// update(department);
		// delete(department);
		// findById(1);
		// findBySchool(1);
		// findByProperty("name","河");
	}

	// 添加院系信息
	public void save(Department department) {
		departmentDAO.save(department);
	}

	// 更新院系信息
	public void update(Department department) {
		departmentDAO.update(department);
	}

	// 删除院系信息
	public void delete(Department department) {
		departmentDAO.delete(department);
	}

	// 根据Id查询院系信息
	public void findById(int id) {
		System.out.println(departmentDAO.findById(id).toString());
	}

	// 根据某个属性查询院系的信息
	public void findByProperty(String propertyName, Object value) {
		@SuppressWarnings("unchecked")
		List<Department> list = (List<Department>) departmentDAO
				.findByProperty(propertyName, value);
		for (Department d : list) {
			System.out.println(d.toString());
		}
	}

	// 查找相应学校的院系信息
	public void findBySchool(int id) {
		@SuppressWarnings("unchecked")
		List<Department> list = (List<Department>) departmentDAO
				.findBySchool(id);
		for (Department d : list) {
			System.out.println(d.toString());
		}
	}
}
