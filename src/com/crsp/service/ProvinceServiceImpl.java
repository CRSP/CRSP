/**
 * 
 */
package com.crsp.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.ProvinceDAO;
import com.crsp.entity.Province;
import com.crsp.utils.Pages;

/**
 * @author Administrator
 *
 */
@Service
public class ProvinceServiceImpl implements ProvinceServiceI{
	@Autowired
	private ProvinceDAO provinceDAO;
	/* (non-Javadoc)
	 * @see com.crsp.service.ProvinceServiceI#getProvinces()
	 */
	@Override
	public Pages<Province> getProvinces() {
		Pages<Province> pages = new Pages<Province>();
		pages.setPageList(provinceDAO.queryAll());
		return pages;
	}
}
