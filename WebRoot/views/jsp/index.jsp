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
					<a href="${requestScope.basePath}/resource/upload"
						class="btn btn-success btn-large">我要分享 »</a>
				</p>
			</div>
		</div>
		<hr>
		<div class="span7">
			<c:forEach var="school" items="${schools}" varStatus="status">
				<div class="media">
					<a class="pull-left"
						href="${requestScope.basePath}/school/profile/${school.id}"> <img
						class="media-object " alt="64x64"
						src="${requestScope.basePath}/views/avatars/default.jpg"
						style="width: 64px; height: 64px;"> </a>
					<div class="media-body">
						<h4 class="media-heading">${school.school_name}</h4>
						${school.school_description}
					</div>
				</div>
			</c:forEach>
		</div>

		<div class="span5">
			<div id="myCarousel" class="carousel slide">
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1" class=""></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				</ol>
				<div class="carousel-inner">
					<div class="item active">
						<img src="${requestScope.basePath}/views/images/sample1.jpg"
							alt="">
						<div class="carousel-caption">
							<h4>First Thumbnail label</h4>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
						</div>
					</div>
					<div class="item">
						<img src="${requestScope.basePath}/views/images/sample2.jpg"
							alt="">
						<div class="carousel-caption">
							<h4>Second Thumbnail label</h4>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
						</div>
					</div>
					<div class="item">
						<img src="${requestScope.basePath}/views/images/sample3.jpg"
							alt="">
						<div class="carousel-caption">
							<h4>Third Thumbnail label</h4>
							<p>Cras justo odio, dapibus ac facilisis in, egestas eget
								quam. Donec id elit non mi porta gravida at eget metus. Nullam
								id dolor id nibh ultricies vehicula ut id elit.</p>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev">‹</a> <a class="right carousel-control"
					href="#myCarousel" data-slide="next">›</a>
			</div>
		</div>

		<!-- /hot-list begin -->
		<div class="span5">
			<table class="table table-striped table-condensed">
				<caption style="font-size: 20px;">最热资源</caption>
				<thead>
					<tr>
						<th>资源名</th>
						<th>学校</th>
						<th>上传人</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="resource" items="${resource}">
						<tr>
							<td>
								<div class="autocut">
									<a
										href="${requestScope.basePath}/resource/profile/${resource.id}">${resource.resource_name}</a>
								</div>
							</td>
							<td><a
								href="${requestScope.basePath}/school/profile/${resource.id}">${resource.school_name}</a>
							</td>
							<td><a
								href="${requestScope.basePath}/user/${resource.uploader_id}/profile/">${resource.uploader_name}</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
</body>
<script>
	$('.carousel').carousel({
		interval : 2000
	})
</script>
</html>
