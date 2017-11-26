<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>学生管理--SAMS后台管理</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="http://at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
		<style type="text/css">
			.layui-table, .layui-table th {
				text-align: center;
			}
			.layui-table th {
				font-weight: bold;
			}
			.layui-form-checkbox {
				position: static;
			}
			.layui-table[lay-skin=row] td, .layui-table[lay-skin=row] th {
			    border-width: 0 1px 1 0;
			}
		</style>
		<script type="text/javascript" src="js/sams/student/studentList.js"></script>
	</head>
	<body class="childrenBody">
		<blockquote class="layui-elem-quote news_search">
			<div class="queryform">
				<div class="layui-inline">
					学号：
				    <div class="layui-input-inline">
				    	<input type="text" name="studentNo" placeholder="请输入学号" class="layui-input search_stuno">
				    </div>
					&nbsp;&nbsp;姓名：
				    <div class="layui-input-inline">
				    	<input type="text" name="studentName" placeholder="请输入姓名" class="layui-input search_stuname">
				    </div>				    
				    <button class="layui-btn" data-type="doQuery">
						<i class="layui-icon">&#xe615;</i>
						查询
					</button>
				</div>
				<div class="layui-inline">
					<button class="layui-btn layui-btn-normal" data-type="doAdd">
						<i class="layui-icon">&#xe608;</i>
						添加学生
					</button>
				</div>
				<div class="layui-inline">
					<button class="layui-btn layui-btn-danger" data-type="doDelBatch">
						<i class="layui-icon">&#xe640;</i>
						批量删除
					</button>
				</div>
				<div class="layui-inline">
					<div class="layui-form-mid layui-word-aux">　REST请求数据CRUD示例页面</div>
				</div>
			</div>
		</blockquote>
		<table class="layui-table" lay-filter="student_list" id="table_student"></table>
		<script type="text/html" id="barOps">
			<a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="doDetail">查看</a>
			<a class="layui-btn layui-btn-xs users_edit" lay-event="doEdit"><i class="iconfont icon-edit"></i> 编辑</a>
			<a class="layui-btn layui-btn-danger layui-btn-xs users_del" lay-event="doDel"><i class="layui-icon">&#xe640;</i> 删除</a>
		</script>		
	</body>
</html>