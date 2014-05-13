<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<footer style="height: 100px">
	<p style="text-align: center;margin-top: 100px">
		<a href="#">关于我们</a>&nbsp;|&nbsp;<a href="#">联系我们</a>&nbsp;|&nbsp;<a href="#">服务条款</a>&nbsp;|&nbsp;<a href="#">隐私策略</a>
	</p>
	<p style="text-align: center">&copy 2014
		五邑大学16-304</p>
</footer>
<script src="${ requestScope.viewPath }/plugins/jquery.js"></script>
<script src="${ requestScope.viewPath }/plugins/jquery.form.js"></script>
<script src="${ requestScope.viewPath }/plugins/sha1.js"></script>
<script src="${ requestScope.viewPath }/js/my.js"></script>

<script
	src="${ requestScope.viewPath }/plugins/bootstrap/js/bootstrap.min.js"></script>
<script>
	$(document).ready(function () {
		var ajax_options = {
			url: '${requestScope.basePath}/user/login',
			success: function (data) {
				//spring返回的是对象，不是json文本，简直不能再屌
				console.log(data);
				if(data['err']) alert(data['err']);
				if(data['ok']) location.reload();
			}
		};
		$('#login').submit(function (e) {
			e.preventDefault();
			$('#login').ajaxSubmit(ajax_options);
		});
	});
</script>
<style>
a {
	text-decoration: none;
}
</style>