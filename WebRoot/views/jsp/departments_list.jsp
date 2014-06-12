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
				<li><c:if test="${empty school_profile.school_avatar}">
						<a href="#"><img
							src="${requestScope.basePath}/views/avatars/default.jpg"
							class="img-polaroid"> </a>
					</c:if> <c:if test="${not empty school_profile.school_avatar}">
						<a href="#"><img
							src="${requestScope.schoolAvatarPath}/${school_profile.school_avatar}"
							class="img-polaroid" width="120"> </a>
					</c:if>
				</li>
				<li class="divider"></li>
				<li><a>学校:${school_profile.school_name}</a>
				</li>
				<li class="divider"></li>
				<li><a>省份:${school_profile.province_name}</a>
				</li>
				<li class="divider"></li>
				<li><a>资源数:${school_profile.resource_quanities}</a>
				</li>
			</ul>
		</div>
		<!-- my resources begin -->
		<div class="span6">
			<ul class="nav nav-tabs">
				<li class="active"><a>学院列表</a>
				</li>
			</ul>
			<div class="tab-pane active">
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
								<td>${department.id}</td>
								<td>${department.department_name}</td>
								<td>${department.resource_quantities}</td>
								<td><a
									href="${requestScope.basePath}/resource/${school_profile.id}/${department.id}"
									class="btn btn-primary">进入</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- my resources end -->
	<%@ include file="footer.jsp"%>
</body>
</html>
