package com.micromall.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.micromall.dao.GoodsDao;

@Service
public class GoodsService {
	@Autowired
	private GoodsDao GoodsDao;

	public GoodsDao getGoodsDao() {
		return GoodsDao;
	}

	public void setGoodsDao(GoodsDao goodsDao) {
		GoodsDao = goodsDao;
	}
	
	public void save() {
		this.GoodsDao.save();
	}
}
