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
		<div class="modal"
			style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1; max-width: 100%;">
			<div class="modal-header">
				<h4>${resource_profile.resource_name}</h4>
			</div>
			<div class="modal-body">
				<p>
					资源大小：
					<c:if test="${resource_profile.size >= 1024 * 1024 * 1024}">
						<fmt:formatNumber
							value="${resource_profile.size / (1024 * 1024 * 1024)}"
							pattern="#.##" minFractionDigits="2"></fmt:formatNumber>GB</c:if>
					<c:if
						test="${resource_profile.size >= 1024 * 1024 && resource_profile.size <= 1024 * 1024 * 1024 - 1}">
						<fmt:formatNumber value="${resource_profile.size / (1024 * 1024)}"
							pattern="#.##" minFractionDigits="2"></fmt:formatNumber>MB</c:if>
					<c:if
						test="${resource_profile.size <= 1024 * 1024 - 1 && resource_profile.size >= 1024}">
						<fmt:formatNumber value="${resource_profile.size / 1024}"
							pattern="#.##" minFractionDigits="2"></fmt:formatNumber>KB</c:if>
					<c:if
						test="${resource_profile.size <= 1024 - 1 && resource_profile.size >= 0}">
						<fmt:formatNumber value="${resource_profile.size}" pattern="#.##"
							minFractionDigits="2"></fmt:formatNumber>B</c:if>
				</p>
				<p>上传日期：${resource_profile.time}</p>
				<p>资源积分：${resource_profile.price}分</p>
				<p>下载次数：${resource_profile.download_count}</p>
				<p>上 传 者：${resource_profile.uploader_name}</p>
				<p>资源类型：${resource_profile.type_name}</p>
				<p>资源状态: ${resource_profile.status_name}</p>
			</div>
			<div class="modal-footer">
				<a
					href="${requestScope.basePath}/resource/download/${resource_profile.id}"
					class="btn btn-primary" id="download_button"> <i
					class="icon-download-alt icon-white"></i>下载 </a>
			</div>
		</div>
		<div class="offset2 span8">
			<div class="media">
				<a class="pull-left" href="#"> <img class="media-object"
					data-src="holder.js/64x64" alt="64x64"
					src="${requestScope.basePath}/views/avatars/default.jpg"
					style="width: 64px; height: 64px;"> </a>
				<div class="media-body">
					<h4 class="media-heading"><a>18厘米</a><span class="pull-right">2014-5-24</span></h4>
					么么哒.
				</div>
			</div>
			<div class="media">
				<a class="pull-left" href="#"> <img class="media-object"
					data-src="holder.js/64x64" alt="64x64"
					src="${requestScope.basePath}/views/avatars/default.jpg"
					style="width: 64px; height: 64px;"> </a>
				<div class="media-body">
					<h4 class="media-heading"><a>40厘米</a><span class="pull-right">2014-5-24</span></h4>
					Nice，这个资源我找很久了，谢谢PO主.
				</div>
			</div>
			<div class="media">
				<a class="pull-left" href="#"> <img class="media-object"
					data-src="holder.js/64x64" alt="64x64"
					src="${requestScope.basePath}/views/avatars/default.jpg"
					style="width: 64px; height: 64px;"> </a>
				<div class="media-body">
					<h4 class="media-heading"><a>2厘米の大和民族</a><span class="pull-right">2014-5-24</span></h4>
					不错不错......
				</div>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
<script>
	$('#download_button').click(
			function() {
				$.get('${requestScope.basePath}/resource/download/' + '1',
						function(data) {
							if (!data['isLogined']) {
								$('#loginModel').modal('show');
							} else {
								alert(data['rUrl']);
							}
						})
			});
</script>
</html>
