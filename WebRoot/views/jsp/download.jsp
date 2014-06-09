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
				<a data-toggle="modal" href="#CommentModel" class="btn btn-success"
					id="comment_button"> <i class="icon-comment icon-white"></i>评论
				</a> <a data-toggle="modal" href="#MockModel" class="btn btn-danger" id="inform_button" id="mock_button"> <i
					class="icon-warning-sign icon-white"></i>举报 </a> <a
					href="${requestScope.basePath}/resource/download/${resource_profile.id}"
					class="btn btn-primary" id="download_button"> <i
					class="icon-download-alt icon-white"></i>下载 </a>
			</div>
		</div>
		<div class="offset2 span8">
			<c:if test="${fn:length(resource_comments) == 0}">
				没有评论!
			</c:if>
			<c:forEach items="${resource_comments}" var="comment">
				<div class="media">
					<a class="pull-left" href="#"> <c:if
							test="${comment.user_avatar != ''}">
							<img class="media-object" data-src="holder.js/64x64" alt="64x64"
								src="${requestScope.basePath}/views/avatars/${comment.user_avatar}"
								style="width: 64px; height: 64px;">
						</c:if> <c:if test="${comment.user_avatar == ''}">
							<img class="media-object" data-src="holder.js/64x64" alt="64x64"
								src="${requestScope.basePath}/views/avatars/default.jpg"
								style="width: 64px; height: 64px;">
						</c:if> </a>
					<div class="media-body">
						<h4 class="media-heading">
							<a
								href="${requestScope.basePath}/user/${comment.user_id}/profile/">${comment.user_name}</a><span
								class="pull-right">${comment.date}</span>
						</h4>
						${comment.content}
					</div>
				</div>
			</c:forEach>
			<div class="pagination">
				<span><a
					href="${requestScope.basePath}/resource/profile/${resource_profile.id}/">首页</a>
				</span><span><a
					href="${requestScope.basePath}/resource/profile/${resource_profile.id}/${page.pageNow - 1}">上一页</a>
				</span><span>&nbsp;&nbsp;当前页${page.pageNow}/${page.pageCount}&nbsp;&nbsp;</span><span><a
					href="${requestScope.basePath}/resource/profile/${resource_profile.id}/${page.pageNow + 1}">下一页</a>
				</span><span><a
					href="${requestScope.basePath}/resource/profile/${page.pageNow}/${page.pageCount}">尾页</a>
				</span>
			</div>
		</div>
	</div>

	<form class="form-horizontal" method="post"
		action="${requestScope.basePath}/resource/comments/post" id="comment">
		<div class="modal hide fade" id="CommentModel">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h6>
					<i class="icon-comment"></i>评论
				</h6>
			</div>
			<div class="modal-body">
				<textarea rows="4" class="span5" name="content"></textarea>
				<input type="hidden" name="resource_id"
					value="${resource_profile.id}" />
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">关闭</a> <input
					type="submit" class="btn btn-success" value="提交" />
			</div>
		</div>
	</form>
	<form class="form-horizontal" method="post"
		action="${requestScope.basePath}/resource/mocks/post" id="mock">
		<div class="modal hide fade" id="MockModel">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal"
					aria-hidden="true">&times;</button>
				<h6>
					<i class="icon-warning-sign"></i>举报
				</h6>
			</div>
			<div class="modal-body">
				<textarea rows="4" class="span5" name="content"></textarea>
				<input type="hidden" name="resource_id"
					value="${resource_profile.id}" />
			</div>
			<div class="modal-footer">
				<a href="#" class="btn" data-dismiss="modal">关闭</a> <input
					type="submit" class="btn btn-success" value="提交" />
			</div>
		</div>
	</form>
	<%@ include file="footer.jsp"%>
</body>

<script>
	$(document).ready(function() {
		var ajax_options = {
			url : '${requestScope.basePath}/resource/comments/post',
			success : function(data) {
				if (data['msg'])
					alert(data['msg']);
				if (data['ok']) {
					alert(data['ok']);
					location.reload();
				}
			}
		};
		var ajax_options_mock = {
			url : '${requestScope.basePath}/resource/mocks/post',
			success : function(data) {
				if (data['msg'])
					alert(data['msg']);
				if (data['ok']) {
					alert(data['ok']);
					location.reload();
				}
			}
		};
		$('#comment').submit(function(e) {
			e.preventDefault();
			//是否已登陆			
			var islogined = false;
			$.post('${requestScope.basePath}/user/islogined', function(data) {
				islogined = data['islogined'];
				if (!islogined) {
					alert("请先登陆!");
				}
				if (!islogined)
					return;
				$('#comment').ajaxSubmit(ajax_options);
			});
		});
		$('#mock').submit(function(e) {
			e.preventDefault();
			//是否已登陆			
			var islogined = false;
			$.post('${requestScope.basePath}/user/islogined', function(data) {
				islogined = data['islogined'];
				if (!islogined) {
					alert("请先登陆!");
				}
				if (!islogined)
					return;
				$('#mock').ajaxSubmit(ajax_options_mock);
			});
		});
	});
</script>
</html>
