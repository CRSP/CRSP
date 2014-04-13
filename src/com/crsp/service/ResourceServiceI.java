package com.crsp.service;

import java.util.List;

import com.crsp.dto.ResourceDTO;

public interface ResourceServiceI {
	//每个ResourceDTO装入id, resource_name, uploader_name
	public List<ResourceDTO> getNewestResource();	//获取最新50个资源
	
	//每个ResourceDTO装入id, school_name, uploader_name
	public List<ResourceDTO> getHottestResource();	//获取下载量最多的10个资源
}

