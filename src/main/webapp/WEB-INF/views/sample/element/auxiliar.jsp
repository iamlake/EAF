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
				  <legend>引用区块 - 默认风格</legend>
				</fieldset>
				 
				<blockquote class="layui-elem-quote">这个貌似不用多介绍，因为你已经在太多的地方都看到</blockquote>
				 
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>引用区块 - 一般风格</legend>
				</fieldset>
				 
				<blockquote class="layui-elem-quote layui-quote-nm">
				  猿强，则国强。国强，则猿更强！ 
				  <br>——孟子（好囖。。其实这特喵的是我说的）
				</blockquote>
				 
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>字段集区块</legend>
				</fieldset>
				 
				<fieldset class="layui-elem-field">
				  <legend>爱好</legend>
				  <div class="layui-field-box">
				    你可以在这里放任何内容，比如表单神马的
				  </div>
				</fieldset>
				<br>
				<fieldset class="layui-elem-field layui-field-title">
				  <legend>带标题的横线</legend>
				</fieldset>
				 
				内容区域
				 
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>分割线</legend>
				</fieldset>
				 
				默认分割线
				<hr>
				 
				赤色分割线
				<hr class="layui-bg-red">
				 
				橙色分割线
				<hr class="layui-bg-orange">
				 
				墨绿分割线
				<hr class="layui-bg-green">
				 
				青色分割线
				<hr class="layui-bg-cyan">
				 
				蓝色分割线
				<hr class="layui-bg-blue">
				 
				黑色分割线
				<hr class="layui-bg-black">
				 
				灰色分割线
				<hr class="layui-bg-gray">
				 
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>纯圆角</legend>
				</fieldset>
				 
				<div class="layui-inline">
				  <img src="<%=basePath%>assets/images/userhead/boa.jpg" class="layui-circle">
				</div>
		</div>
	</div>
	</body>
</html>