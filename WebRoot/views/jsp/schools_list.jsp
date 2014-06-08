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

	<a href="#top"><img
		src="${requestScope.basePath}/views/images/back.png" class=""
		style="position: fixed; margin-top: 200px; margin-left: 50px"
		id="rollback"> </a>
	<div class="container-fluid">
		<c:forEach items="${schools}" var="school">
			<div class="modal"
				style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1; max-width: 100%;">
				<div class="modal-header">
					<h4>${school.school_name}</h4>
				</div>
				<div class="modal-body">
					<c:if test="${empty school.school_avatar}">
						<img src="${requestScope.basePath}/views/avatars/default.jpg"
							class="img-polaroid" style="float: left;">
					</c:if>
					<c:if test="${not empty school.school_avatar}">
						<img src="${requestScope.schoolAvatarPath}/${school.school_avatar}"
							class="img-polaroid" style="float: left;" width="120" height="120">
					</c:if>
					<div>
						<p class="autocut_school_description" style="margin-left:150px">&nbsp;&nbsp;&nbsp;&nbsp;${school.school_description}</p>
					</div>
				</div>
				<div class="modal-footer">
					<a href="${requestScope.basePath}/school/profile/${school.id}" class="btn btn-primary">去看看<i
						class=" icon-zoom-in icon-white"></i> </a>
				</div>
			</div>
		</c:forEach>
		<c:if test="${from == 'all'}">
			<div class="span4 offset3">
				<span><a
					href="${ requestScope.basePath }/school/list">首页</a>
				</span><span><a
					href="${ requestScope.basePath }/school/list/${page.pageNow - 1}">上一页</a>
				</span><span>当前页&nbsp;&nbsp;${page.pageNow}/${page.pageCount}&nbsp;&nbsp;</span><span><a
					href="${ requestScope.basePath }/school/list/${page.pageNow + 1}">下一页</a>
				</span><span><a
					href="${ requestScope.basePath }/school/list/${page.pageCount}">尾页</a>
				</span>
			</div>
		</c:if>
	</div>
	<%@ include file="footer.jsp"%>
</body>
<script>
	$(function() {
		$.fn.manhuatoTop = function(options) {
			var defaults = {
				showHeight : 150,
				speed : 500
			};
			var options = $.extend(defaults, options);
			var $toTop = $(this);
			var $top = $("#rollback");
			$toTop.scroll(function() {
				var scrolltop = $(this).scrollTop();
				if (scrolltop >= options.showHeight) {
					$top.show();
				} else {
					$top.hide();
				}
			});
			$top.click(function() {
				$("html,body").animate({
					scrollTop : 0
				}, options.speed);
			});
		}
		$('#rollback').manhuatoTop();
	});
</script>
</html>
