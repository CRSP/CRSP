package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.ProvinceDAO;
import com.crsp.entity.Province;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring-config.xml"})
public class ProvinceTest {
	@Autowired
	private ProvinceDAO provinceDAO;// 省份表的DAO接口类

	@Test
	public void testSave() {
		findAll();
	}
	
	// 查询所有数据
	public void findAll(){
		@SuppressWarnings("unchecked")
		List<Province> provinces = (List<Province>) provinceDAO.findAll();
		for(Province p:provinces){
			System.out.println(p.toString());
		}
	}
}
