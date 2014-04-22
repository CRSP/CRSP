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

import com.crsp.dto.RecordDTO;
import com.crsp.dto.ResourceDTO;
import com.crsp.dto.UserDTO;
import com.crsp.entity.User;
import com.crsp.service.UserServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestUserService {
	@Autowired
	private UserServiceI userService;

	@Test
	public void testLogin() {
		String user_id = "11080701";
		String user_pwd = "123456";
		UserDTO udto = userService.login(user_id, user_pwd);
		System.out.println(udto.isErr());
		System.out.println(udto.getErrMsg());
		System.out.println(udto.toString());
	}

	@Test
	public void testRegister() {
		User user = new User(11, 15, 52, "110807098", "123456", "波风水门",
				"4.jpg", 1, "123456@163.com");
		UserDTO udto = userService.register(user);
		System.out.println(udto.isErr());
		System.out.println(udto.getErrMsg());
		System.out.println(udto.toString());
	}

	@Test
	public void testMyUpload() {
		int id = 1;
		Page page = new Page();
		page.setPageNow(1);
		Pages<ResourceDTO> pages = userService.getMyUpload(id, page);
		List<ResourceDTO> rDtos = pages.getPageList();
		Page page2 = pages.getPage();
		System.out.println(page2.toString());
		for(ResourceDTO rdto : rDtos){
			System.out.println(rdto.toString());
		}
	}
	
	@Test
	public void testMyDownLoad() {
		int id = 1;
		Page page = new Page();
		page.setPageNow(2);
		page.setPageSize(2);
		Pages<ResourceDTO> pages = userService.getMyDownload(id, page);
		List<ResourceDTO> rDtos = pages.getPageList();
		Page page2 = pages.getPage();
		System.out.println(page2.toString());
		for(ResourceDTO rdto : rDtos){
			System.out.println(rdto.toString());
		}
	}
	
	@Test
	public void testMyRecord() {
		int id = 1;
		Page page = new Page();
		page.setPageNow(1);
		//page.setPageSize(100);
		Pages<RecordDTO> pages = userService.getMyRecord(id, page);
		List<RecordDTO> rDtos = pages.getPageList();
		Page page2 = pages.getPage();
		System.out.println(rDtos.size());
		System.out.println(page2.toString());
		for(RecordDTO rdto : rDtos){
			System.out.println(rdto.toString());
		}
	}
}
