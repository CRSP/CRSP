/**
 * 
 */
package com.crsp.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.dao.SchoolDAO;
import com.crsp.entity.School;
import com.crsp.utils.Page;

/**
 * @author Administrator
 *
 */
@Repository("schoolDAO")
public class SchoolDAOImpl extends BaseDAOImpl<School> implements SchoolDAO{

	/* (non-Javadoc)
	 * @see com.crsp.dao.SchoolDAO#querySchoolByPage(com.crsp.utils.Page)
	 */
	@Override
	public List<School> querySchoolByPage(Page page) {
		String hql = "from School";
		return this.listByPage(hql, page);
	}

	/* (non-Javadoc)
	 * @see com.crsp.dao.SchoolDAO#querySchoolByProvince(com.crsp.utils.Page, int)
	 */
	@Override
	public List<School> querySchoolByProvince(Page page, int province_id) {
		String hql = "select new School(s.id,s.name,s.resource_count,s.province,s.description) from School s where s.province.id=" + province_id;
		return this.listByPage(hql, page);
	}

	/* (non-Javadoc)
	 * @see com.crsp.dao.SchoolDAO#querySchoolMostResource()
	 */
	@Override
	public List<School> querySchoolMostResource() {
		Page page = new Page();
		page.setPageSize(7);
		String hql = "from School s order by s.resource_count desc";
		return this.listByPage(hql, page);
	}
}
