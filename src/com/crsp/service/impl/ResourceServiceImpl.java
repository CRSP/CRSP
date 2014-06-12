/**
 * 
 */
package com.crsp.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.CommentDAO;
import com.crsp.dao.FeatureDAO;
import com.crsp.dao.RecordDAO;
import com.crsp.dao.ResourceDAO;
import com.crsp.dao.Resource_TypeDAO;
import com.crsp.dao.SchoolDAO;
import com.crsp.dto.CommentDTO;
import com.crsp.dto.ResourceDTO;
import com.crsp.entity.Comment;
import com.crsp.entity.Feature;
import com.crsp.entity.Mock;
import com.crsp.entity.Record;
import com.crsp.entity.Resource;
import com.crsp.entity.Resource_Type;
import com.crsp.entity.School;
import com.crsp.service.ResourceServiceI;
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
	@Autowired
	private CommentDAO commentDAO;

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
			rDto.setResource_name(r.getName());
			rDto.setUploader_name(r.getUser_name());
			rDto.setId(r.getId());
			rDto.setUploader_id(r.getUser_id());
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

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getFeature(java.lang.String)
	 */
	@Override
	public Feature getFeature(String code) {
		Feature feature = featureDAO.findByCode(code);
		return feature;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.crsp.service.ResourceServiceI#addFeature(com.crsp.entity.Feature)
	 */
	@Override
	public int addFeature(Feature feature) {
		featureDAO.add(feature);
		return feature.getId();
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getResource(int)
	 */
	@Override
	public Resource getResource(int resourceId) {
		return resourceDAO.findById(resourceId);
	}

	/*
	 * (non-Javadoc)
	 * 
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
		if (resource.getStatus() == 1)
			rDto.setStatus_name("审核通过");
		if (resource.getStatus() == 2)
			rDto.setStatus_name("审核不通过");
		if (resource.getStatus() == 3)
			rDto.setStatus_name("已冻结");
		rDto.setTime(resource.getTime());
		return rDto;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#addRecord(com.crsp.entity.Record)
	 */
	@Override
	public void addRecord(Record record) {
		recordDAO.add(record);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#saveResource()
	 */
	@Override
	public void saveResource(Resource resource) {
		resourceDAO.update(resource);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#searchResource(java.lang.String,
	 * com.crsp.utils.Page)
	 */
	@Override
	public Pages<ResourceDTO> searchResource(String keyword, Page page) {
		Pages<ResourceDTO> pDTO = new Pages<ResourceDTO>();
		List<ResourceDTO> datas = new ArrayList<ResourceDTO>();
		List<Resource> list = resourceDAO.queryResourceLikeName(keyword, page);
		for (Resource r : list) {
			ResourceDTO rDTO = new ResourceDTO();
			rDTO.setId(r.getId());
			rDTO.setResource_name(r.getName());
			rDTO.setUploader_name(r.getUser_name());
			datas.add(rDTO);
		}
		pDTO.setPage(page);
		pDTO.setPageList(datas);
		return pDTO;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#getComments(int,
	 * com.crsp.utils.Page)
	 */
	@Override
	public Pages<CommentDTO> getComments(int resource_id, Page page) {
		Pages<CommentDTO> pDTO = new Pages<CommentDTO>();
		List<CommentDTO> datas = new ArrayList<CommentDTO>();
		List<Comment> list = commentDAO.listByResource(resource_id, page);
		for (Comment c : list) {
			CommentDTO cDTO = new CommentDTO();
			cDTO.setId(c.getId());
			cDTO.setUser_id(c.getUser().getId());
			cDTO.setUser_name(c.getUser().getUser_name());
			cDTO.setContent(c.getContent());
			cDTO.setDate(c.getDate());
			cDTO.setUser_avatar(c.getUser().getAvatar());
			datas.add(cDTO);
		}
		pDTO.setPage(page);
		pDTO.setPageList(datas);
		return pDTO;
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see
	 * com.crsp.service.ResourceServiceI#addComments(com.crsp.entity.Comment)
	 */
	@Override
	public void addComments(Comment comment) {
		commentDAO.add(comment);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.service.ResourceServiceI#addMock(com.crsp.entity.Mock)
	 */
	@Override
	public void addMock(Mock mock) {
		resourceDAO.addMock(mock);
	}
}
