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
					<h4>五邑大学</h4>
				</div>
				<div class="modal-body">
					<img src="${requestScope.basePath}/views/avatars/default.jpg"
						class="img-polaroid" style="float: left;">
					<div>
						<p class="autocut_school_description" style="margin-left:150px">&nbsp;&nbsp;&nbsp;&nbsp;五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。五邑大学在培养高素质创新型人才、取得突破性科研进展,以及为国民经济发展和社会进步提供智力支持等方面都发挥着极其重要的作用。</p>
					</div>
				</div>
				<div class="modal-footer">
					<a href="${requestScope.basePath}/school/profile/1" class="btn btn-primary">去看看<i
						class=" icon-zoom-in icon-white"></i> </a>
				</div>
			</div>
		</c:forEach>
		<div class="span4 offset3">
			<span><a
				href="${ requestScope.path }modules/super_ctl.jsp?action=check">首页</a>
			</span><span><a
				href="${ requestScope.path }modules/super_ctl.jsp?action=check&page=${ requestScope.pageNow - 1 }">上一页</a>
			</span><span>当前页${ requestScope.pageNow }/${ requestScope.pageCount }</span><span><a
				href="${ requestScope.path }modules/super_ctl.jsp?action=check&page=${ requestScope.pageNow + 1 }">下一页</a>
			</span><span><a
				href="${ requestScope.path }modules/super_ctl.jsp?action=check&page=${ requestScope.pageCount }">尾页</a>
			</span>
		</div>
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
