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

<body>
	<%@ include file="header.jsp"%>
	<div class="container-fluid">
		<%@ include file="my_profile.jsp"%>
		<!-- my resources begin -->
		<div class="span6">
			<ul class="nav nav-tabs">
				<li><a href="${requestScope.basePath}/my/upload">上传资源</a>
				</li>
				<li><a href="${requestScope.basePath}/my/download">下载资源</a></li>
				<li class="active"><a href="${requestScope.basePath}/my/record">得分记录</a>
				</li>
			</ul>

			<!-- record begin -->
			<div class="tab-pane" id="my_record">
				<table class="table table-striped table-condensed">
					<caption style="font-size: 20px;">得分记录</caption>
					<thead>
						<tr>
							<th>分数</th>
							<th>时间</th>
							<th>加分来源</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="record" items="${records}">
							<tr>
								<td>${record.delta}</td>
								<td>${record.time}</td>
								<td><a href="#">${record.id}</a> <c:if
										test="${record.delta < 0}">
									-下载资源扣除积分
								</c:if> <c:if test="${record.delta > 0}">
									-上传资源得到下载,奖励积分
								</c:if></td>
							</tr>
						</c:forEach>
						<c:if test="${fn:length(records) == 0}">
							<tr>
								<td>没有记录!</td>
								<td></td>
								<td></td>
							</tr>
						</c:if>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="8">
								<div class="pagination">
									<span><a
										href="${requestScope.basePath}/my/record/">首页</a>
									</span><span><a
										href="${requestScope.basePath}/my/record/${page.pageNow - 1}">上一页</a>
									</span><span>&nbsp;&nbsp;当前页${page.pageNow}/${page.pageCount}&nbsp;&nbsp;</span><span><a
										href="${requestScope.basePath}/my/record/${page.pageNow + 1}">下一页</a>
									</span><span><a
										href="${requestScope.basePath}/my/record/${page.pageCount}">尾页</a>
									</span>
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<!-- record end -->
		</div>
	</div>
	<!-- my resources end -->
	<%@ include file="footer.jsp"%>
</body>
</html>
