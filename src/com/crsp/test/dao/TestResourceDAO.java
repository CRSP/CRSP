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

import com.crsp.dao.ResourceDAO;
import com.crsp.entity.Resource;
import com.crsp.utils.Page;

/**
 * @author Administrator
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestResourceDAO {
	@Autowired
	private ResourceDAO resourceDAO;
	
	@Test
	public void testQueryResourcesByUser(){
		int user_id = 2;
		Page page = new Page();
		List<Resource> list = resourceDAO.queryResourcesByUser(page, user_id);
		for(Resource r:list){
			System.out.println(r.toString());
		}
	}
	
	@Test
	public void testQueryNewResources(){
		List<Resource> list = resourceDAO.queryNewResources();
		for(Resource r:list){
			System.out.println(r.toString());
		}
	}
	
	@Test
	public void testQueryMostDownload(){
		List<Resource> list = resourceDAO.queryMostDownload();
		for(Resource r:list){
			System.out.println(r.toString());
		}
	}
}
