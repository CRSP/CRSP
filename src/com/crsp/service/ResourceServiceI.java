package com.crsp.service;

import com.crsp.dto.ResourceDTO;
import com.crsp.utils.Pages;

public interface ResourceServiceI {
	//每个ResourceDTO装入id, resource_name, uploader_name
	public Pages<ResourceDTO> getNewestResource();	//获取最新50个资源
	
	//每个ResourceDTO装入id, school_name, uploader_name
	public Pages<ResourceDTO> getHottestResource();	//获取下载量最多的10个资源
}

