package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.dao.ResourceDAO;
import com.crsp.entity.Resource;
import com.crsp.entity.Resource_Type;
import com.crsp.service.ResourceService;
import com.crsp.utils.Page;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class ResourceServiceTest {
 
	@Autowired
	private ResourceService resourceService ;
	
	
	
	@Test
	public void resourceTest() {
/*	   Page page=new Page();
       List<Resource> list=(List<Resource>) resourceService.findAllResource(page);
       for(Resource r:list){
    	   System.out.println(r.toString());
       }
	}*/
	
/*	Resource resource=resourceService.findByID(1);
	System.out.println(resource.toString());*/
	
/*	 Page page=new Page();
	 List<Resource> list=resourceService.findByType(page, 1);
	 for(Resource r:list){
  	   System.out.println(r.toString());
     }*/
	 Resource_Type type=new Resource_Type();
	 type.setId(1);
	type.setName("1");
	 Resource resource=new Resource();
	 resource.setId(1);
	 resource.setUser_id(1);
	 resource.setStatus(1);
	 resource.setTime("1");
	 resource.setResource_type(type);
	 resource.setPrice(1);
	 resource.setName("HHHH");
	 resourceService.updateResource(resource);
	 
	 
	}	
}
