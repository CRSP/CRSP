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

import com.crsp.dao.SchoolDAO;
import com.crsp.entity.Province;
import com.crsp.entity.School;
import com.crsp.utils.Page;

/**
 * @author Administrator
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestSchoolDAO {
	@Autowired
	private SchoolDAO schoolDAO;
	
	@Test
	public void testQuerySchoolByPage(){
		Page page = new Page();
		List<School> list = schoolDAO.querySchoolByPage(page);
		for(School s:list){
			System.out.println(s.toString());
		}
	}
	
	@Test 
	public void testQuerySchoolByProvince(){
		int id = 2;
		Page page = new Page();
		List<School> list = schoolDAO.querySchoolByProvince(page,id);
		for(School s:list){
			System.out.println(s.toString());
			Province province = s.getProvince();
			System.out.println(province.toString());
		}
	}
	
	@Test 
	public void testQuerySchoolMostResource(){
		List<School> list = schoolDAO.querySchoolMostResource();
		for(School s:list){
			System.out.println(s.toString());
		}
	}
	
	@Test
	public void testFindById(){
		int id = 2;
		School school = schoolDAO.findById(id);
		System.out.println(school.toString());
	}
}
