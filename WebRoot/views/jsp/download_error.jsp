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
				<h4>错误</h4>
			</div>
			<div class="modal-body">
				<p>${msg}</p>
			</div>
			<div class="modal-footer">
				<%-- <a
					href="${requestScope.basePath}/resource/download/${resource_profile.id}"
					class="btn btn-primary" id="download_button"> <i
					class="icon-download-alt icon-white"></i>下载 </a> --%>
			</div>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>
