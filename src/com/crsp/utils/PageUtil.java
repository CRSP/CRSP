package com.crsp.utils;

/*分页信息辅佐类*/
public class PageUtil {
	// 创建记录分页信息对象
	public static void initPage(Page page, int totalCount) {
		int pageSize = getPageSize(page.getPageSize());
		int pageNow = getPageNow(page.getPageNow());
		int pageCount = getPageCount(pageSize, totalCount);
		int beginIndex = getBeginIndex(pageSize, pageNow);
		boolean hasPrePage = hasPrePage(pageNow);
		boolean hasNextPage = hasNextPage(pageNow, pageCount);
		page.initPage(pageSize, pageNow, pageCount, beginIndex, totalCount,
				hasPrePage, hasNextPage);
	}

	// 每页的记录数
	public static int getPageSize(int pageSize) {
		return pageSize == 0 ? 10 : pageSize;// 默认为10
	}

	// 设置当前页
	public static int getPageNow(int pageNow) {
		return pageNow == 0 ? 1 : pageNow;// 默认当前页为第一页
	}

	// 设置总页数
	public static int getPageCount(int pageSize, int totalCount) {
		int pageCount;
		if (totalCount % pageSize == 0) {
			pageCount = totalCount / pageSize;
		} else {
			pageCount = totalCount / pageSize + 1;
		}
		return pageCount;
	}

	// 设置记录的起始点
	public static int getBeginIndex(int pageSize, int pageNow) {
		return (pageNow - 1) * pageSize;
	}

	// 是否有上一页
	public static boolean hasPrePage(int pageNow) {
		return pageNow == 1 ? false : true;
	}

	// 是否有下一页
	public static boolean hasNextPage(int pageNow, int pageCount) {
		return pageNow == pageCount || pageCount == 0 ? false : true;
	}
}
