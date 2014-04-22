/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.User;

/**
 * 用户管理DAO接口类
 * 
 * @author Administrator
 *
 */
public interface UserDAO extends BaseDAO<User>{
	// 根据user_id查询用户
	public User findByUserId(String user_id);
	// 查询所有的用户
	public List<User> queryAllUsers();
}
