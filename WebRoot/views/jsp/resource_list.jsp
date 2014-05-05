<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>CRSP</title>
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
</head>
<div id="top"></div>
<body>
	<%@ include file="header.jsp"%>
	<div class="container-fluid">
		<table class="table span10 offset1">
			<thead>
				<tr>
					<th>资源编号</th>
					<th>资源名</th>
					<th>上传人</th>
				</tr>
			</thead>
			<tbody>
				<c:if test="${fn:length(resourceList) == 0}">
					<tr>
						<td>没有资源!</td>
						<td></td>
						<td></td>
					</tr>
				</c:if>
				<c:forEach items="${resourceList}" var="resource">
					<tr>
						<td>${resource.id}</td>
						<td>${resource.resource_name}</td>
						<td>${resource.uploader_name}</td>
						<td><a href="${requestScope.basePath}/resource/list/1"
							class="btn btn-primary"><i
								class="icon-download-alt icon-white"></i>进入下载页</a></td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8"><c:if test="${from == 'newest'}">
							<div class="pagination">
								<span><a href="${requestScope.basePath}/resource/newest/">首页</a>
								</span><span><a
									href="${requestScope.basePath}/resource/newest/${page.pageNow - 1}">上一页</a>
								</span><span>&nbsp;&nbsp;当前页${page.pageNow}/${page.pageCount}&nbsp;&nbsp;</span><span><a
									href="${requestScope.basePath}/resource/newest/${page.pageNow + 1}">下一页</a>
								</span><span><a
									href="${requestScope.basePath}/resource/newest/${page.pageCount}">尾页</a>
								</span>
							</div>
						</c:if> <c:if test="${from == 'school'}">
							<div class="pagination">
								<span><a
									href="${requestScope.basePath}/resource/${schoolid}/${departmentid}">首页</a>
								</span><span><a
									href="${requestScope.basePath}/resource/${schoolid}/${departmentid}/${page.pageNow - 1}">上一页</a>
								</span><span>&nbsp;&nbsp;当前页${page.pageNow}/${page.pageCount}&nbsp;&nbsp;</span><span><a
									href="${requestScope.basePath}/resource/${schoolid}/${departmentid}/${page.pageNow + 1}">下一页</a>
								</span><span><a
									href="${requestScope.basePath}/resource/${schoolid}/${departmentid}/${page.pageCount}">尾页</a>
								</span>
							</div>
						</c:if></td>
				</tr>
			</tfoot>
		</table>
	</div>
	<%@ include file="footer.jsp"%>
</body>

</html>
