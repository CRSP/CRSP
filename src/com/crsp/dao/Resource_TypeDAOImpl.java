/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.entity.Resource_Type;

/**
 * @author Administrator
 *
 */
@Repository("resource_typeDAO")
public class Resource_TypeDAOImpl extends BaseDAOImpl<Resource_Type> implements Resource_TypeDAO {

	/* (non-Javadoc)
	 * @see com.crsp.dao.Resource_TypeDAO#list()
	 */
	@Override
	public List<Resource_Type> list() {
		return this.list("from Resource_Type order by id");
	}
}
