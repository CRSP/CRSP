package com.crsp.service;

import java.util.List;

import com.crsp.dto.DepartmentDTO;
import com.crsp.dto.SchoolDTO;
import com.crsp.utils.Page;

public interface SchoolServiceI {
	// 每个schoolDTO装入id, school_name, school_description, school_avatar;
	public List<SchoolDTO> getHottestSchools(); // 获取资源最多的12间学校

	// 每个schoolDTO装入id, school_name, school_description, school_avatar;
	public List<SchoolDTO> getSchools(Page page); // 获取第page页学校

	// 每个schoolDTO装入id, school_name, province_name, resource_quanities
	public List<SchoolDTO> getSchoolsByProvinceId(int provinceId, Page page);

	// 装入id, school_name, province_name, resource_quantities, department_list
	public SchoolDTO getProfile(int schoolId); // 获取学校详细信息(学校省份，资源数，院系列表等)
	
	
}
