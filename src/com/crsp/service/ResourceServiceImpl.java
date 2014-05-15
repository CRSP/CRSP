/**
 * 
 */
package com.crsp.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.FeatureDAO;
import com.crsp.dao.RecordDAO;
import com.crsp.dao.ResourceDAO;
import com.crsp.dao.Resource_TypeDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.dto.ResourceDTO;
import com.crsp.entity.Feature;
import com.crsp.entity.Record;
import com.crsp.entity.Resource;
import com.crsp.entity.Resource_Type;
import com.crsp.entity.School;
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
	@Autowired
	private FeatureDAO featureDAO;
	@Autowired
	private RecordDAO recordDAO;

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

	/* (non-Javadoc)
	 * @see com.crsp.service.ResourceServiceI#getFeature(java.lang.String)
	 */
	@Override
	public Feature getFeature(String code) {
		Feature feature = featureDAO.findByCode(code);
		return feature;
	}

	/* (non-Javadoc)
	 * @see com.crsp.service.ResourceServiceI#addFeature(com.crsp.entity.Feature)
	 */
	@Override
	public int addFeature(Feature feature) {
		featureDAO.add(feature);
		return feature.getId();
	}
	/*
	 * (non-Javadoc)
	 * @see com.crsp.service.ResourceServiceI#getResource(int)
	 */
	@Override
	public Resource getResource(int resourceId) {
		return resourceDAO.findById(resourceId);
	}
	/*
	 * (non-Javadoc)
	 * @see com.crsp.service.ResourceServiceI#getProfile(int)
	 */
	@Override
	public ResourceDTO getProfile(int resourceId) {
		ResourceDTO rDto = new ResourceDTO();
		Resource resource = resourceDAO.findById(resourceId);
		rDto.setId(resource.getId());
		rDto.setResource_name(resource.getName());
		School school = schoolDAO.findById(resource.getSchool_id());
		rDto.setSchool_name(school.getName());
		rDto.setStatus_name("待审核");
		rDto.setSize(resource.getFeature().getSize());
		rDto.setTime(resource.getTime());
		rDto.setDownload_count(resource.getDownload_count());
		rDto.setType_name(resource.getResource_type().getName());
		rDto.setPrice(resource.getPrice());
		rDto.setUploader_name(resource.getUser_name());
		if(resource.getStatus() == 1)
			rDto.setStatus_name("已审核");
		rDto.setTime(resource.getTime());
		return rDto;
	}

	/*
	 * (non-Javadoc)
	 * @see com.crsp.service.ResourceServiceI#addRecord(com.crsp.entity.Record)
	 */
	@Override
	public void addRecord(Record record) {
		recordDAO.add(record);
	}
	/*
	 * (non-Javadoc)
	 * @see com.crsp.service.ResourceServiceI#saveResource()
	 */
	@Override
	public void saveResource(Resource resource) {
		resourceDAO.update(resource);
	}
}
