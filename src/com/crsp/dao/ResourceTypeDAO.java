package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Resource_Type;
import com.crsp.utils.Page;

/*资源类型表的DAO接口类*/
public interface ResourceTypeDAO {
	// 添加资源类型信息
	public void save(Resource_Type resource_type);

	// 更新资源类型信息
	public void update(Resource_Type resource_type);

	// 删除资源类型信息
	public void delete(Resource_Type resource_type);

	// 根据Id查询资源类型信息
	public Resource_Type findById(int id);

	// 根据资源类型名查询
	public Resource_Type findByName(String name);

	// 分页查询所有的资源类型
	public List<?> findByPage(Page page);

	// 查询所有的资源类型
	public List<?> findAll();

	// 分页查找某个类型的资源
	public List<?> findResources(Page page,int type_id);

	// 根据某个属性查询资源类型的信息
	public List<?> findByProperty(Page page, String propertyName, Object value);

	// 根据某个属性模糊查询资源类型的信息
	public List<?> findLikeProperty(Page page, String propertyName, Object value);

	// 查询总记录数
	public int queryCount(String hql);
}
