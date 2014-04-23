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

	/* (non-Javadoc)
	 * @see com.crsp.dao.ResourceDAO#queryNewResources(com.crsp.utils.Page)
	 */
	@Override
	public List<Resource> queryNewResources() {
		Page page = new Page();
		page.setPageSize(50);
		String hql = "from Resource r order by r.time desc";
		return this.listByPage(hql, page);
	}

	/* (non-Javadoc)
	 * @see com.crsp.dao.ResourceDAO#queryMostDownload()
	 */
	@Override
	public List<Resource> queryMostDownload() {
		Page page = new Page();
		String hql = "from Resource r order by r.download_count desc";
		return this.listByPage(hql, page);
	}
}
