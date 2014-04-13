package com.crsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.crsp.dao.RecordDAO;
import com.crsp.entity.Record;
import com.crsp.utils.Page;



public class RecordService {
	@Autowired
	private RecordDAO recordDAO;
	
	//我的上传
	public List<Record> uploadRecord(Page page, String user_id){
		
		return (List<Record>) recordDAO.findByProperty(page, "user_id", user_id) ;
	}
	
	//我的下载
	public List<Record> downloadRecord(){
		return null;
		
	}
	
	//积分记录
	public List<Record> deltaRecord(){
		return null;
	}
	
	

}
