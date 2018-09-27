<%@page import="dao.UserDao"%>
<%@page import="domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>找到了 | 寻物</title>
<!-- 导入 css-->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!--导入jquery.js-->
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>

<!--导入bootstrap.js-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
</head>
<body>
	<!-- header-->
	<div class="container">
		<!--logo
				
				小屏幕 2个一行 
				超小屏幕一个一行
			-->
		<div class="row">
			<div class="col-md-4 col-sm-6 col-xs-12">
				<img src="img/find.png" />
			</div>

			<div class="col-md-5 col-sm-6 col-xs-12 pull-right">
				<ul class="list-inline">
					<li style="padding-top: 25px;p">${user.user }，欢迎你！</li>
					<%-- <img class="img-responsive" src=<%=logo %> alt="Responsive image" class="img-circle"> --%>
					<li><a href="login.jsp">返回主页</a></li>|
					<li style="padding-top: 25px;p"><a href="Persenal.jsp">发布消息
					</a></li>|
					<li><a href="login.jsp">退出</a></li>
				</ul>
			</div>
		</div>

		<hr></hr>
		<!--主页内容-->
		<div>
			<div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
				<img src="img/book.jpg" width="250px" class="img-thumbnail" />
			</div>
			<div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-default">
					<div class="panel-body">
						<h3>
							<font color="#555555">萌萌哒的小可爱
						</h3>
						<hr></hr>
						<p>
							<button type="button" class="btn btn-primary" data-toggle="modal"
								data-target="#myModal2" data-whatever="@mdo">
								<span class="glyphicon glyphicon-user"></span>
							</button>
							账号设置
						</p>
						<!-- 用户信息修改Modal -->
						<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel">
							<div class="modal-dialog" role="document">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal2"
											aria-label="Close">
											<span aria-hidden="true">&times;</span>
										</button>
										<h4 class="modal-title" id="myModalLabel">发布寻物消息</h4>
									</div>
									<div class="modal-body">
										<form action="Persenal?method=update" method="post"
											id="checkForm">

											<div class="form-group">
												<label for="exampleInputPassword1">昵称</label> <input
													type="text" class="form-control" id="exampleInputPassword1"
													name="user" placeholder="username" readonly
													value=${user.user }>
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">密码</label> <input
													type="password" class="form-control"
													id="exampleInputPassword1" name="password"
													value=${user.password } placeholder="password">
											</div>
											<div class="form-group">
												<label for="exampleInputPassword1">输入新密码</label> <input
													type="password" class="form-control"
													id="exampleInputPassword2" placeholder="repassword" name="repassword">
											</div>
											<div class="form-group">
												<label for="exampleInputEmail1">邮箱</label> <input
													type="email" class="form-control" id="exampleInputEmail1"
													name="email" value=${user.email } placeholder="email">
											</div>
											<div class="form-group">
												<label for="exampleInputphone">手机号</label> <input
													type="text" class="form-control" id="exampleInputEmail1"
													name="phone" value=${user.phone } placeholder="phone">
											</div>


											<div class="modal-footer">
												<button type="button" class="btn btn-default"
													data-dismiss="modal">取消</button>
												<button type="submit" class="btn btn-primary">提交</button>
											</div>
										</form>
									</div>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			
			
			
			<div class="pull-right">
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal" data-whatever="@mdo">发布寻物消息</button>
				<button type="button" class="btn btn-primary" data-toggle="modal"
					data-target="#myModal1" data-whatever="@fat">发布认领消息</button>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">发布寻物消息</h4>
							</div>
							<div class="modal-body">
								<form action="Persenal?method=insert&status=1" method="post"
									id="checkForm">
									<div class="form-group">
										<label for="exampleInputEmail1">自己拟个标题吧：</label> <input
											type="text" class="form-control" name="shorttitle"
											id="exampleInputEmail1" placeholder="标题">
									</div>
									<div class="form-group">
										<div class="form-group">
											<label for="exampleInputEmail1">丢失的物品：</label> <input
												type="text" class="form-control" name="category"
												id="exampleInputEmail1" placeholder="丢失物品">
										</div>
										<div class="form-group">
											<label for="exampleInputEmail1">丢失的地点：</label> <input
												type="text" class="form-control" name="place"
												id="exampleInputEmail1" placeholder="丢失地点">
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">丢失的时间：</label> <input
												type="date" class="form-control" name="date"
												id="exampleInputPassword1" placeholder="Password">
										</div>
										<div class="form-group">
											<label for="exampleInputFile">上传照片：</label> <input
												type="file" id="exampleInputFile" name="image">
											<p class="help-block">上传丢失物品的照片</p>
										</div>
										<div class="form-group">
											<label for="exampleInputPassword1">详细内容</label>
											<textarea class="form-control" rows="6" name="infomation"></textarea>
										</div>
										<div class="form-group">
											<input type="hidden" class="form-control" name="hide"
												value="1" id="exampleInputEmail1" placeholder="丢失地点">
										</div>
										<div class="col-md-1"></div>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">取消</button>
										<button type="submit" class="btn btn-primary">提交</button>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>

				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true">&times;</span>
								</button>
								<h4 class="modal-title" id="myModalLabel">发布认领消息</h4>
							</div>
							<div class="modal-body">
								<form action="Persenal?method=insert&status=2" method="post">
									<div class="form-group">
										<label for="exampleInputEmail1">自己拟个标题吧：</label> <input
											type="text" class="form-control" name="place"
											id="exampleInputEmail1" placeholder="丢失地点">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">捡到的的物品：</label> <input
											type="text" class="form-control" name="place"
											id="exampleInputEmail1" placeholder="丢失地点">
									</div>
									<div class="form-group">
										<label for="exampleInputEmail1">捡到的地点：</label> <input
											type="text" class="form-control" id="exampleInputEmail1"
											placeholder="捡到地点" name="place">
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">捡到的时间：</label> <input
											type="date" class="form-control" id="exampleInputPassword1"
											placeholder="Password" name="date">
									</div>
									<div class="form-group">
										<label for="exampleInputFile">上传照片：</label> <input type="file"
											id="exampleInputFile" name="image">
										<p class="help-block">上传捡到物品的照片</p>
									</div>
									<div class="form-group">
										<label for="exampleInputPassword1">详细内容</label>
										<textarea class="form-control" rows="6" name="infomation"></textarea>
									</div>
									<div class="form-group">
										<input type="hidden" class="form-control" name="hide"
											value="2" id="exampleInputEmail1" placeholder="丢失地点">
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="submit" class="btn btn-primary">提交</button>
									</div>
								</form>
							</div>

						</div>
					</div>
				</div>
				<c:if test="${param.status.equals('1')}">
					<div class="alert alert-success" role="alert">添加成功</div>
				</c:if>
				<c:if test="${param.status.equals('2')}">
					<div class="alert alert-success" role="alert">添加失败</div>
				</c:if>
				<c:if test="${param.status1.equals('1')}">
					<div class="alert alert-success" role="alert">修改成功</div>
				</c:if>
				<c:if test="${param.status1.equals('2')}">
					<div class="alert alert-success" role="alert">修改失败</div>
				</c:if>
				<!--消息管理-->
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h3>消息记录</h3>
					<hr></hr>
				</div>
				<!--消息内容-->


				<c:forEach items="${list1}" var="item" varStatus="status">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-danger">
							<div class="panel-heading ">
								<h2 class="panel-title">找到消息${item.getInformation() }</h2>
							</div>
							<div class="panel-body">
								<h4>
									<small>发起时间：${item.getReleasetime() }</small>
								</h4>
								<div class="row">
									<div class="col-md-9">
										<p>类别：${item.getCategory() }</p>
										<p>捡到时间：${item.getDatetime() }</p>
										<p>捡到地点：${item.getPlace() }</p>
									</div>
								</div>
							</div>
							<div class="panel-footer" align="right">
								<a href=""> <span class="glyphicon glyphicon-pencil"></span></a>修改
								&nbsp;&nbsp;<a href=""><span
									class="glyphicon glyphicon-trash"></span></a>删除
							</div>
						</div>
					</div>
				</c:forEach>

				<c:forEach items="${list}" var="item" varStatus="status">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="panel panel-info">
							<div class="panel-heading ">
								<h2 class="panel-title">丢失消息${item.getInformation() }</h2>
							</div>
							<div class="panel-body">
								<h4>
									<small>发起时间：${item.getReleasetime() }</small>
								</h4>
								<div class="row">
									<div class="col-md-9">
										<p>类别：${item.getCategory() }</p>
										<p>丢失时间：${item.getDatetime() }</p>
										<p>丢失地点：${item.getPlace() }</p>
									</div>
								</div>
							</div>
							<div class="panel-footer" align="right">
								<a href=""> <span class="glyphicon glyphicon-pencil"></span></a>修改
								&nbsp;&nbsp;<a href=""><span
									class="glyphicon glyphicon-trash"></span></a>删除
							</div>
						</div>
					</div>
				</c:forEach>



				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<!--
            	分页描述：分页器
            -->
					<div align="center">
						<nav aria-label="Page navigation">
							<ul class="pagination">
								<li><a href="#" aria-label="Previous"> <span
										aria-hidden="true">&laquo;</span>
								</a></li>
								<li><a href="#">1</a></li>
								<li><a href="#">2</a></li>
								<li><a href="#">3</a></li>
								<li><a href="#">4</a></li>
								<li><a href="#">5</a></li>
								<li><a href="#" aria-label="Next"> <span
										aria-hidden="true">&raquo;</span>
								</a></li>
							</ul>
						</nav>
					</div>
				</div>

				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<hr></hr>
				</div>

			</div>
</body>
</html>