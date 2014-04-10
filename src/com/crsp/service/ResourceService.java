package com.crsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.utils.Page;
import com.crsp.dao.ResourceDAO;
import com.crsp.dao.UserDAO;
import com.crsp.entity.Resource;

@Service
public class ResourceService {
	@Autowired
	private ResourceDAO resourceDAO;
	@Autowired
	private UserDAO userDAO;
	//查找所有资源
	public List<Resource> findAllResource(Page page){
		
		return (List<Resource>)resourceDAO.findByPage(page);
	}
	
	//按ID查询
	public Resource findByID(int id){
		Resource resource=resourceDAO.findById(id);
		resource.setUser_name(userDAO.findUserName(resource.getUser_id()));
		return resource;
	}
	
	//修改资源
	public void updateResource(Resource resource){
		resourceDAO.update(resource);
	}
	
	//分类查找
	public List<Resource> findByType(Page page, Object type_id){
		return (List<Resource>)resourceDAO.findByProperty(page, "resource_type.id", type_id);
	}
	
	
	
	
/*	//查看最新资源
	public List<Resource> seeRecentResource(){
		
	}
	//搜索资源
	public Resource searchResource(Resource resource){
		
	}
	//举报资源
	public boolean reportResource(Resource sesource){
		
	}
	//浏览资源
	public Resource seeResource(Resource resource){
		
	}
	//下载资源
	public Resource downloadResource(Resource resource){
		
	}
	//上传资源
	public Resource uploadResource(Resource resource){
		
	}*/
	
	

}
