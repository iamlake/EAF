<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>在线演示</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<script type="text/javascript" src="<%=basePath%>assets/layui/layui.js"></script>
		<link rel="stylesheet" href="<%=basePath%>assets/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="<%=basePath%>assets/css/alicdn/global.css" media="all" />
	</head>
	<body>
		<div class="layui-main">
			<div id="LAY_preview">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>小徽章、大家族</legend>
				</fieldset>
				   
				<blockquote class="layui-elem-quote layui-quote-nm">
				  小圆点：
				  <span class="layui-badge-dot"></span>
				  <span class="layui-badge-dot layui-bg-orange"></span>
				  <span class="layui-badge-dot layui-bg-green"></span>
				  <span class="layui-badge-dot layui-bg-cyan"></span>
				  <span class="layui-badge-dot layui-bg-blue"></span>
				  <span class="layui-badge-dot layui-bg-black"></span>
				  <span class="layui-badge-dot layui-bg-gray"></span>
				  
				  <br><br>常规弧形徽章：
				  <span class="layui-badge">6</span>
				  <span class="layui-badge">99</span>
				  <span class="layui-badge">61728</span>
				  <span class="layui-badge">赤</span>
				  <span class="layui-badge layui-bg-orange">橙</span>
				  <span class="layui-badge layui-bg-green">绿</span>
				  <span class="layui-badge layui-bg-cyan">青</span>
				  <span class="layui-badge layui-bg-blue">蓝</span>
				  <span class="layui-badge layui-bg-black">黑</span>
				  <span class="layui-badge layui-bg-gray">灰</span>
				  
				  <br><br>边框徽章：
				  <span class="layui-badge-rim">6</span>
				  <span class="layui-badge-rim">Hot</span>
				</blockquote> 
				 
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>与其它元素的搭配</legend>
				</fieldset> 
				 
				<button class="layui-btn">查看消息<span class="layui-badge layui-bg-gray">1</span></button>
				<button class="layui-btn">动态<span class="layui-badge-dot layui-bg-orange"></span></button>
				 
				<br><br>
				 
				<ul class="layui-nav style=" text-align:="" right;"=""> &lt;-- 小Tips：这里有没有发现，设置导航靠右对齐（或居中对齐）其实非常简单 --&gt;
				  <li class="layui-nav-item">
				    <a href="">控制台<span class="layui-badge">9</span></a>
				  </li>
				  <li class="layui-nav-item">
				    <a href="">个人中心<span class="layui-badge-dot"></span></a>
				  </li>
				</ul>
				<br>
				 
				<div class="layui-tab layui-tab-brief">
				  <ul class="layui-tab-title">
				    <li class="layui-this">网站设置</li>
				    <li>用户管理<span class="layui-badge-dot"></span></li>
				    <li>最新邮件<span class="layui-badge">99+</span></li>
				  </ul>
				  <div class="layui-tab-content"></div>
				</div> 
		</div>
	</div>
	</body>
</html>