<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>找到了 | 主页</title>
<!-- 导入 css-->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<!--导入jquery.js-->
<script type="text/javascript" src="js/jquery-1.11.0.js"></script>

<!--导入bootstrap.js-->
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<!-- 导入validate  -->
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript" src="js/messages_zh.js"></script>


<script>
	$(function() {
		$('.carousel').carousel({
			interval : 3000
		})
	})
</script>
<style type="text/css">
.code {
	background-image: url(code.jpg);
	font-family: Arial;
	font-style: italic;
	color: Red;
	border: 0;
	padding: 2px 3px;
	letter-spacing: 3px;
	font-weight: bolder;
}

.unchanged {
	border: 0;
}
</style>

<style type="text/css">
.code {
	background-image: url(code.jpg);
	font-family: Arial;
	font-style: italic;
	color: Red;
	border: 0;
	padding: 2px 3px;
	letter-spacing: 3px;
	font-weight: bolder;
}

.unchanged {
	border: 0;
}
</style>

</head>
<body onload="createCode()">
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
						<a class="navbar-brand">找到了</a>
					</div>

					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">首页<span class="sr-only">(current)</span></a></li>
							<li><a href="select?method=lose&status=1">寻物</a></li>
							<li><a href="select?method=find&status=1">认领</a></li>
							<li><a href="#">查询</a></li>
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
        	轮播图
        -->
		<div class="row">
			<div id="carousel-example-generic" class="carousel slide"
				data-ride="carousel">
				<!-- Indicators -->
				<!--需要几张图片 就得添加几个 li 还需要在下面的div提供几个 class=item的div-->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0"
						class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- 显示的图片 -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/1.jpg" alt="">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="img/2.jpg" alt="...">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="img/3.jpg" alt="...">
						<div class="carousel-caption"></div>
					</div>
				</div>

				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic"
					role="button" data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#carousel-example-generic"
					role="button" data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>
		</div>
		

		<hr></hr>
		<div class="page-header" align="right">
			<h5>
				@联系我们:2756299678@qq.com</small>
			</h5>
		</div>

	</div>
</body>
</html>
