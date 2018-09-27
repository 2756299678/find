<%@page import="dao.UserDao"%>
<%@page import="domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://localhost:8080/3-28/util" prefix ="util"%>
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
					<li><a href="Persenal.jsp">个人主页</a></li>|
					<li style="padding-top: 25px;p"><a href="Persenal.jsp">发布消息
					</a></li>|
					<li><a href="login.html">退出</a></li>
				</ul>
			</div>
		</div>


		<!--导航条-->
		<div class="row">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="#">找到了</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li><a href="zhuye.jsp">首页</a></li>
							<li><a href="find">寻物</a></li>
							<li><a href="find2.jsp">认领</a></li>
							<li class="active"><a href="#">查询<span class="sr-only">(current)</span></a></li>
						</ul>
						<form class="navbar-form navbar-left pull-right" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">Submit</button>
						</form>

					</div>
					<!-- /.navbar-collapse -->
				</div>
				<!-- /.container-fluid -->
			</nav>
		</div>
		<!--
            	搜索框的制作
            -->
		<c:if test="${param.status.equals('1')}">
			<div class="page-header">
				<h1>
					寻物消息 <small>find</small>
				</h1>
				<h4>
					<small>在这里，你可能会找到自己丢失的物品的信息。</small>
				</h4>

			</div>
		</c:if>
		<c:if test="${param.status.equals('2')}">
			<div class="page-header">
				<h1>
					认领消息 <small>find</small>
				</h1>
				<h4>
					<small>在这里，你可能会找到自己捡到的物品的信息。</small>
				</h4>
			</div>
		</c:if>
		<c:forEach items="${list}" var="item" varStatus="status">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="panel panel-info">
					<div class="panel-heading ">
						<h2 class="panel-title">
						<c:if test="${param.status.equals('1')}">丢失消息</c:if>
							<c:if test="${param.status.equals('2')}">认领消息</c:if>
						${item.getInformation() }
						</h2>
					</div>
					<div class="panel-body">
						<h4>
							<small>发起时间：${item.getReleasetime() }</small>
						</h4>
						<div class="row">
							<div class="col-md-9">
								<p>类别：${item.getCategory() }</p>
								<c:if test="${param.status.equals('1')}">
								<p>丢失时间：${item.getDatetime() }</p>
								<p>丢失地点：${item.getPlace() }</p>
								</c:if>
								<c:if test="${param.status.equals('2')}">
								<p>捡到时间：${item.getDatetime() }</p>
								<p>捡到地点：${item.getPlace() }</p>
								</c:if>
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		<div class="row-fulid">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<div>
					<util:page pagingBean="${pagingBean}"/>
				</div>
			</div>
			<div class="col-md-3"></div>
		</div>  
		<!--
            	页脚内容
            -->
		<hr></hr>
		<div class="page-header" align="right">
			<h5>
				@联系我们:2756299678@qq.com</small>
			</h5>
		</div>

	</div>
</body>
</html>
