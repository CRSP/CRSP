/**
 * 
 */
package com.crsp.dao;

import org.springframework.stereotype.Repository;

import com.crsp.entity.User;

/**
 * 用户DAO实现类
 * @author Administrator
 *
 */
@Repository("userDAO")
public class UserDAOImpl extends BaseDAOImpl<User> implements UserDAO{

}
