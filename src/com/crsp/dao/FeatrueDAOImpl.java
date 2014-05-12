/**
 * 
 */
package com.crsp.dao;

import org.springframework.stereotype.Repository;

import com.crsp.entity.Feature;

/**
 * @author Administrator
 *
 */
@Repository("featrueDAO")
public class FeatrueDAOImpl extends BaseDAOImpl<Feature> implements FeatureDAO{

	/* (non-Javadoc)
	 * @see com.crsp.dao.FeatureDAO#findByCode(java.lang.String)
	 */
	@Override
	public Feature findByCode(String code) {
		String hql = "from Feature f where f.code=" + code;
		return (Feature) super.queryObject(hql);
	}

}
