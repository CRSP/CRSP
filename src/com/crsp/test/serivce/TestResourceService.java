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
import com.crsp.entity.Feature;
import com.crsp.entity.Resource_Type;
import com.crsp.service.ResourceServiceI;
import com.crsp.utils.Page;
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
		Page page = new Page();
		Pages<ResourceDTO> pages = resourceService.getNewestResource(page);
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
	
	@Test
	public void getResourceByDepartmentAndSchoolId(){
		int school_id = 1;
		int department_id = 2;
		Page page = new Page(-1,2);
		Pages<ResourceDTO> pages = resourceService.getResourceByDepartmentAndSchoolId(school_id,department_id,page);
		List<ResourceDTO> list = pages.getPageList();
		for(ResourceDTO r:list){
			System.out.println(r.toString());
		}
	}
	
	@Test
	public void listResource_type(){
		List<Resource_Type> list = resourceService.getTypes();
		for(Resource_Type t:list){
			System.out.println(t.toString());
		}
	}
	
	@Test
	public void getFeature(){
		Feature feature = resourceService.getFeature("1");
		System.out.println(feature.toString());
	}
	
	@Test
	public void searchResource(){
		Page page = new Page(1,10);
		Pages<ResourceDTO> pages = resourceService.searchResource("资源1",page);
		List<ResourceDTO> list = pages.getPageList();
		for(ResourceDTO r:list){
			System.out.println(r.toString());
		}
	}
}
