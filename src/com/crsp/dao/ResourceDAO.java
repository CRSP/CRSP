package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Resource;
import com.crsp.utils.Page;

/*资源表的DAO接口类*/
public interface ResourceDAO {
	// 添加资源信息
	public void save(Resource resource);

	// 更新资源信息
	public void update(Resource resource);

	// 删除资源信息
	public void delete(Resource resource);

	// 根据Id查询资源信息
	public Resource findById(int id);

	// 根据资源名查询
	public Resource findByName(String name);

	// 分页查询资源
	public List<?> findByPage(Page page);

	// 分页查找该资源的记录
	public List<?> findRecords(Page page, int resource_id);

	// 根据某个属性查询资源的信息
	public List<?> findByProperty(Page page, String propertyName, Object value);

	// 根据某个属性模糊查询资源的信息
	public List<?> findLikeProperty(Page page, String propertyName, Object value);

	// 查询总记录数
	public int queryCount(String hql);
}
