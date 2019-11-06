<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<html lang="zh-CN">
<head>
<meta charset="GBK" />
<meta http-equiv="x-ua-compatible" content="IE-edge" />
<meta name='viewport' content="width=device-width,initial-scale=1" />
<!--上面3个标签必须有，必须放在最前面
        viewport用来适配移动端显示效果
    -->
<title>云平台管理普通用户注册</title>
<!--引入BootStrap样式-->
<!-- <link rel="stylesheet" href="docs.min.css">-->
<!--引入BootStrap样式-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
	<style type="text/css">
			label.error{
				color:red
			}
		</style>
<!--引入jQuery：Bootstrap的js文件依赖jQuery，所以必须优先引入jQuery-->
<script src="${pageContext.request.contextPath}/js/jquery-2.1.3.min.js"></script>
<!--引入Bootstrap的js文件-->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.validate.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/message_zh_CN.js"></script>
<script type="text/javascript">
			$(function(){
				$('#form').validate({
					rules:{
						username:{required:true,minlength:6},
						password:{required:true},
						email:{required:true,email:true},
						phone:{required:true,rangelength:[11,11]}
					},
					messages:{
						username:{required:'用户名不能为空',minlength:'用户名长度不能少于6位'},
						password:{required:'密码不能为空'},
						email:{required:'邮箱不能为空',email:'不符合邮箱格式'},
						phone:{required:'手机号不能为空',rangelength:'不符合手机格式'}
					}
				});
			})
		</script>
<style type="text/css">
.pagination {
	display: inline-block;
	padding-left: 0;
	margin: 20px 0;
	border-radius: 4px;
}

.pagination ul {
	display: inline-block;
	margin-left: 0;
	margin-bottom: 0;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
	-moz-box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05);
}

ul>li {
	display: inline;
}

li {
	line-height: 20px;
}

.pagination ul>li:first-child>a,.pagination ul>li:first-child>span {
	border-left-width: 1px;
	-webkit-border-top-left-radius: 4px;
	-moz-border-radius-topleft: 4px;
	border-top-left-radius: 4px;
	-webkit-border-bottom-left-radius: 4px;
	-moz-border-radius-bottomleft: 4px;
	border-bottom-left-radius: 4px;
}

.pagination ul>li>a:hover,.pagination ul>li>a:focus,.pagination ul>.active>a,.pagination ul>.active>span
	{
	background-color: #f5f5f5;
}

.pagination ul>li>a,.pagination ul>li>span {
	float: left;
	padding: 4px 12px;
	line-height: 20px;
	text-decoration: none;
	background-color: #ffffff;
	border: 1px solid #dddddd;
	border-left-width: 0;
}
table{
	border:solid #56A1EF 1px;
	background-color:#EEF5FF;
     }
.bg1{
	background-image: url(image/login_head.gif); /*login_submit.gif*/
 }
.span1{
	color:red;
}
.bt1{
	background-image: url(image/btn_reg3.gif);
	width:156px;
	height:35px;
	
    }
</style>

</head>
<body>
	<div class="container-fluid">
		<div class="row show-grid">
		
			<nav class="navbar navbar-inverse">
				<div class="container-fluid">
					<div class="navbar-header">
						<li style="cursor: pointer"><a class="navbar-brand">云平台运营系统注册页面</a></li>
					</div>
				</div>
			</nav>
		</div>
		<table width="100%" height="90%">
		<tr >
			<td align="center" valign="middle">
			    <form id="form" action="${pageContext.request.contextPath}/user/registMethod.do">
				<table align="center" width="381px" height="70%" cellspacing="0" >
					<tr class="bg1" height="27px" align="center">
						<td colspan="3">云平台运营项目普通用户注册</td>
					</tr>
					<tr >
						
						<td ><span class="span1">*</span>&nbsp;&nbsp;用户名</td>
						<td align="center"><input name="username" type="text" value=""/></td>
						
					</tr>
					<tr>
						<td ><span class="span1">*</span>&nbsp;&nbsp;密&nbsp;&nbsp;&nbsp;码</td>
						<td align="center"><input type="password" name="password"/></td>
						
					</tr>
					<tr>
						<td ><span class="span1">*</span>&nbsp;&nbsp;联系方式</td>
						<td align="center"><input type="text" name="phone"/></td>
						
					</tr>
					<tr>
						<td ><span class="span1">*</span>&nbsp;&nbsp;邮&nbsp;&nbsp;箱</td>
						<td align="center"><input type="text" name="email"/></td>	
					</tr>
					<tr>
						<td ><span class="span1">*</span>&nbsp;&nbsp;登陆IP地址&nbsp;&nbsp;</td>
						<td align="center"><input type="text" name="ip"/></td>
					</tr>
					<tr>
						<td >用户来源</td>
						<td align="center">
							<select name="from" style="size:20px;width:200px">
								<option value="QQ" >QQ</option>
								<option value="微信">微信</option>
								<option value="微博">微博</option>
							</select>
						</td>
					</tr>
					<tr align="center">
						<td colspan="3">
							<input type="submit" value=""  class="bt1"/>
						</td>
					</tr>
				</table>
				</form>
			</td>
		</tr>
		</table>
	</div>
		
</body>
</html>