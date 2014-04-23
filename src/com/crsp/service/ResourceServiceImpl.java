/**
 * 
 */
package com.crsp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.ResourceDAO;
import com.crsp.dao.UserDAO;
import com.crsp.dto.ResourceDTO;
import com.crsp.entity.Resource;
import com.crsp.entity.User;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 * 
 */
@Service
public class ResourceServiceImpl implements ResourceServiceI {
	@Autowired
	private ResourceDAO resourceDAO;
	@Autowired
	private UserDAO userDAO;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getNewestResource()
	 */
	@Override
	public Pages<ResourceDTO> getNewestResource() {
		Pages<ResourceDTO> pages = new Pages<ResourceDTO>();
		List<ResourceDTO> rDtos = new ArrayList<ResourceDTO>();
		// 获取相应数量的资源信息
		List<Resource> list = resourceDAO.queryNewResources();
		for (Resource r : list) {
			ResourceDTO rDto = new ResourceDTO();
			rDto.setId(r.getId());
			rDto.setResource_name(r.getName());
			rDto.setUploader_name(r.getUser_name());
			rDtos.add(rDto);
		}
		pages.setPageList(rDtos);
		return pages;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getHottestResource()
	 */
	@Override
	public Pages<ResourceDTO> getHottestResource() {
		Pages<ResourceDTO> pages = new Pages<ResourceDTO>();
		List<ResourceDTO> rDtos = new ArrayList<ResourceDTO>();
		// 获取相应数量的资源信息
		List<Resource> list = resourceDAO.queryMostDownload();
		for (Resource r : list) {
			ResourceDTO rDto = new ResourceDTO();
			rDto.setId(r.getId());
			User user = userDAO.findById(r.getUser_id());
			rDto.setSchool_name(user.getSchool().getName());
			rDto.setUploader_name(r.getUser_name());
			rDtos.add(rDto);
		}
		pages.setPageList(rDtos);
		return pages;
	}

}
