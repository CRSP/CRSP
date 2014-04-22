/**
 * 
 */
package com.crsp.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.crsp.entity.Record;
import com.crsp.utils.Page;

/**
 * @author Administrator
 * 
 */
@Repository("recordDAO")
public class RecordDAOImpl extends BaseDAOImpl<Record> implements RecordDAO {

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.RecordDAO#queryRecordsByUser(com.crsp.utils.Page, int)
	 */
	@Override
	public List<Record> queryRecordsByUser(Page page, int user_id) {
		String hql = "from Record r where r.upload_user_id=? or r.download_user_id=?";
		return this.listByPage(hql, new Object[] { user_id, user_id }, page);
	}

	/*
	 * (non-Javadoc)
	 * 
	 * @see com.crsp.dao.RecordDAO#queryUserDownRecord(com.crsp.utils.Page, int)
	 */
	@Override
	public List<Record> queryUserDownRecords(Page page, int user_id) {
		String hql = "from Record r where r.download_user_id=" + user_id;
		return this.listByPage(hql, page);
	}
}
