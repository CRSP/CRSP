/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.entity.User;

/**
 * 用户DAO实现类
 * @author Administrator
 *
 */
@Repository("userDAO")
public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO{

	/* (non-Javadoc)
	 * @see com.crsp.dao.UserDAO#list()
	 */
	@Override
	public List<User> queryAllUsers() {
		return this.list("from User");
	}

	/* (non-Javadoc)
	 * @see com.crsp.dao.UserDAO#find(java.lang.String)
	 */
	@Override
	public User findByUserId(String user_id) {
		return (User) this.queryObject("from User u where u.user_id=?",user_id);
	}
}
