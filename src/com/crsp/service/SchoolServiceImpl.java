/**
 * 
 */
package com.crsp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.DepartmentDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.dto.DepartmentDTO;
import com.crsp.dto.SchoolDTO;
import com.crsp.entity.Department;
import com.crsp.entity.School;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 *
 */
@Service
public class SchoolServiceImpl implements SchoolServiceI{
	@Autowired
	private SchoolDAO schoolDAO;// 校园管理的DAO
	@Autowired
	private DepartmentDAO departmentDAO;// 院系管理的DAO
	/* (non-Javadoc)
	 * @see com.crsp.service.SchoolServiceI#getHottestSchools()
	 */
	@Override
	public Pages<SchoolDTO> getHottestSchools() {
		Pages<SchoolDTO> pages = new Pages<SchoolDTO>();
		List<SchoolDTO> sDtos = new ArrayList<SchoolDTO>();
		// 获取拥有资源数最多的12间学校
		List<School> list = schoolDAO.querySchoolMostResource();
		for(School s : list){
			// 将数据封装成为Dto
			SchoolDTO sdto = new SchoolDTO();
			sdto.setId(s.getId());
			sdto.setSchool_name(s.getName());
			sdto.setSchool_description(s.getDescription());
			sdto.setSchool_avatar(s.getAvatar());
			sDtos.add(sdto);
		}
		pages.setPageList(sDtos);
		return pages;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.SchoolServiceI#getSchools(com.crsp.utils.Page)
	 */
	@Override
	public Pages<SchoolDTO> getSchools(Page page) {
		Pages<SchoolDTO> pages = new Pages<SchoolDTO>();
		List<SchoolDTO> sDtos = new ArrayList<SchoolDTO>();
		// 获取相应的学校信息
		List<School> list = schoolDAO.querySchoolByPage(page);
		for(School s : list){
			// 将数据封装成为Dto
			SchoolDTO sdto = new SchoolDTO();
			sdto.setId(s.getId());
			sdto.setSchool_name(s.getName());
			sdto.setSchool_description(s.getDescription());
			sdto.setSchool_avatar(s.getAvatar());
			sDtos.add(sdto);
		}
		pages.setPage(page);
		pages.setPageList(sDtos);
		return pages;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.SchoolServiceI#getSchoolsByProvinceId(int, com.crsp.utils.Page)
	 */
	@Override
	public Pages<SchoolDTO> getSchoolsByProvinceId(int provinceId, Page page) {
		Pages<SchoolDTO> pages = new Pages<SchoolDTO>();
		List<SchoolDTO> sDtos = new ArrayList<SchoolDTO>();
		// 获取相应的学校数据
		List<School> list = schoolDAO.querySchoolByProvince(page, provinceId);
		for(School s : list){
			// 将数据封装成为Dto
			SchoolDTO sdto = new SchoolDTO();
			sdto.setId(s.getId());
			sdto.setSchool_name(s.getName());
			sdto.setProvince_name(s.getProvince().getName());
			sdto.setSchool_description(s.getDescription());
			sdto.setResource_quanities(s.getResource_count());
			sDtos.add(sdto);
		}
		pages.setPage(page);
		pages.setPageList(sDtos);
		return pages;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.SchoolServiceI#getProfile(int)
	 */
	@Override
	public SchoolDTO getProfile(int schoolId) {
		SchoolDTO sDto = new SchoolDTO();
		List<DepartmentDTO> dDtos = new ArrayList<DepartmentDTO>();
		// 获取相应的学校信息
		School school = schoolDAO.findById(schoolId);
		// 获取该学校拥有的院系信息
		List<Department> list = departmentDAO.queryBySchool(schoolId);
		
		try{
			sDto.setId(school.getId());
			sDto.setSchool_name(school.getName());
			sDto.setResource_quanities(school.getResource_count());
			sDto.setProvince_name(school.getProvince().getName());
		}catch(Exception e){
			sDto.setErr(true);
			sDto.setErrMsg("学校信息不存在!");
			return sDto;
		}
		for(Department d : list){
			// 封装dto数据
			DepartmentDTO dDto = new DepartmentDTO();
			dDto.setId(d.getId());
			dDto.setDepartment_name(d.getName());
			dDto.setResource_quantities(d.getResource_count());
			dDtos.add(dDto);
		}
		sDto.setDepartment_list(dDtos);
		return sDto;
	}
}
