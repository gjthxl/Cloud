<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name='viewport' content="width=device-width,initial-scale=1" />
	<!--上面3个标签必须有，必须放在最前面
            viewport用来适配移动端显示效果
        -->
	<title>云平台管理登陆页面</title>
	<!--引入BootStrap样式-->
	<!-- <link rel="stylesheet" href="docs.min.css">-->
	<!--引入BootStrap样式-->
	<link rel="stylesheet"
		  href="./css/bootstrap-theme.min.css" />
	<link rel="stylesheet"
		  href="./css/bootstrap.min.css" />

	<!--引入jQuery：Bootstrap的js文件依赖jQuery，所以必须优先引入jQuery-->
	<script src="./js/jquery-2.1.3.min.js"></script>
	<!--引入Bootstrap的js文件-->
	<script src="./js/bootstrap.min.js"></script>

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
		.bt1{
			background-image: url(image/login_submit.gif);
			width:137px;
			height:30px;

		}

		.bt2{
			background-image: url(image/btn.gif);
			width:99px;
			height:30px;

		}
	</style>

</head>
<body>
<div class="container-fluid">

	<div class="row show-grid">

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">
				<div class="navbar-header">
					<li style="cursor: pointer"><a class="navbar-brand">云平台运营系统登陆页面</a></li>
				</div>
			</div>
		</nav>
	</div>
	<table width="100%" height="90%">
		<tr >
			<td align="center" valign="middle">
				<form action="${pageContext.request.contextPath}/user/loginMethod.do" method="post">
					<table align="center" width="381px" height="40%" cellspacing="0" border="1">
						<tr class="bg1" height="27px" align="center">
							<td colspan="3"><font color="FFFFFF">云平台运营项目</font></td>
						</tr>
						<tr>
							<td align="center">用户名</td>
							<td align="center"><input name="username" type="text" value=""/></td>
						</tr>
						<tr>
							<td align="center">密&nbsp;&nbsp;&nbsp;码</td>
							<td align="center"><input name="password" type="password"/></td>

						</tr>
						<tr>
							<td align="center">角&nbsp;&nbsp;&nbsp;色</td>
							<td align="center">
								<select name="status">
									<option value="admin">管理员</option>
									<option value="user">普通用户</option>
								</select>

							</td>
						</tr>
						<tr align="center">
							<td colspan="3">
								<input type="submit" value="" class="bt1"/>
								&nbsp;&nbsp;<a href="userRegist.jsp"><input type="button" class="bt2"/></a>
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