<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>登录—ELF后台管理模板</title>
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
		    <h1>SAMS系统登录</h1>
		    <form class="layui-form loginform" action="rest/login" method="post">
		    	<div class="layui-form-item">
					<input class="layui-input" name="account" placeholder="用户名" lay-verify="required" type="text" autocomplete="off">
			    </div>
			    <div class="layui-form-item">
					<input class="layui-input" name="password" placeholder="密码" lay-verify="required" type="password" autocomplete="off">
			    </div>
			    <div class="layui-form-item form_code">
					<input class="layui-input" name="kaptcha" placeholder="验证码" lay-verify="required" type="text" autocomplete="off">
					<div class="code">
						<img src="images/kaptcha.jpg" width="116" height="36" class="kaptchaImage" title="看不清?点击换一张"  data-type="changeImage"/>
					</div>
			    </div>
			<button class="layui-btn login_btn" lay-submit="" lay-filter="login">登录</button>
			<!-- 
			<br/>
			<label class="layui-form-label">记住我</label><input type="checkbox"
				name="rememberMe" lay-skin="switch" lay-text="ON|OFF">
				-->
		</form>
		</div>
	</body>
</html>