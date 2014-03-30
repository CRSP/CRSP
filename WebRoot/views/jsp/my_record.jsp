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
				<li><a href="${requestScope.basePath}/my/upload">上传资源</a></li>
				<li><a href="${requestScope.basePath}/my/download">下载资源</a>
				</li>
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
						<tr>

							<td>-2</td>
							<td>2014-03-30</td>
							<td><a href="#">5038400</a>-下载资源扣除积分</td>
						</tr>
						<tr>

							<td>+1</td>
							<td>2014-03-30</td>
							<td><a href="#">4238022</a>-评分奖励积分</td>
						</tr>
						<tr>

							<td>+1</td>
							<td>2014-03-30</td>
							<td><a href="#">4973613</a>-评分奖励积分</td>
						</tr>
						<tr>
							<td>+1</td>
							<td>2014-03-30</td>
							<td><a href="#">4423291</a>-评分奖励积分</td>
						</tr>
						<tr>

							<td>-3</td>
							<td>2013-07-06</td>
							<td><a href="#">4034189</a>-下载资源扣除积分</td>
						</tr>
						<tr>
							<td>-3</td>
							<td>2013-07-06</td>
							<td><a href="#">3042188</a>-下载资源扣除积分</td>
						</tr>
						<tr>
							<td>-3</td>
							<td>2013-07-06</td>
							<td><a href="#">3042188</a>-下载资源扣除积分</td>
						</tr>
						<tr>
							<td>-3</td>
							<td>2013-07-06</td>
							<td><a href="#">3042188</a>-下载资源扣除积分</td>
						</tr>
						<tr>
							<td>-3</td>
							<td>2013-07-06</td>
							<td><a href="#">3042188</a>-下载资源扣除积分</td>
						</tr>
						<tr>
							<td>-3</td>
							<td>2013-07-06</td>
							<td><a href="#">3042188</a>-下载资源扣除积分</td>
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
								</div></td>
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
