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
						<select id="reg_provinces" name="provinceid">
							<option value="">请选择</option>
						</select>
					</div>
				</div>
				<!-- 随后要补上区域，学校，学院的约束 -->
				<div class="control-group">
					<sf:label path="school.id" class="control-label">学校</sf:label>
					<div class="controls">
						<sf:select path="school.id" id="reg_schools"></sf:select>
					</div>
				</div>
				<div class="control-group">
					<sf:label path="department.id" class="control-label">院系</sf:label>
					<div class="controls">
						<sf:select path="department.id" id="reg_departments"></sf:select>
					</div>
				</div>
				<div class="control-group">
					<sf:label path="email" class="control-label" for="inputEmail">邮箱</sf:label>
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
</script>
<script>
	function getProvinces() {
		$.get('${requestScope.basePath}/province/list', function(data) {
			for ( var i = 0; i < data.length; i++) {
				var opt = data[i];
				$('#reg_provinces').append(
						[ '<option value="', opt.id, '">', opt.name,
								'</option>' ].join(''));
			}
		});

	}

	function getSchools() {
		$.get('${requestScope.basePath}/user/register/school/'
				+ $('#reg_provinces option:selected').val(), function(data) {
			//获取学校
			$('#reg_schools').empty();
			for ( var i = 0; i < data.length; i++) {
				var opt = data[i];
				$('#reg_schools').append(
						[ '<option value="', opt.id, '">', opt.school_name,
								'</option>' ].join(''));
			}
		});
	}

	function getDepartments() {
		$.get('${requestScope.basePath}/user/register/department/' + $('#reg_schools option:selected').val(), function(data) {
			//获取学院
			$('#reg_departments').empty();
			for(var i = 0; i < data.length; i++) {
				var opt = data[i];
				$('#reg_departments').append(
						[ '<option value="', opt.id, '">', opt.department_name,
								'</option>' ].join(''));
			}
		});
	}
</script>
<script>
	$('#reg_provinces').on('change', getSchools);
	$('#reg_schools').on('change', getDepartments);
	getProvinces();
</script>

</html>
