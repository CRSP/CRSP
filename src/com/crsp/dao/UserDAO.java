package com.crsp.dao;

import java.util.List;

import com.crsp.entity.User;

/*用户管理的DAO接口类*/
public interface UserDAO {
	// 添加用户
	public void save(User user);

	// 修改用户
	public void update(User user);

	// 删除用户
	public void delete(User user);

	// 查询用户
	public User findById(int id);

	// 查询所有用户
	public List<?> findAll();

	// 根据用户的某个属性查询用户
	public List<?> findByProperty(String propertyName, Object value);

	// 根据用户的某个属性模糊查询用户
	public List<?> findLikeProperty(String propertyName, Object value);

	// 根据学校查询用户
	public List<?> findBySchool(int school_id);

	// 根据院系查询用户
	public List<?> findByDepartment(int department_id);

	User findByUserId(String id);
}
