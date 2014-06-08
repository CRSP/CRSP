<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path;
	String schoolAvatarPath = "http://localhost:8080/crspAdmin/avatar";
	request.setAttribute("basePath", basePath);
	request.setAttribute("viewPath", basePath + "/views");
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<link
	href="${ requestScope.viewPath }/plugins/bootstrap/css/bootstrap.min.css"
	rel="stylesheet" media="screen">
<link
	href="${ requestScope.viewPath }/plugins/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<link href="${ requestScope.viewPath }/css/style.css" rel="stylesheet"
	media="screen">

<div class="navbar navbar-inverse">
	<div class="navbar-inner">
		<div class="container">
			<button type="button" class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<p class="navbar-text pull-right">
				<!-- Button to trigger modal -->
				<c:if
					test="${sessionScope.ID == null || sessionScope.user_name == null}">
					<a href="#loginModel" class="navbar-link" data-toggle="modal">请登录</a>&nbsp;|&nbsp;
					<a href="${requestScope.basePath}/user/register/init"
						class="navbar-link" data-toggle="modal">我要注册</a>
				</c:if>
				<c:if
					test="${sessionScope.ID != null && sessionScope.user_name != null}">
					你好,<a href="${requestScope.basePath}/my/" class="navbar-link">${sessionScope.user_name}</a>&nbsp;|&nbsp;<a
						href="${requestScope.basePath}/user/logout">退出</a>
				</c:if>
			</p>

			<div class="nav-collapse collapse">
				<ul class="nav">
					<li><a href="${requestScope.basePath}/index">首页</a></li>
					<li><a href="${requestScope.basePath}/school/list">各大高校</a></li>
					<li><a href="${requestScope.basePath}/resource/newest">最新资源</a>
					</li>
					<li><a href="${requestScope.basePath}/resource/upload">上传资源</a></li>
					<li><a href="#contact">购买积分</a></li>
					<li class="dropdown"><a href="#contact"
						class="dropdown-toggle" data-toggle="dropdown">地区省份<b
							class="caret"></b> </a>
						<ul class="dropdown-menu">
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【华 北】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/1">北京市</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/4">天津市</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/5">河北省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/6">山西省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/28">内蒙古自治区 </a></li>
								</ul>
							</li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【东 北】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/7">辽宁省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/8">吉林省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/9">黑龙江省 </a></li>
								</ul>
							</li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【华 东】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/2">上海市</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/10">江苏省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/11">浙江省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/12">安徽省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/13">福建省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/14">江西省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/15">山东省</a></li>
								</ul>
							</li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【中 南】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/16">河南省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/17">湖北省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/18">湖南省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/19">广东省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/29">广西壮族自治区 </a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/20">海南省 </a></li>
								</ul>
							</li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【西 南】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/3">重庆市</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/21">四川省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/22">贵州省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/23">云南省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/30">西藏自治区 </a></li>
								</ul>
							</li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【西 北】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/24">陕西省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/25">甘肃省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/26">青海省</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/31">宁夏回族自治区</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/32">新疆维吾尔自治区 </a></li>
								</ul>
							</li>
							<li class="dropdown-submenu"><a tabindex="-1" href="#">【港澳台】</a>
								<ul class="dropdown-menu">
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/33">香港特别行政区</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/34">澳门特别行政区</a></li>
									<li><a tabindex="-1" href="${requestScope.basePath}/school/list/province/27">台湾省</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<li><a href="http://huangruichang.github.io" target="blank">关于</a></li>
					<li><a href="#contact">联系</a></li>
					<li>
						<form class="navbar-search pull-left" action="${requestScope.basePath}/resource/search" method="get">
							<input type="text" class="search-query" placeholder="搜索资源" name="keyword">
							<input type="submit" class="btn" value="提交">
						</form>
					</li>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>

<form class="form-horizontal" method="post"
	action="${requestScope.basePath}/user/login" id="login">
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
					<input type="password" id="user_pwd" placeholder="密码"
						name="user_pwd">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox"> <input type="checkbox"
						name="rememberme"> 记住我&nbsp;|&nbsp;<a href="#">忘记密码?</a> </label>
				</div>
			</div>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">关闭</a> <input
				type="submit" class="btn btn-success" value="登陆" />
		</div>
	</div>
</form>
