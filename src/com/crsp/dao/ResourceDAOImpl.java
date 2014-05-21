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
public class ResourceDAOImpl extends BaseDAOImpl<Resource> implements
		ResourceDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.ResourceDAO#queryResourcesByUser(com.crsp.utils.Page,
	 * int)
	 */
	@Override
	public List<Resource> queryResourcesByUser(Page page, int user_id) {
		String hql = "from Resource r where r.user_id=" + user_id + " order by r.time desc";
		return super.listByPage(hql, page);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.ResourceDAO#queryNewResources(com.crsp.utils.Page)
	 */
	@Override
	public List<Resource> queryNewResources(Page page) {
		String hql = "from Resource r order by r.time desc";
		return super.listByPage(hql, page);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.ResourceDAO#queryMostDownload()
	 */
	@Override
	public List<Resource> queryMostDownload() {
		Page page = new Page();
		String hql = "from Resource r order by r.download_count desc";
		return super.listByPage(hql, page);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.ResourceDAO#queryResourcesBySchDpm(com.crsp.utils.Page,
	 * int, int)
	 */
	@Override
	public List<Resource> queryResourcesBySchDpm(Page page, int school_id,
			int department_id) {
		String hql = "from Resource r where r.school_id=" + school_id
				+ " and r.department_id=" + department_id;
		return super.listByPage(hql, page);
	}

	/* (non-Javadoc)
	 * @see com.crsp.dao.ResourceDAO#queryResourceLikeName(java.lang.String, com.crsp.utils.Page)
	 */
	@Override
	public List<Resource> queryResourceLikeName(String keyword, Page page) {
		String hql = "from Resource r where r.name like '%" + keyword + "%'";
		return super.listByPage(hql, page);
	}
}
