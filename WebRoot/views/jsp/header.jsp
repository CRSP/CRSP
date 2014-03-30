<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	request.setAttribute("basePath", basePath);
	request.setAttribute("viewPath", basePath + "/views");
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<link
	href="${ requestScope.viewPath }/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${ requestScope.viewPath }/plugins/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${ requestScope.viewPath }/css/style.css" rel="stylesheet"
	media="screen">

<div class="navbar">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<p class="navbar-text pull-right">
				<!-- Button to trigger modal -->
				<c:if test="${sessionScope.ID == null || sessionScope.user_name == null}">
					<a href="#loginModel" class="navbar-link" data-toggle="modal">请登录</a>&nbsp;|&nbsp;
					<a href="${requestScope.basePath}/user/register/init" class="navbar-link" data-toggle="modal">我要注册</a>
				</c:if>
				<c:if test="${sessionScope.ID != null && sessionScope.user_name != null}">
					你好,<a href="${requestScope.basePath}/my/" class="navbar-link">${sessionScope.user_name}</a>&nbsp;|&nbsp;<a href="${requestScope.basePath}/user/logout">退出</a>
				</c:if>
			</p>

			<div class="nav-collapse collapse">
				<ul class="nav">
					<li><a href="${requestScope.basePath}/index">首页</a></li>
					<li><a href="#about">各大高校</a></li>
					<li><a href="#contact">最新资源</a></li>
					<li><a href="#contact">上传资源</a></li>
					<li><a href="#contact">购买积分</a></li>
					<li><a href="#contact">地区省份</a></li>
					<li><a href="#contact">关于</a></li>
					<li><a href="#contact">联系</a></li>
					<li>
						<form class="navbar-search pull-left">
							<input type="text" class="search-query" placeholder="搜索资源">
							<input type="submit" class="btn" value="提交">
						</form>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>

<form class="form-horizontal" method="post" action="${requestScope.basePath}/user/login" id="login">
	<!-- Modal -->
	<div class="modal hide fade" id="loginModel">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal"
				aria-hidden="true">&times;</button>
			<h6>
				<i class="icon-user"></i>登陆
			</h6>
		</div>
		<div class="modal-body">
			<div class="control-group">
				<label class="control-label">账号</label>
				<div class="controls">
					<input type="text" id="user_id" placeholder="账号" name="user_id">
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">密码</label>
				<div class="controls">
					<input type="password" id="user_pwd" placeholder="密码" name="user_pwd">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox"> <input type="checkbox" name="rememberme">
						记住我&nbsp;|&nbsp;<a href="#">忘记密码?</a></label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn">关闭</a> <input type="submit" class="btn btn-success" value="登陆"/>
		</div>
	</div>
</form>
