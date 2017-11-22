<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>学生信息维护--SAMS后台管理</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<style type="text/css">
			.layui-form-item .layui-inline{ width:33.333%; float:left; margin-right:0; }
			@media(max-width:1240px){
				.layui-form-item .layui-inline{ width:100%; float:none; }
			}
		</style>
		<script type="text/javascript" src="js/sams/student/studentEdit.js"></script>	
	</head>
	<body class="childrenBody">
		<form class="layui-form" style="width:80%;">
			<div class="layui-form-item">
				<label class="layui-form-label">姓名</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input studentName" lay-verify="required" placeholder="请输入姓名" name="studentName">
				</div>
			</div>
			<div class="layui-form-item">
				<label class="layui-form-label">学号</label>
				<div class="layui-input-block">
					<input type="text" class="layui-input studentNo" lay-verify="required" placeholder="请输入学号" name="studentNo">
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-inline">
				    <label class="layui-form-label">性别</label>
				    <div class="layui-input-block sex">
				      	<input type="radio" name="sex" value="男" title="男" checked>
				      	<input type="radio" name="sex" value="女" title="女">
				      	<input type="radio" name="sex" value="保密" title="保密">
				    </div>
			    </div>
			    <div class="layui-inline">
				    <label class="layui-form-label">出生日期</label>
					<div class="layui-input-block">
						<input type="text" class="layui-input birthDate" id="txt_birthDate" lay-verify="required|date" placeholder="请输入出生年月" name="birthDate">
					</div>
			</div>
			    <div class="layui-inline">
   				    <label class="layui-form-label">入学时间</label>
					<div class="layui-input-block">
						<input type="text" class="layui-input startTime" id="txt_startTime" lay-verify="required|date" placeholder="请输入入学时间" name="startTime">
					</div>
			    </div>
			</div>
			<div class="layui-form-item">
				    <label class="layui-form-label">状态</label>
					<div class="layui-input-block">
						<input type="checkbox"  checked="" lay-skin="switch" lay-text="启用|停用">
					</div>
			</div>			
			<div class="layui-form-item">
				<label class="layui-form-label">备注</label>
				<div class="layui-input-block">
					<textarea placeholder="请输入备注信息" class="layui-textarea remark"></textarea>
				</div>
			</div>
			<div class="layui-form-item">
				<div class="layui-input-block">
					<button class="layui-btn" lay-submit="" lay-filter="addUser">立即提交</button>
					<button type="reset" class="layui-btn layui-btn-primary">重置</button>
			    </div>
			</div>
		</form>
	</body>
</html>