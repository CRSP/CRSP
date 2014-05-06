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

<body>
	<%@ include file="header.jsp"%>
	<div class="container-fluid">
		<sf:form class="form-horizontal span6 offset3" modelAttribute="user"
			action="${requestScope.basePath}/my/profile/update" method="POST">
			<div class="control-group">
				<sf:label path="user_name" class="control-label">用户名:</sf:label>
				<div class="controls">
					<sf:input path="user_name" value="${profile.user_name}" />
					<sf:errors path="user_name" cssClass="error"></sf:errors>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">邮箱:</label>
				<div class="controls">
					<sf:input path="email" id="email" placeholder="邮箱"
						value="${profile.email}" />
					<sf:errors path="email" cssClass="error"></sf:errors>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">头像:</label>
				<div class="controls">
					<div id="result">
						<c:if test="${profile.avatar == ''}">
							<img class="img-polaroid"
								src="${requestScope.basePath}/views/avatars/default.jpg">
						</c:if>
						<c:if test="${profile.avatar != ''}">
							<img class="img-polaroid"
								src="${requestScope.basePath}/views/avatars/${profile.avatar}">
						</c:if>
					</div>
					<input type="file" name="avatar" id="avatar">
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<button type="submit" class="btn btn-success">确认修改</button>
					<button type="submit" class="btn">重置</button>
					<a class="btn btn-primary" onclick="readAsDataURL()">预览</a>
				</div>
			</div>
		</sf:form>
	</div>
	<%@ include file="footer.jsp"%>
</body>

<script>
	var result = document.getElementById("result");
	function readAsDataURL() {
		//检查是否为图像文件
		var file = document.getElementById("avatar").files[0];
		if (!/image\/\w+/.test(file.type)) {
			alert("请确保文件为图像类型");
			return false;
		}
		var reader = new FileReader();
		//将文件以Data URL形式进行读入页面
		reader.readAsDataURL(file);
		reader.onload = function(e) {
			var result = document.getElementById("result");
			//在页面上显示文件
			result.innerHTML = '<img class="img-polaroid"  width="120" height="120"  src="' + this.result + '" alt="" />';
		}
	}
</script>

</html>
