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
		<div class="well span3">
			<ul class="nav nav-list">
				<li><a href="#"><img
						src="${requestScope.basePath}/views/avatars/default.jpg"
						class="img-polaroid"> </a>
				</li>
				<li class="divider"></li>
				<li><a href="#">学校:五邑大学</a>
				</li>
				<li class="divider"></li>
				<li><a href="#">省份:广东省</a>
				</li>
				<li class="divider"></li>
				<li><a href="#">资源数:50</a>
				</li>
			</ul>
		</div>
		<!-- my resources begin -->
		<div class="span6">
			<ul class="nav nav-tabs">
				<li class="active"><a href="${requestScope.basePath}/my/upload">学院列表</a>
				</li>
			</ul>
			<!-- upload begin -->
			<div class="tab-pane active" id="my_upload">
				<table class="table table-striped table-condensed">
					<caption style="font-size: 20px;">学院列表</caption>
					<thead>
						<tr>
							<th>#</th>
							<th>学院名</th>
							<th>资源数</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${departments}" var="department">
						<tr>
							<td>1</td>
							<td>${department.name}</td>
							<td>50</td>
							<td><a href="${requestScope.basePath}/resource/list" class="btn btn-primary">进入</a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
			</div>
			<!-- upload end -->
		</div>
	</div>
	<!-- my resources end -->
	<%@ include file="footer.jsp"%>
</body>
</html>
