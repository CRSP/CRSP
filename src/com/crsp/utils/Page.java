package com.crsp.utils;

/**
 * 记录分页信息的对象
 * 
 * @author Administrator
 * 
 */
public class Page {
	private int pageSize; // 每页的大小
	private int pageNow; // 当前页数
	private int pageCount; // 总页数
	private int beginIndex; // 起始点
	private int totalCount; // 总记录数
	private boolean hasPrePage; // 是否有上一页
	private boolean hasNextPage; // 是否有下一页

	// 构造函数
	public Page() {
	};

	public Page(int beginIndex, int pageSize) {
		super();
		this.pageSize = pageSize;
		this.beginIndex = beginIndex;
	}

	public void initPage(int pageSize, int pageNow, int pageCount,
			int beginIndex, int totalCount, boolean hasPrePage,
			boolean hasNextPage) {
		this.pageSize = pageSize;
		this.pageNow = pageNow;
		this.pageCount = pageCount;
		this.beginIndex = beginIndex;
		this.totalCount = totalCount;
		this.hasPrePage = hasPrePage;
		this.hasNextPage = hasNextPage;
	}

	// getter方法和setter方法
	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getPageNow() {
		return pageNow;
	}

	public void setPageNow(int pageNow) {
		this.pageNow = pageNow;
	}

	public int getPageCount() {
		return pageCount;
	}

	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

	public int getBeginIndex() {
		return beginIndex;
	}

	public void setBeginIndex(int beginIndex) {
		this.beginIndex = beginIndex;
	}

	public int getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
	}

	public boolean isHasPrePage() {
		return hasPrePage;
	}

	public void setHasPrePage(boolean hasPrePage) {
		this.hasPrePage = hasPrePage;
	}

	public boolean isHasNextPage() {
		return hasNextPage;
	}

	public void setHasNextPage(boolean hasNextPage) {
		this.hasNextPage = hasNextPage;
	}

	@Override
	public String toString() {
		return "Page [pageSize=" + pageSize + ", pageNow=" + pageNow
				+ ", pageCount=" + pageCount + ", beginIndex=" + beginIndex
				+ ", totalCount=" + totalCount + ", hasPrePage=" + hasPrePage
				+ ", hasNextPage=" + hasNextPage + "]";
	}
}
