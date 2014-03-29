package com.crsp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crsp.dao.ProvinceDAO;
import com.crsp.entity.Province;

@Service
public class ProvinceService {
	@Autowired
	private ProvinceDAO provinceDAO;

	public ProvinceDAO getProvinceDAO() {
		return provinceDAO;
	}

	public void setProvinceDAO(ProvinceDAO provinceDAO) {
		this.provinceDAO = provinceDAO;
	}
	
	public List<Province> findAll() {
		return (List<Province>)provinceDAO.findAll();
	}
	
}
