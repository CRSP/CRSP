/**
 * 
 */
package com.crsp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.ResourceDAO;
import com.crsp.dao.Resource_TypeDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.dto.ResourceDTO;
import com.crsp.entity.Resource;
import com.crsp.entity.Resource_Type;
import com.crsp.utils.Page;
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
	private SchoolDAO schoolDAO;
	@Autowired
	private Resource_TypeDAO resource_typeDAO;

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getNewestResource()
	 */
	@Override
	public Pages<ResourceDTO> getNewestResource(Page page) {
		Pages<ResourceDTO> pages = new Pages<ResourceDTO>();
		List<ResourceDTO> rDtos = new ArrayList<ResourceDTO>();
		// 获取相应数量的资源信息
		List<Resource> list = resourceDAO.queryNewResources(page);
		for (Resource r : list) {
			ResourceDTO rDto = new ResourceDTO();
			rDto.setId(r.getId());
			rDto.setResource_name(r.getName());
			rDto.setUploader_name(r.getUser_name());
			rDtos.add(rDto);
		}
		pages.setPageList(rDtos);
		pages.setPage(page);
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
			rDto.setSchool_name(schoolDAO.findById(r.getSchool_id()).getName());
			rDto.setUploader_name(r.getUser_name());
			rDtos.add(rDto);
		}
		pages.setPageList(rDtos);
		return pages;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.crsp.service.ResourceServiceI#getResourceByDepartmentAndSchoolId(int,
	 * int, com.crsp.utils.Page)
	 */
	@Override
	public Pages<ResourceDTO> getResourceByDepartmentAndSchoolId(int schoolId,
			int departmentId, Page page) {
		Pages<ResourceDTO> pages = new Pages<ResourceDTO>();
		List<ResourceDTO> rDtos = new ArrayList<ResourceDTO>();
		// 获取相应数量的资源信息
		List<Resource> list = resourceDAO.queryResourcesBySchDpm(page,
				schoolId, departmentId);
		for (Resource r : list) {
			ResourceDTO rDto = new ResourceDTO();
			rDto.setId(r.getId());
			rDto.setResource_name(r.getName());
			rDto.setUploader_name(r.getUser_name());
			rDtos.add(rDto);
		}
		pages.setPageList(rDtos);
		pages.setPage(page);
		return pages;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.crsp.service.ResourceServiceI#AddResource(com.crsp.entity.Resource)
	 */
	@Override
	public void AddResource(Resource resource) {
		resourceDAO.add(resource);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getTypes()
	 */
	@Override
	public List<Resource_Type> getTypes() {
		return resource_typeDAO.list();
	}
}
