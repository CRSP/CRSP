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
					资源大小：<c:if test="${resource_profile.size >= 1024 * 1024 * 1024}">${resource_profile.size / (1024 * 1024 * 1024)}GB</c:if>
							<c:if test="${resource_profile.size >= 1024 * 1024 && resource_profile.size <= 1024 * 1024 * 1024 - 1}">${resource_profile.size / (1024 * 1024)}MB</c:if>
							<c:if test="${resource_profile.size <= 1024 * 1024 - 1 && resource_profile.size >= 1024}">${resource_profile.size / 1024}KB</c:if>
							<c:if test="${resource_profile.size <= 1024 - 1 && resource_profile.size >= 0}">${resource_profile.size}B</c:if>
				</p>
				<p>上传日期：${resource_profile.time}</p>
				<p>资源积分：${resource_profile.price}分</p>
				<p>下载次数：${resource_profile.download_count}</p>
				<p>上 传 者：${resource_profile.uploader_name}</p>
				<p>资源类型：${resource_profile.type_name}</p>
				<p>资源状态: ${resource_profile.status_name}</p>
			</div>
			<div class="modal-footer">
				<button href="#" class="btn btn-primary" id="download_button">
					<i class="icon-download-alt icon-white"></i>下载
				</button>
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
			if(!data['isLogined']) {
				$('#loginModel').modal('show');
			} else {
				alert(data['rUrl']);
			}
		})
	});
</script>
</html>
