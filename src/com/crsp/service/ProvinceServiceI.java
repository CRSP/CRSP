package com.crsp.service;

import com.crsp.entity.Province;
import com.crsp.utils.Pages;

public interface ProvinceServiceI {
	public Pages<Province> getProvinces();
}
