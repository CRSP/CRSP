package com.crsp.utils;

import java.util.List;

public class Pages<T> {
	private Page page;
	private List<T> pageList;
	public Page getPage() {
		return page;
	}
	public void setPage(Page page) {
		this.page = page;
	}
	public List<T> getPageList() {
		return pageList;
	}
	public void setPageList(List<T> pageList) {
		this.pageList = pageList;
	}
}
