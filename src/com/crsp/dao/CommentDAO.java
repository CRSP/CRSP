/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Comment;
import com.crsp.utils.Page;

/**
 * @author Administrator
 * 
 */
public interface CommentDAO extends BaseDAO<Comment> {
	/**
	 * 分页获取某个资源的评论信息
	 * 
	 * @param page
	 * @return
	 */
	public List<Comment> listByResource(int resource_id, Page page);
}
