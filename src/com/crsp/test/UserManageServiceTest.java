package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.entity.User;
import com.crsp.service.UserManageService;
import com.crsp.utils.Page;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={ "classpath:config/spring-config.xml" })
public class UserManageServiceTest {
	@Autowired
	private UserManageService userManageService;
	
	@Test
	public void userTest(){
/*		User user=new User();
		user.setId(1);*/
		
		
		
/*		List<User> list=userManageService.findAllUser();
		if(list.size()!=0){
			for(User u: list){
				System.out.println(u.toString());
			}
		}
		else{
			System.out.println("没有用户");
		}*/
		
/*		user=userManageService.findUserByID(user.getId());
		if(user!=null){
			System.out.println(user.toString());
		}
		else{
			System.out.println("查看错误");
		}*/
		
		Page page=new Page();
		List<User> list=userManageService.findAllUser(page);
		for(User u:list){
			System.out.println(u.toString());
		}
		
		
	}

}
