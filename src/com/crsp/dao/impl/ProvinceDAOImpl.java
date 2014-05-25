/**
 * 
 */
package com.crsp.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.dao.ProvinceDAO;
import com.crsp.entity.Province;

/**
 * @author Administrator
 *
 */
@Repository("provinceDAO")
public class ProvinceDAOImpl extends BaseDAOImpl<Province> implements ProvinceDAO{

	/* (non-Javadoc)
	 * @see com.crsp.dao.ProvinceDAO#queryAll()
	 */
	@Override
	public List<Province> queryAll() {
		String hql = "from Province";
		return this.list(hql);
	}

}
