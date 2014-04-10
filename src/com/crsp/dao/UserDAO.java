package com.crsp.dao;

import java.util.List;

import com.crsp.entity.User;
import com.crsp.utils.Page;

/*用户管理的DAO接口类*/
public interface UserDAO {
	// 添加用户信息
	public void save(User user);

	// 修改用户信息
	public void update(User user);

	// 删除用户信息
	public void delete(User user);

	// 查询用户信息
	public User findById(int id);

	// 根据用户的账户查询用户信息
	public User findByUserId(String id);

	// 根据用户的某个属性查询用户
	public List<?> findByProperty(Page page, String propertyName, Object value);

	// 根据用户的某个属性模糊查询用户
	public List<?> findLikeProperty(Page page, String propertyName, Object value);

	// 分页查询该用户上传的资源信息
	public List<?> findResources(Page page, int user_id);

	// 分页查询该用户的资源记录
	public List<?> findRecords(Page page, int user_id);

	// 分页查询用户信息
	public List<?> findByPage(Page page);

	// 查询用户的名称
	public String findUserName(int id);

	// 查询某用户拥有的资源数量
	public int findResourceCount(int id);

	// 查询总记录数
	public int queryCount(String hql);
}
