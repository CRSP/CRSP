/**
 * 
 */
package com.crsp.test.serivce;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dto.ResourceDTO;
import com.crsp.service.ResourceServiceI;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestResourceService {
	@Autowired
	private ResourceServiceI resourceService;
	
	@Test
	public void getNewestResource(){
		Pages<ResourceDTO> pages = resourceService.getNewestResource();
		List<ResourceDTO> list = pages.getPageList();
		for(ResourceDTO r:list){
			System.out.println(r.toString());
		}
	}
	
	@Test
	public void getHottestResource(){
		Pages<ResourceDTO> pages = resourceService.getHottestResource();
		List<ResourceDTO> list = pages.getPageList();
		for(ResourceDTO r:list){
			System.out.println(r.toString());
		}
	}
}