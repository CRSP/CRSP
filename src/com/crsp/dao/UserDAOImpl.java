package com.crsp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.entity.User;
import com.crsp.utils.Page;

/**
 * 
 * @author Administrator 用户管理的DAO实现类*
 */
@Repository("userDAO")
public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.UserDAO#findByUserId(java.lang.String)
	 */
	@Override
	public User findByUserId(String user_id) {
		String hql = "from User u where u.user_id=?";
		return (User) this.queryObject(hql, user_id);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.UserDAO#findByPage(com.crsp.utils.Page)
	 */
	@Override
	public List<User> findByPage(Page page) {
		String hql = "from User";
		return this.listByPage(hql, page);
	}
}
