/**
 * 
 */
package com.crsp.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.entity.Resource;
import com.crsp.utils.Page;

/**
 * 资源管理DAO实现类
 * 
 * @author Administrator
 *
 */
@Repository("resourceDAO")
public class ResourceDAOImpl extends BaseDAOImpl<Resource> implements ResourceDAO{

	/* (non-Javadoc)
	 * @see com.crsp.dao.ResourceDAO#queryResourcesByUser(com.crsp.utils.Page, int)
	 */
	@Override
	public List<Resource> queryResourcesByUser(Page page, int user_id) {
		String hql = "from Resource r where r.user_id=" + user_id;
		return this.listByPage(hql, page);
	}
}
