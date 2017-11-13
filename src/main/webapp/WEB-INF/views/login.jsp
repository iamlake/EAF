<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>登录--layui后台管理模板</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="assets/css/login.css" media="all" />
		<script type="text/javascript" src="js/login/login.js"></script>
	</head>
	<body>
		<video class="video-player" preload="auto" autoplay="autoplay" loop="loop" data-height="1080" data-width="1920" height="1080" width="1920">
		    <source src="assets/images/login.mp4" type="video/mp4">
		    <!-- 此视频文件为支付宝所有，在此仅供样式参考，如用到商业用途，请自行更换为其他视频或图片，否则造成的任何问题使用者本人承担，谢谢 -->
		</video>
		<div class="video_mask"></div>
		<div class="login">
		    <h1>SAMS-管理登录</h1>
		    <form class="layui-form" action="rest/user/login" method="post">
		    	<div class="layui-form-item">
					<input class="layui-input" name="username" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
			    </div>
			    <div class="layui-form-item">
					<input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
			    </div>
			    <div class="layui-form-item form_code">
					<input class="layui-input" name="code" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
					<div class="code"><img src="assets/images/code.jpg" width="116" height="36"></div>
			    </div>
				<button class="layui-btn login_btn" lay-submit="" lay-filter="login">登录</button>
			</form>
		</div>
	</body>
</html>