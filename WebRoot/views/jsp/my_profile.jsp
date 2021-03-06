<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div class="well span3">
	<ul class="nav nav-list">
		<li><c:if test="${empty profile.avatar}">
				<img src="${requestScope.basePath}/views/avatars/default.jpg"
					class="img-polaroid" width="120">
			</c:if> <c:if test="${ not empty profile.avatar}">
				<img src="${requestScope.basePath}/views/avatars/${profile.avatar}"
					class="img-polaroid" width="120">
			</c:if></li>
		<li class="divider"></li>
		<li><a>用户:&nbsp;${profile.user_name}</a>
		</li>
		<li class="divider"></li>
		<li><a>学校:&nbsp;${profile.school_name}</a>
		</li>
		<li class="divider"></li>
		<li><a>学院:&nbsp;${profile.department_name}</a>
		</li>
		<li class="divider"></li>
		<li><a>剩余积分:&nbsp;${profile.points}</a>
		</li>
		<c:if test="${isMy}">
			<li class="divider"></li>
			<li><a href="${requestScope.basePath}/my/profile/init"><button
						class="btn btn-primary">
						<i class="icon-user icon-white"></i>修改个人资料
					</button> </a>
			</li>
			<li class="divider"></li>
			<li><a href="${requestScope.basePath}/resource/upload"><button
						class="btn btn-success">
						<i class="icon-circle-arrow-up icon-white"></i>我要上传
					</button> </a>
			</li>
		</c:if>
	</ul>
</div>
