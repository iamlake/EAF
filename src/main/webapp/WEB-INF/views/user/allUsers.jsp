<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>用户总数--layui后台管理模板</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="http://at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
		<link rel="stylesheet" href="assets/css/user.css" media="all" />
		<script type="text/javascript" src="js/user/allUsers.js"></script>
	</head>
	<body class="childrenBody">
		<blockquote class="layui-elem-quote news_search">
			<div class="layui-inline">
			    <div class="layui-input-inline">
			    	<input type="text" value="" placeholder="请输入关键字" class="layui-input search_input">
			    </div>
			    <a class="layui-btn search_btn">查询</a>
			</div>
			<div class="layui-inline">
				<a class="layui-btn layui-btn-normal usersAdd_btn">添加用户</a>
			</div>
			<div class="layui-inline">
				<a class="layui-btn layui-btn-danger batchDel">批量删除</a>
			</div>
			<div class="layui-inline">
				<div class="layui-form-mid layui-word-aux">　REST请求数据CRUD示例页面</div>
			</div>
		</blockquote>
		<div class="layui-form users_list">
		    <table class="layui-table" lay-data="{url:'rest/json/userlist', page:true, limit:10, limits:[10,30,60,150,300], id:'test1'}" lay-filter="test">
		      <thead>
		        <tr>
		          <th lay-data="{checkbox:true, fixed: true}"></th>
		          <th lay-data="{field:'userName', width:150, fixed: true}">登录名</th>
		          <th lay-data="{field:'userEmail', width:250}">邮箱</th>
		          <th lay-data="{field:'userSex', width:100}">性别</th>
		          <th lay-data="{field:'userGrade', width:150}">会员等级</th>
		          <th lay-data="{field:'userStatus', width:150}">会员状态</th>
		          <th lay-data="{field:'userEndTime', width:250}">最后登录时间</th>
	              <th lay-data="{fixed: 'right', width:250, align:'center', toolbar: '#barOps'}">操作</th>
		        </tr>
		      </thead>
		    </table>
			<script type="text/html" id="barOps">
		          <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
		          <a class="layui-btn layui-btn-xs users_edit" lay-event="edit"><i class="iconfont icon-edit"></i> 编辑</a>
		          <a class="layui-btn layui-btn-danger layui-btn-xs users_del" lay-event="del"><i class="layui-icon">&#xe640;</i> 删除</a>
			</script>
		</div>
	</body>
</html>