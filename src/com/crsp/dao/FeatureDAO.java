/**
 * 
 */
package com.crsp.dao;

import com.crsp.entity.Feature;

/**
 * @author Administrator
 *
 */
public interface FeatureDAO extends BaseDAO<Feature>{
	/**
	 * 按特征码查找
	 * @param code
	 * @return
	 */
	public Feature findByCode(String code);
}
