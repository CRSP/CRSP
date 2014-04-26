/**
 * 
 */
package com.crsp.dao;


import java.util.List;

import com.crsp.entity.Resource;
import com.crsp.utils.Page;

/**
 * @author Administrator
 *
 */
public interface ResourceDAO extends BaseDAO<Resource>{
	// 分页获取某个用户上传的资源
	public List<Resource> queryResourcesByUser(Page page,int user_id);
	
	// 获取最新的50个资源
	public List<Resource> queryNewResources(Page page);
	
	// 获取下载量最多的10个资源
	public List<Resource> queryMostDownload();
	
	// 获取某个学校院系拥有的资源
	public List<Resource> queryResourcesBySchDpm(Page page,int school_id,int department_id);
}
