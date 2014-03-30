package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Record;
import com.crsp.utils.Page;

/*资源记录表的DAO接口类*/
public interface RecordDAO {
	// 添加资源记录信息
	public void save(Record record);

	// 更新资源记录信息
	public void update(Record record);

	// 删除资源记录信息
	public void delete(Record record);

	// 根据Id查询资源记录信息
	public Record findById(int id);

	// 分页查询资源记录
	public List<?> findByPage(Page page);

	// 根据某个属性查询资源记录的信息
	public List<?> findByProperty(Page page, String propertyName, Object value);

	// 根据某个属性模糊查询资源记录的信息
	public List<?> findLikeProperty(Page page, String propertyName, Object value);

	// 查询总记录数
	public int queryCount(String hql);
}
