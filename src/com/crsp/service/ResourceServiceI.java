package com.crsp.service;

import java.util.List;

import com.crsp.dto.ResourceDTO;
import com.crsp.entity.Resource;
import com.crsp.entity.Resource_Type;
import com.crsp.utils.Page;
import com.crsp.utils.Pages;

public interface ResourceServiceI {
	//每个ResourceDTO装入id, resource_name, uploader_name
	public Pages<ResourceDTO> getNewestResource(Page page);	//获取最新50个资源
	
	//每个ResourceDTO装入id, school_name, uploader_name
	public Pages<ResourceDTO> getHottestResource();	//获取下载量最多的10个资源
	
	//每个ResourceDTO装入id, name, uploader_name
	public Pages<ResourceDTO> getResourceByDepartmentAndSchoolId(int schoolId, int departmentId, Page page);		//获取学校院系的资源
	
	public void AddResource(Resource resource);

	public List<Resource_Type> getTypes();
	
	public Feature getFeature(String code);//按特征码查找，如果没有，则返回null
	
	public void addFeature(Feature feature);//增加特征文件
}

