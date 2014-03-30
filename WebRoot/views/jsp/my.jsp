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
		<!-- my profile begin -->
		<div class="well span3">
			<ul class="nav nav-list">
				<li><a href="#"><img
						src="${requestScope.basePath}/views/avatars/default.jpg"
						class="img-polaroid"> </a></li>
				<li class="divider"></li>
				<li><a href="#">用户:11080715</a></li>
				<li class="divider"></li>
				<li><a href="#">学校:五邑大学</a></li>
				<li class="divider"></li>
				<li><a href="#">学院:计算机学院</a></li>
				<li class="divider"></li>
				<li><a href="#">剩余积分:20</a></li>
				<li class="divider"></li>
				<li><a href="#" class="btn btn-success">我要上传</a></li>
			</ul>
		</div>
		<!-- my profile end -->
		<!-- my resources begin -->
		<div class="span6">
			<div class="tabbable">
				<!-- Only required for left/right tabs -->
				<ul class="nav nav-tabs">
					<li class="active"><a href="#my_upload" data-toggle="tab">上传资源</a>
					</li>
					<li><a href="#my_download" data-toggle="tab">下载资源</a></li>
					<li><a href="#my_star" data-toggle="tab">收藏资源</a></li>
					<li><a href="#my_record" data-toggle="tab">得分记录</a></li>
				</ul>

				<div class="tab-content">
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
					<!-- download begin -->
					<div class="tab-pane" id="my_download">
						<table class="table table-striped table-condensed">
							<caption style="font-size: 20px;">下载资源</caption>
							<thead>
								<tr>

									<th>资源名</th>
									<th>学校</th>
									<th>上传人</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="autocut">
											MarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdf
										</div></td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Jacob</td>
									<td>Thornton</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Larry</td>
									<td>the Bird</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Mark</td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Jacob</td>
									<td>Thornton</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Larry</td>
									<td>the Bird</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Mark</td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Jacob</td>
									<td>Thornton</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Larry</td>
									<td>the Bird</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Mark</td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
							</tbody>
						</table>
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
					</div>
					<!-- download end -->
					<!-- star begin -->
					<div class="tab-pane" id="my_star">
						<table class="table table-striped table-condensed">
							<caption style="font-size: 20px;">收藏资源</caption>
							<thead>
								<tr>

									<th>资源名</th>
									<th>上传人</th>
									<th>上传时间</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>
										<div class="autocut">
											MarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdfMarkafdfasdfasfasdfasdfasdf
										</div></td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Jacob</td>
									<td>Thornton</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Larry</td>
									<td>the Bird</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Mark</td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Jacob</td>
									<td>Thornton</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Larry</td>
									<td>the Bird</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Mark</td>
									<td>Otto</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Jacob</td>
									<td>Thornton</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Larry</td>
									<td>the Bird</td>
									<td>2013-10-25</td>
								</tr>
								<tr>

									<td>Mark</td>
									<td>Otto</td>
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
					<!-- star end -->
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
										</div>
									</td>
								</tr>
							</tfoot>
						</table>
					</div>
					<!-- record end -->
				</div>
			</div>

		</div>
		<!-- my resources end -->

	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
