package com.crsp.dao;

import java.util.List;

import com.crsp.entity.User;
import com.crsp.utils.Page;

/*用户管理的DAO接口类*/
/**
 * 
 * @author Administrator
 * 
 */
public interface UserDAO extends BaseDAO<User> {
	/**
	 * 通过用户账号查询用户
	 * 
	 * @param user_id
	 * @return
	 */
	public User findByUserId(String user_id);

	/**
	 * 分页查询用户信息
	 * 
	 * @param page
	 * @return
	 */
	public List<User> findByPage(Page page);
}
