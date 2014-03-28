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
	<br><%@ include file="header.jsp"%>
	<div class="container-fluid">
		<div class="row-fluid">
			<sf:form class="form-horizontal span6 offset3" modelAttribute="user"
				action="${requestScope.path}/user/register/save" method="POST">
				<div class="control-group">
					<sf:label path="user_id" class="control-label">账号</sf:label>
					<div class="controls">
						<sf:input path="user_id" size="15" placeholder="账号" />
						<sf:errors path="user_id" cssClass="error"></sf:errors>
					</div>
				</div>
				<div class="control-group">
					<sf:label path="user_pwd" class="control-label">密码</sf:label>
					<div class="controls">
						<sf:input path="user_pwd" type="password" size="15"
							placeHolder="密码" />
						<sf:errors path="user_pwd" cssClass="error"></sf:errors>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">确认密码</label>
					<div class="controls">
						<input type="password" placeholder="确认密码" name="rpwd" /><br />
					</div>
				</div>
				<div class="control-group">
					<sf:label path="user_name" class="control-label">用户名</sf:label>
					<div class="controls">
						<sf:input path="user_name" size="15" maxlength="15"
							placeholder="用户名" />
						<sf:errors path="user_name" cssClass="error"></sf:errors>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label">区域</label>
					<div class="controls">
						<select>
							<option value="1">广东省</option>
							<option value="2">黑龙江省</option>
							<option value="3">河南省</option>
							<option value="4">湖北省</option>
							<option value="5">香港</option>
						</select>
					</div>
				</div>
				<!-- 随后要补上区域，学校，学院的约束 -->
				<div class="control-group">
					<sf:label path="school_id" class="control-label">学校</sf:label>
					<div class="controls">
						<sf:select path="school_id">
							<option value="1">五邑大学</option>
							<option value="2">北京大学</option>
							<option value="3">武汉大学</option>
							<option value="4">清华大学</option>
							<option value="5">浙江大学</option>
						</sf:select>
					</div>
				</div>
				<div class="control-group">
					<sf:label path="department_id" class="control-label">院系</sf:label>
					<div class="controls">
						<sf:select path="department_id">
							<option value="1">计算机学院</option>
							<option value="2">文学院</option>
							<option value="3">外语学院</option>
							<option value="4">经管学院</option>
							<option value="5">土建学院</option>
						</sf:select>
					</div>
				</div>
				<div class="control-group">
					<label class="control-label" for="inputEmail">邮箱</label>
					<div class="controls">
						<sf:input path="email" id="email" placeholder="邮箱" />
						<sf:errors path="email" cssClass="error"></sf:errors>
					</div>
				</div>
				<div class="control-group">
					<div class="controls">
						<div>
							<input type="submit" class="btn btn-primary" value="提交" /> <input
								type="reset" class="btn" value="重置" />
						</div>
					</div>
				</div>
			</sf:form>
		</div>
	</div>
	<%@ include file="footer.jsp"%>
</body>

<script>
	var msg = '${message}';
	if (msg)
		alert(msg);
	console.log(msg);
</script>

<script>
	function getSchools() {
		$.get("", function(data) {
			//获取学校
		});
	}

	function getDepartments() {
		$.get("", function(data) {
			//获取学院

		});
	}
</script>

</html>
