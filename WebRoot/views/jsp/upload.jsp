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
		<form class="form-horizontal" method="post"
			action="${requestScope.basePath}/resource/create"
			enctype="multipart/form-data" id="upload_form">
			<div class="modal"
				style="position: relative; top: auto; left: auto; right: auto; margin: 0 auto 20px; z-index: 1; max-width: 100%;">
				<div class="modal-header">
					<h4>上传资源</h4>
				</div>
				<div class="modal-body">
					<div class="control-group">
						<label class="control-label">请选择</label>
						<div class="controls">
							<input type="file" name="resource_file" id="resource_file" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">资源名称</label>
						<div class="controls">
							<input type="text" placeholder="资源名称" name="resource_name"
								id="resource_name" />
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">资源类型</label>
						<div class="controls">
							<select name="resource_type" id="resource_type">
								<c:forEach var="type" items="${type_list}">
									<option value="${type.id}">${type.name}</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="control-group">
						<label class="control-label">资源分</label>
						<div class="controls">
							<select name="resource_price" id="resource_price">
								<c:forEach var="price" items="${price_list}">
									<option value="${price}">${price}</option>
								</c:forEach>
							</select>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button class="btn btn-primary" id="upload_button">
						<i class="icon-upload icon-white"></i>上传
					</button>
					<a class="btn btn-success" id="progress_button"> <i
						class="icon-upload icon-white"></i>进度条 </a>
				</div>
			</div>
		</form>
	</div>


	<!-- Modal -->
	<div id="progress_modal" class="modal hide fade" tabindex="-1"
		role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"
		data-backdrop="static" data-keyboard="false">
		<div class="modal-header">
			<h3>上传进度</h3>
		</div>
		<div class="modal-body">
			<div class="progress progress-striped active" id="progress_width">
				<div class="bar" id="progress_bar" style="width:0%"></div>
			</div>
			<p>
				上传速度:<span id="progress_velocity"></span><span>KB/s</span>
			</p>
			<p>
				已用时:<span id="progress_pasttime"></span><span>s</span>
			</p>
			<p>
				预计剩余时间:<span id="progress_predicttime"></span><span>s</span>
			</p>
			<p>
				上传文件大小:<span id="progress_contentlength"></span>
			</p>
			<p>
				已上传大小:<span id="progress_bytesread"></span>
			</p>
		</div>
		<div class="modal-footer">
			<button class="btn btn-success" data-dismiss="modal"
				id="progress_finish" disabled="disabled">确认</button>
		</div>
	</div>


	<%@ include file="footer.jsp"%>


	<script>
		function toFloat1(data) {
			var d0 = parseInt(data * 10);
			var d1 = d0 % 10;
			var result;
			if(d1 >= 5) {
				result = d0 / 10;
			} else {
				result = d0 / 10;
			}
			console.log(d0);
			console.log(d1);
			console.log(3.7+0.1);
			return result;
		}
		var progress_width;
		var progress_pasttime;
		var progress_bytesread;
		var progress_contentlength;
		var progress_velocity;
		var progress_predicttime;
		$.ajaxSetup({
			async : false
		});
	</script>
	<script>
		function GetProgress() {
			var interval = setInterval(function() {
				//每1000毫秒增加百分之一
				var progress = 0;
				$.get('${requestScope.basePath}/resource/upfile/progress',
						function(obj) {
							progress = (obj.bytesRead / obj.contentLength) * progress_width;
							progress_pasttime = parseInt(obj.pastTime / 1000);
							progress_predicttime = parseInt(obj.predictTime / 1000);
							if(obj.contentLength >= 1024 * 1024 * 1024) {
								progress_contentlength = parseFloat(toFloat1(obj.contentLength / (1024 * 1024 * 1024))) + 'GB';
								progress_bytesread = parseFloat(toFloat1(obj.bytesRead / (1024 * 1024 * 1024))) + 'GB';
							} else if (obj.contentLength <= 1024 * 1024 * 1024 - 1 && obj.contentLength >= 1024 * 1024) {
								progress_contentlength = parseFloat(toFloat1(obj.contentLength / (1024 * 1024))) + 'MB';
								progress_bytesread = parseFloat(toFloat1(obj.bytesRead / (1024 * 1024))) + 'MB';
							} else if (obj.contentLength <= 1024 * 1024 - 1 && obj.contentLength >= 1024) {
								progress_contentlength = parseFloat(toFloat1(obj.contentLength / 1024)) + 'KB';
								progress_bytesread = parseFloat(toFloat1(obj.bytesRead / 1024)) + 'KB';
							} else if (obj.contentLength <= 1024 - 1 && obj.contentLength >= 0) {
								progress_contentlength = parseFloat(toFloat1(obj.contentLength)) + 'B';
								progress_bytesread = parseFloat(toFloat1(obj.bytesRead)) + 'B';
							}
							
							progress_velocity = parseInt(obj.velocity);
							console.log(progress_pasttime);
							console.log(progress_bytesread);
							console.log(progress_contentlength);
							console.log(progress_velocity);
							console.log(progress_predicttime);
							console.log('-----------------------------------');
						});
				//更新对话框数据
				$('#progress_bar').width(progress);
				$('#progress_pasttime').text(progress_pasttime);
				$('#progress_bytesread').text(progress_bytesread);
				$('#progress_contentlength').text(progress_contentlength);
				$('#progress_velocity').text(progress_velocity);
				$('#progress_predicttime').text(progress_predicttime);
				if (progress >= progress_width) {
					$('#progress_finish').removeAttr('disabled');
					clearInterval(interval);
					return false;
				}
				
			}, 1000);
		}
		
		var ajax_options = {
			url: '${requestScope.basePath}/resource/create',
			success : function(data) {
				console.log(data);
				console.log(data['rnMsg']);
				console.log(data['rtMsg']);
				console.log(data['rpMsg']);
			}
		};

		$('#progress_modal').on('shown', function() {
			progress_width = $('#progress_width').width();
			
			console.log(progress_width);
			
			
			//验证信息是否完整
			var resource_name = $('#resource_name').val();
			var resource_type = $('#resource_type').val();
			var resource_price = $('#resource_price').val();
			var file = $('#resource_file').val();
			/* 
			if(resource_name == '' || resource_type == '' || resource_price == '') {
				alert("请完善资源信息");
				return ;
			}
			if(resource_name.length < 6 || resource_name.length >  20) {
				alert("资源名长度为6-20个字符");
				return ;
			}
			if(file == '') {
				alert("请选择要上传的文件");
				return ;
			} */
			
			//ajax后台以确定是否可以秒传
			$('#progress_modal').modal('show');
			var file = document.getElementById("resource_file").files[0];
				var reader = new FileReader();
				
				//文件以文本形式进行读入页面
				reader.readAsText(file);
				
				reader.onload = function (f) {
					//在页面上显示读入文本
					var code = hex_sha1(this.result);
				$.post('${requestScope.basePath}/resource/upfile/existence', {
					code: code
				}, function(data) {
						
					console.log('data:' + data);
					if(!data.isExisted) {
						//如果不可以
						GetProgress();  
						$('#upload_form').ajaxSubmit(ajax_options);
					} else {
						//如果可以
						//进度条马上变100，其他依次填好
						$.post('${requestScope.basePath}/resource/put', {
							resource_type: $('#resource_type').val(),
							resource_name: $('#resource_name').val(),
							resource_price: $('#resource_price').val()
						}, function (data) {
							$('#progress_bar').width(progress_width);
						});
					}
				});
			}
		});
	</script>

	<script>
		$('#progress_button').click(function() {
			$('#progress_modal').modal('show');
			GetProgress();
		});
		
		$('#upload_form').submit(function(e) {
			e.preventDefault();
			//var pw = progress_width;
			//是否已登陆
			var islogined = false;
			$.post('${requestScope.basePath}/user/islogined', function(data) {
				islogined = data['islogined'];
				if(!islogined) {
					alert("请先登陆!");
				}
			});
			if(!islogined) return ;
			var resource_name = $('#resource_name').val();
			var resource_type = $('#resource_type').val();
			var resource_price = $('#resource_price').val();
			var file = $('#resource_file').val();
			
			if(resource_name == '' || resource_type == '' || resource_price == '') {
				alert("请完善资源信息");
				return ;
			}
			if(resource_name.length < 6 || resource_name.length >  20) {
				alert("资源名长度为6-20个字符");
				return ;
			}
			if(file == '') {
				alert("请选择要上传的文件");
				return ;
			}
			
			$('#progress_modal').modal('show');
		}); 
	</script>
</body>
</html>
