package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.SchoolDAO;
import com.crsp.entity.Department;
import com.crsp.entity.School;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class SchoolTest {
	@Autowired
	private SchoolDAO schoolDAO;// 学校表的DAO接口类

	@Test
	public void testSave() {
		/*
		 * School school = new School(); school.setId(69);
		 * school.setName("周五了"); school.setProvince_id(1);
		 */
		// save(school);
		// update(school);
		// delete(school);
		// findById(1);
		// findAll();
		// findByProvince(1);
		// findByProperty("name","河");
		//findDepartments(1);
	}

	// 添加学校信息
	public void save(School school) {
		schoolDAO.save(school);
	}

	// 更新学校信息
	public void update(School school) {
		schoolDAO.update(school);
	}

	// 删除学校信息
	public void delete(School school) {
		schoolDAO.delete(school);
	}

	// 根据Id查询学校信息
	public void findById(int id) {
		System.out.println(schoolDAO.findById(id).toString());
	}

	// 查询所有学校的信息
	public void findAll() {
		@SuppressWarnings("unchecked")
		List<School> list = (List<School>) schoolDAO.findAll();
		for (School sh : list) {
			System.out.println(sh.toString());
		}
	}

	// 根据某个属性查询学校的信息
	public void findByProperty(String propertyName, Object value) {
		@SuppressWarnings("unchecked")
		List<School> list = (List<School>) schoolDAO.findByProperty(
				propertyName, value);
		for (School sh : list) {
			System.out.println(sh.toString());
		}
	}

	// 查找相应省份的学校信息
	public void findByProvince(int id) {
		@SuppressWarnings("unchecked")
		List<School> list = (List<School>) schoolDAO.findByProvince(id);
		for (School sh : list) {
			System.out.println(sh.toString());
		}
	}

	// 查询学校开设的院系
	public void findDepartments(int id) {
		@SuppressWarnings("unchecked")
		List<Department> list = (List<Department>) schoolDAO
				.findDepartments(id);
		for (Department d : list) {
			System.out.println(d.toString());
		}
	}
}
