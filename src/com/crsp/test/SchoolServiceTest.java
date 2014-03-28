package com.crsp.test;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.entity.School;
import com.crsp.service.SchoolService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={ "classpath:config/spring-config.xml" })
public class SchoolServiceTest {
	@Autowired
	private SchoolService schoolService;
	
	@Test
	public void schoolTest(){
		School school=new School();
		//school.setId(100);
	//	school.setDescription("1");
		school.setProvince_id(100);
/*			school.setAvatar("1");
		school.setName("1");*/
		
/*		school=schoolService.addSchool(school);
		if(school!=null){
			System.out.println("添加成功");
		}
		else{
			System.out.println("插入错误");
		}*/
		
/*		if(schoolService.updateInformation(school)){
			System.out.println("保存成功");
		}
		else{
			System.out.println("插入错误");
		}*/
		
/*		school=schoolService.seeInformation(school.getId());
		if(school!=null){
			System.out.println(school.toString());
		}
		else{
			System.out.println("查看错误");
		}*/
		List<School> list=schoolService.findSchool(school.getProvince_id());
		//System.out.println(list.size());
		
	    if(list.size()!=0){
			for(School s:list){
				System.out.println(s.toString());
			}
		}
		else{
			System.out.println("没有院系");
		
		}
	}
	

}
