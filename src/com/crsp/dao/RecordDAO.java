/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import com.crsp.entity.Record;
import com.crsp.utils.Page;

/**
 * @author Administrator
 * 
 */
public interface RecordDAO extends BaseDAO<Record> {
	// 查询某个用户的资源记录
	public List<Record> queryRecordsByUser(Page page, int user_id);

	// 分页查询某个用户下载的资源记录
	public List<Record> queryUserDownRecords(Page page, int user_id);
}
