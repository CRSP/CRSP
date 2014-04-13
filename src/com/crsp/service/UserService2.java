/**
 * 
 */
package com.crsp.service;

import com.crsp.entity.User;

/**
 * @author Administrator
 *
 */
public interface UserService2 {
	public User find(String user_id);
	public User find(int id);
	public void add(User user);
}
