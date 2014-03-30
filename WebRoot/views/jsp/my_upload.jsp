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
				<li class="active"><a href="${requestScope.basePath}/my/upload">上传资源</a>
				</li>
				<li><a href="${requestScope.basePath}/my/download">下载资源</a></li>
				<li><a href="${requestScope.basePath}/my/record">得分记录</a></li>
			</ul>


			<!-- upload begin -->
			<div class="tab-pane active" id="my_upload">
				<table class="table table-striped table-condensed">
					<caption style="font-size: 20px;">上传资源</caption>
					<thead>
						<tr>
							<th>资源名</th>
							<th>状态</th>
							<th>上传时间</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>
								<div class="autocut">
									MarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdf
								</div>
							</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Jacob</td>
							<td>审核中</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Larry</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Mark</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Jacob</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Larry</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Mark</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Jacob</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>
							<td>Larry</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
						<tr>

							<td>Mark</td>
							<td>已审核</td>
							<td>2013-10-25</td>
						</tr>
					</tbody>
					<tfoot>
						<tr>
							<td colspan="8">
								<div class="pagination">
									<span><a
										href="${ requestScope.path }modules/super_ctl.jsp?action=check">首页</a>
									</span><span><a
										href="${ requestScope.path }modules/super_ctl.jsp?action=check&page=${ requestScope.pageNow - 1 }">上一页</a>
									</span><span>当前页${ requestScope.pageNow }/${
										requestScope.pageCount }</span><span><a
										href="${ requestScope.path }modules/super_ctl.jsp?action=check&page=${ requestScope.pageNow + 1 }">下一页</a>
									</span><span><a
										href="${ requestScope.path }modules/super_ctl.jsp?action=check&page=${ requestScope.pageCount }">尾页</a>
									</span>
								</div>
							</td>
						</tr>
					</tfoot>
				</table>
			</div>
			<!-- upload end -->
		</div>
	</div>
	<!-- my resources end -->
	<%@ include file="footer.jsp"%>
</body>
</html>
