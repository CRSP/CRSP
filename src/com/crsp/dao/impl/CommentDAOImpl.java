package com.crsp.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.dao.CommentDAO;
import com.crsp.entity.Comment;
import com.crsp.utils.Page;

/**
 * @author Administrator
 * 
 */
@Repository
public class CommentDAOImpl extends BaseDAOImpl<Comment> implements CommentDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.CommentDAO#listByPage(int, com.crsp.utils.Page)
	 */
	@Override
	public List<Comment> listByResource(int resource_id, Page page) {
		String hql = "from Comment c where c.resource.id=" + resource_id;
		return super.listByPage(hql, page);
	}

}
