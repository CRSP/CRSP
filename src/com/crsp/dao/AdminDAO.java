package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Admin;
import com.crsp.utils.Page;

/*管理员表的DAO接口类*/
public interface AdminDAO {
	// 添加管理员信息
	public void save(Admin admin);

	// 更新管理员信息
	public void update(Admin admin);

	// 删除管理员信息
	public void delete(Admin admin);

	// 根据Id查询管理员信息
	public Admin findById(int id);
	
	// 分页查询所有的管理员
	public List<?> findByPage(Page page);
	
	// 根据管理员的用户名查询
	public Admin findByName(String name);

	// 根据某个属性查询管理员的信息
	public List<?> findByProperty(Page page,String propertyName, Object value);
	
	// 根据某个属性模糊查询管理员的信息
	public List<?> findLikeProperty(Page page,String propertyName, Object value);
	
	// 查询总记录数
	public int queryCount(String hql);
}
