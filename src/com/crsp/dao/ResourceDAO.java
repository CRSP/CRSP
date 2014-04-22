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
}
