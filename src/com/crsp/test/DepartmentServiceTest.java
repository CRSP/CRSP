package com.crsp.test;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.crsp.entity.Department;
import com.crsp.service.DepartmentService;



@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={ "classpath:config/spring-config.xml" })
public class DepartmentServiceTest {
	@Autowired
	private DepartmentService departmentService;
	@Test
	public void departmentTest(){
		
		Department department=new Department();
		//department.setId(100);
		
/*		department.setDescription("1");
		department.setAvatar("1");
		department.setName("1");*/
		
		
/*		department=departmentService.addDepartment(department);
		if(department!=null){
			System.out.println(department.toString());
		}
		else{
			System.out.println("添加错误");
		}*/
		
/*		if(departmentService.updateInformation(department)){
			System.out.println(department.toString());
		}
		else{
			System.out.println("更新错误");
		}*/
		
		department=departmentService.seeInformation(department.getId());
		if(department!=null){
			System.out.println(department.toString());
		}
		else{
			System.out.println("查看错误");
		}
		
	}
}
