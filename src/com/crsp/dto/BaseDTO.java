package com.crsp.dto;

import com.crsp.utils.Page;

public class BaseDTO {
	private Page page;// 分页对象

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}
}