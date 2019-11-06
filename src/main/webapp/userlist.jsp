<%@page isELIgnored="false" pageEncoding="UTF-8" contentType="text/html; UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<meta name="viewport"
		  content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<meta name='viewport' content="width=device-width,initial-scale=1" />

	<title>普通用户登陆成功显示所有信息及操作</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css" />
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css" />
	<script src="${pageContext.request.contextPath}/js/jquery-2.1.3.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<script type="text/javascript">
        function  test(){
            var  count=$("#c").val();
            location.href="${pageContext.request.contextPath}/user/FindAllUserLogServlet?count="+count;
        }

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
		.divbanq{
			position:absolute;
			top:85%;/* div与页面上边距*/
			left:30%;
		}
	</style>


</head>
<body>
<div class="container-fluid">


	<div class="row show-grid">

		<nav class="navbar navbar-inverse">
			<div class="container-fluid">

				<div class="navbar-header">

					<li style="cursor: pointer"><a class="navbar-brand" href="http://localhost:8989/Aut/user/FindAllUserServlet">云平台运营系统</a></li>
				</div>


				<div class="collapse navbar-collapse"
					 id="bs-example-navbar-collapse-1">

					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
												data-toggle="dropdown" role="button" aria-expanded="false">普通用户 [
                            <c:if test="${user.username!=null}">${user.username}</c:if>
                            <c:if test="${user.username==null}">${sessionScope.user.username}</c:if>
                            ]
							<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">个人资料</a></li>
								<li class="divider"></li>
								<li><a href="${pageContext.request.contextPath}/user/safeOutMethod.do">安全退出</a></li>
							</ul></li>
					</ul>
				</div>

			</div>

		</nav>
	</div>
	<!--左侧菜单-->
	<div class="row show-grid ">
		<!--<div class="col-md-2">
<span>菜单</span>
</div>-->
		<div class="col-md-12">

			<div class="form-group col-md-12 collapse" id="addUserForm">
				<div class="well">
					<form  class="" action="demo1.html">
						<table  class="table-condensed">
							<thead>
							<tr>
								<th><label class=" control-label"
										   for="inputGroupSuccess2">用户名</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess2">密码</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess3">联系电话</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess4">邮箱</label></th>
								<th><label  class=" control-label"
											for="inputGroupSuccess5">系统来源</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess6">最后一次登陆ip</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess7">最后一次登陆时间</label></th>

							</tr>
							</thead>
							<tbody>
							<tr>
								<td><input required="required" id="inputGroupSuccess2"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入用户名" /></td>
								<td><input required="required" id="inputGroupSuccess3"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入密码" /></td>
								<td><input required="required" id="inputGroupSuccess4"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入联系电话" /></td>
								<td><input required="required" id="inputGroupSuccess5"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入邮箱" /></td>
								<td><select required="required" class="form-control">
									<option disabled="disabled" class="disabled">请选择系统来源</option>
									<option>业务系统1</option>
									<option>业务系统2</option>
									<option>业务系统3</option>
									<option>云平台运营系统</option>
								</select></td>
								<td><input required="required" id="inputGroupSuccess6"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入最后一次登陆ip" /></td>
								<td><input required="required" id="inputGroupSuccess7"
										   class="form-control" type="date"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入最后一次登陆时间" /></td>

								<td colspan="6"><input type="submit" value="保存"
													   class="btn btn-success pull-right" /></td>
							</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
			<div class="form-group col-md-12 collapse" id="updateUserForm">
				<div class="well">
					<form class="" action="demo1.html">
						<table class="table-condensed ">
							<thead>
							<tr>
								<th><label class=" control-label"
										   for="inputGroupSuccess2">用户名</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess3">密码</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess4">联系电话</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess5">系统来源</label></th>
								<th><label class=" control-label"
										   for="inputGroupSuccess6">用户状态</label></th>
							</tr>
							</thead>
							<tbody>
							<tr>
								<td><input required="required" id="inputGroupSuccess8"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   disabled="disabled" placeholder="请输入用户名" /></td>
								<td><input required="required" id="inputGroupSuccess9"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入密码" /></td>
								<td><input required="required" id="inputGroupSuccess10"
										   class="form-control" type="text"
										   aria-describedby="inputGroupSuccess1Status"
										   placeholder="请输入联系电话" /></td>
								<td><select required="required" class="form-control">
									<option disabled="disabled" class="disabled">请选择系统来源</option>
									<option>业务系统1</option>
									<option>业务系统2</option>
									<option>业务系统3</option>
									<option>云平台运营系统</option>
								</select></td>
								<td><select required="required" class="form-control">
									<option disabled="disabled" class="disabled">请选择初始状态</option>
									<option>冻结</option>
									<option>可用</option>
								</select></td>
								<td colspan="6"><input type="submit" value="保存"
													   class="btn btn-success pull-right" /></td>
							</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>

			<table  style="text-align:center" id="userPager"
					class=" table-bordered table-responsive table table-hover table-condensed">
				<thead>
				<tr class="bg-primary h4">
					<td>用户名</td>
					<td>联系电话</td>
					<td>邮箱</td>
					<td>用户来源</td>
					<td>最后一次登陆ip</td>
				</tr>
				</thead>
				<!--数据-->
				<tbody>
				<tr class="bg-danger" >
					<td>${user.username}</td>
					<td style="display: none;">${user.password}</td>
					<td>${user.phone}</td>
					<td>${user.email}</td>
					<td>${user.from}</td>
					<td>${user.ip}</td>
				</tr>
				</tbody>

			</table>
			
	</div>



		<!--确认框-->
		<div id="deleteConfirm" role="dialog" tabindex="-1"
			 class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-warning">
						<div class="panel-heading">
							<h3>提示信息</h3>
						</div>
						<div class="panel-body">
							<h4>你确认要删除该用户？</h4>

							<div class="pull-right">
								<button class="btn btn-primary" data-dismiss="modal">取消</button>
								<button class="btn btn-primary" data-dismiss="modal"
										onclick="removeUser2()">确定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--确认框-->
		<div id="freezUser" role="dialog" tabindex="-1" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-danger">
						<div class="panel-heading">
							<h3>提示信息</h3>
						</div>
						<div class="panel-body">
							<h4>你确认要冻结该用户吗？</h4>

							<div class="pull-right">
								<button class="btn btn-primary" data-dismiss="modal">取消</button>
								<button class="btn btn-primary" data-dismiss="modal" onclick="">确定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--确认框-->
		<div id="unFreezUser" role="dialog" tabindex="-1" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-success">
						<div class="panel-heading">
							<h3>提示信息</h3>
						</div>
						<div class="panel-body">
							<h4>要解冻该用户？</h4>

							<div class="pull-right">
								<button class="btn btn-primary" data-dismiss="modal">取消</button>
								<button class="btn btn-primary" data-dismiss="modal">确定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--确认框-->
		<div id="backupUsers" role="dialog" tabindex="-1" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3>提示信息</h3>
						</div>
						<div class="panel-body">
							<h4>确定要备份现在的用户数据吗？</h4>

							<div class="pull-right">
								<button class="btn btn-primary" data-dismiss="modal">取消</button>
								<button class="btn btn-primary" data-dismiss="modal">确定</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--确认框-->
		<div id="recoverUsers" role="dialog" tabindex="-1" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="panel panel-info">
						<div class="panel-heading">
							<h3>提示信息</h3>
						</div>
						<div class="panel-body">
							<em>选择要恢复的备份文件？</em>
							<table
									class=" table-responsive table table-hover table-condensed">
								<thead>
								<tr>
									<th>备份文件名</th>
									<th>备份日期</th>
									<th>恢复</th>
								</tr>
								</thead>
								<tbody>
								<tr>
									<td>d:/reponsitory/user1.dat</td>
									<td>2015年3月30日16:05:57</td>
									<td>
										<button class="btn btn-success btn-sm" data-dismiss="modal">恢复</button>
									</td>
								</tr>
								<tr>
									<td>d:/reponsitory/user2.dat</td>
									<td>2015年3月30日16:05:57</td>
									<td>
										<button class="btn btn-success btn-sm" data-dismiss="modal">恢复</button>
									</td>
								</tr>
								<tr>
									<td>d:/reponsitory/user3.dat</td>
									<td>2015年3月30日16:05:57</td>
									<td>
										<button class="btn btn-success btn-sm" data-dismiss="modal">恢复</button>
									</td>
								</tr>
								<tr>
									<td>d:/reponsitory/user4.dat</td>
									<td>2015年3月30日16:05:57</td>
									<td>
										<button class="btn btn-success btn-sm" data-dismiss="modal">恢复</button>
									</td>
								</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</div>
</div>
</body>
</html>