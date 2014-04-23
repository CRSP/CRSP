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

import com.crsp.dto.DepartmentDTO;
import com.crsp.dto.SchoolDTO;
import com.crsp.service.SchoolServiceI;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 *
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:config/spring-config.xml" })
public class TestSchoolService {
	@Autowired
	private SchoolServiceI schoolService;
	 
	@Test
	public void testGetHottestSchools(){
		Pages<SchoolDTO> pages = schoolService.getHottestSchools();
		List<SchoolDTO> list = pages.getPageList();
		System.out.println(list.size());
		for(SchoolDTO s : list){
			System.out.println(s.toString());
		}
	}
	
	@Test
	public void testGetSchools(){
		Page page = new Page();
		page.setPageNow(2);
		Pages<SchoolDTO> pages = schoolService.getSchools(page);
		List<SchoolDTO> list = pages.getPageList();
		System.out.println(list.size());
		for(SchoolDTO s : list){
			System.out.println(s.toString());
		}
		System.out.println(pages.getPage().toString());
	}
	
	@Test
	public void testGetSchoolsByProvinceId(){
		int province_id = 1;
		Page page = new Page();
		Pages<SchoolDTO> pages = schoolService.getSchoolsByProvinceId(province_id, page);
		List<SchoolDTO> list = pages.getPageList();
		System.out.println(list.size());
		for(SchoolDTO s : list){
			System.out.println(s.toString());
		}
		System.out.println(pages.getPage().toString());
	} 
	
	@Test
	public void testGetProfile(){
		int schoolId = 68;
		SchoolDTO sDto = schoolService.getProfile(schoolId);
		List<DepartmentDTO> list = sDto.getDepartment_list();
		for(DepartmentDTO d : list){
			System.out.println(d.toString());
		}
		System.out.println(sDto);
	}
}
