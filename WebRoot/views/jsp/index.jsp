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
		<div class="row-fluid">
			<div class="hero-unit">
				<h1>Let's share!</h1>
				<p>This is a template for a simple marketing or informational
					website. It includes a large callout called the hero unit and three
					supporting pieces of content. Use it as a starting point to create
					something more unique.</p>
				<p>
					<a href="#" class="btn btn-success btn-large">我要分享 »</a>
				</p>
			</div>
		</div>
		<hr>
		<div class="span7">
			<div class="row-fluid myrow">
				<c:forEach var="school" items="${schools}" varStatus="status"
					begin="0" end="2">
					<div class="span4">
						<div class="span12">
							<div class="span12 schoolname">${school.name}</div>
							<img src="${school.avatar}" class="img-polaroid span4" />
							<div>
								<p>${school.description}</p>
							</div>
						</div>
						<div class="btn">去看看</div>
					</div>
				</c:forEach>
			</div>
			<div class="row-fluid">
				<c:forEach var="school" items="${schools}" varStatus="status"
					begin="3" end="5">
					<div class="span4">
						<div class="span12">
							<div class="span12 schoolname">${school.name}</div>
							<img src="${school.avatar}" class="img-polaroid span4" />
							<div>
								<p>${school.description}</p>
							</div>
						</div>
						<div class="btn">去看看</div>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- /hot-list begin -->
		<div class="span3">
			<table class="table table-striped table-condensed">
				<caption style="font-size: 20px;">最新资源</caption>
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
						<td>@mdo</td>
					</tr>
					<tr>

						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>

						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>

						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>

						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>

						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>

						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>
					<tr>

						<td>Jacob</td>
						<td>Thornton</td>
						<td>@fat</td>
					</tr>
					<tr>

						<td>Larry</td>
						<td>the Bird</td>
						<td>@twitter</td>
					</tr>
					<tr>

						<td>Mark</td>
						<td>Otto</td>
						<td>@mdo</td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
</html>
