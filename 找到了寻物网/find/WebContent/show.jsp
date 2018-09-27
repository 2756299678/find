<%@page import="dao.UserDao"%>
<%@page import="domain.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<script type="text/javascript" src="js/jquery-1.11.0.js" ></script>
			
		<!--导入bootstrap.js-->
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	</head>
	<body>
		<!-- header-->
		<div class="container">
			<!--logo
				
				小屏幕 2个一行 
				超小屏幕一个一行
			-->
			
			<div class="row">
				<div class="col-md-4 col-sm-6 col-xs-12" >
					<img src="img/find.png" />
				</div>
				
				<div class="col-md-5 col-sm-6 col-xs-12 pull-right" >
					<ul class="list-inline" >
						<li style="padding-top: 25px;p">${user.user }，欢迎你！ </li>
						
					-->	<li><a href="Persenal.jsp">个人主页</a></li>|
						<li style="padding-top: 25px;p"><a href="persenal.jsp">发布消息 </a></li>|
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
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#">找到了</a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li ><a href="index.jsp">首页</a></li>
				        <li class="active"><a href="#">寻物<span class="sr-only">(current)</span></a></li>
				        <li><a href="find.jsp">认领</a></li>
				        <li><a href="find2.jsp">查询</a></li>
				      </ul>
				      <form class="navbar-form navbar-left pull-right" role="search">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="Search">
				        </div>
				        <button type="submit" class="btn btn-default">Submit</button>
				      </form>
				     
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
			<!--
            	显示信息的
            -->
           
            <div class="col-lg-12 col-md-12 hidden-sm hidden-xs panel panel-default">
            	<img src="img/ad.jpg" class="img-responsive" alt="Responsive image"></img>
            </div>
            
            
            <div class="panel panel-primary">
            	 <div class="panel-heading">
			        <h2 class="panel-title">
			       	 
			       	 ${info.getShorttitle() }
			        </h2>
			    </div>
    			<div class="panel-body">
    				<h3>${info.getUser() } / <small>发布寻物消息</small></h3>
    				<h4><small>发布时间：${info.getReleasetime() }</small></h4>
    			<h4>图片：</h4>
    			<div class="container-fluid" align="left">
            		<img src="img/key.jpg" class="img-thumbnail" alt="#"></img>
            	</div>
      			<h4>物品种类：${info.getCategory() }</h4>
      			<h4>丢失时间：${info.getDatetime() }</h4>
      			<h4>丢失地点：${info.getPlace() }</h4>
      			<h3>详细信息：</h3>
      			<h4>${info.getInformation() }</h4>
   				 </div>
			</div>
			
           
           <div class="page-header">
 			 <h3>联系方式：</small></h3>
		   </div>
           <div class="panel panel-default">
    			<div class="panel-body">
       			<h4>手机：${info.getPhone() }</h4>
      			
      			<h4>邮箱：${info.getEmail() }</h4>
   				 </div>
			</div>
			
            <div class="panel panel-default">
    			<div class="panel-body" align="center">
       			让物品不再丢失，让学生不再焦虑
   				 </div>
			</div>
            
			<!--
            	页脚内容
            -->
			<hr></hr>
			
			
		</div>
	</body>
</html>
