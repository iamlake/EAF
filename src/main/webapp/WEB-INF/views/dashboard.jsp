<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
	<%@ include file="/WEB-INF/views/base/base.jsp" %>
	<base href="<%=basePath%>">
	<meta charset="utf-8">
	<title>首页——EAF后台管理模板</title>
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="apple-mobile-web-app-status-bar-style" content="black">
	<meta name="apple-mobile-web-app-capable" content="yes">
	<meta name="format-detection" content="telephone=no">
	<link rel="stylesheet" href="http://at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
	<link rel="stylesheet" href="assets/css/main.css" media="all" />
	<script type="text/javascript" src="js/main.js"></script>
</head>
<body class="childrenBody">
	<div class="panel_box row">
		<div class="panel col">
			<a href="javascript:;" data-url="rest/page/message" style="height:94px">
				<div class="panel_icon">
					<i class="layui-icon" data-icon="&#xe63a;">&#xe63a;</i>
				</div>
				<div class="panel_word newMessage">
					<span></span>
					<cite>新消息</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="rest/page/user_allUsers">
				<div class="panel_icon" style="background-color:#FF5722;">
					<i class="iconfont icon-dongtaifensishu" data-icon="icon-dongtaifensishu"></i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>新增人数</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="rest/page/sams_student_studentList">
				<div class="panel_icon" style="background-color:#009688;">
					<i class="layui-icon" data-icon="&#xe613;">&#xe613;</i>
				</div>
				<div class="panel_word userAll">
					<span></span>
					<cite>用户总数</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="rest/page/images">
				<div class="panel_icon" style="background-color:#5FB878;">
					<i class="layui-icon" data-icon="&#xe64a;">&#xe64a;</i>
				</div>
				<div class="panel_word imgAll">
					<span></span>
					<cite>图片总数</cite>
				</div>
			</a>
		</div>
		<div class="panel col">
			<a href="javascript:;" data-url="rest/page/news">
				<div class="panel_icon" style="background-color:#F7B824;">
					<i class="iconfont icon-wenben" data-icon="icon-wenben"></i>
				</div>
				<div class="panel_word waitNews">
					<span></span>
					<cite>待审核文章</cite>
				</div>
			</a>
		</div>
		<div class="panel col max_panel">
			<a href="javascript:;" data-url="rest/page/news">
				<div class="panel_icon" style="background-color:#2F4056;">
					<i class="iconfont icon-text" data-icon="icon-text"></i>
				</div>
				<div class="panel_word allNews">
					<span></span>
					<em>文章总数</em>
					<cite>文章列表</cite>
				</div>
			</a>
		</div>
	</div>
	<blockquote class="layui-elem-quote explain">
		<p>本模板基于Layui实现，支持除LayIM外所有的Layui组件。<a href="http://layim.layui.com/" target="_blank" class="layui-btn layui-btn-xs">前往获取LayIM授权</a><a href="#" target="_blank" class="layui-btn layui-btn-xs layui-btn-danger">码云下载</a><a href="https://github.com/iamlake/EAF" target="_blank" class="layui-btn layui-btn-xs layui-btn-danger">GitHub下载</a>　<span style="color:#1E9FFF;">郑重提示：当前为BETA版，功能尚在完善中，仅供学习和交流使用，请了解</span></p>
		<p>开发文档地址：<a class="layui-btn layui-btn-xs" target="_blank" href="http://www.layui.com/doc">点此跳转</a> <a class="layui-btn layui-btn-xs layui-btn-danger" target="_blank" href="#">我要点赞</a>　<span style="color:#f00;">注：前端框架未引入任何第三方组件（天气信息除外），单纯的layui+js实现的各种功能</span></p>
		<!-- 
		<p>技术交流QQ群：<a target="_blank" href="http://shang.qq.com/wpa/qunwpa?idkey=8b7dd3ea73528c1e46c5d4e522426d60deed355caefdf481c1eacdd1b7b73bfd"><img border="0" src="http://pub.idqqimg.com/wpa/images/group.png" alt="layui后台管理模版cms" title="layuicms后台管理模版"></a>（添加时请注明来自本框架）</p>
		 -->
	</blockquote>
	<div class="row">
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">更新日志</blockquote>
			<div class="layui-elem-quote layui-quote-nm">
				<h3># v0.0.1（优化） - 2017-11-15</h3>
				<p style="color:#f00;">* 技术选型说明：</p>
				<p>* 1、后端</p>
				<p>* 【核心框架】Spring Framework 4.x【安全框架】Apache Shiro 1.3【视图框架】Spring MVC 4.x</p>
				<p>* 【持久层框架】MyBatis 3.2【数据库连接池】Alibaba Druid 1.0【缓存框架】Ehcache 2.6</p>
				<p>* 【日志管理】SLF4J 1.7、Log4j 1.2【分页插件】pagehelper 5.1.2</p>
				<p>* 【代码生成器】MyBatis-generator 1.3.5</p>
				<p>* 2、前端</p>
				<p>* 【JS框架】LayUI 2.2.4、jQuery 1.9</p>
				<p>* 【CSS框架】Twitter Bootstrap 2.3.1</p>
				<p>* 【表单】layUI form【数据表格】layUI table【弹出层】layer</p>
				<p>* 【日期控件】laydate【模板引擎】laytpl</p>
				<p>* 3、平台</p>
				<p>* 【服务器中间件】在Java EE 6规范（Servlet 3.0、JSP 2.2）下开发，支持应用服务器中间件有Tomcat 7、WebLogic 11g等。</p>
				<p>* 【数据库支持】目前仅提供Oracle数据库的支持，未来考虑对其他数据库扩展，例如MySQL、H2等。</p>
				<p>* 【开发环境】Java EE、Eclipse、Maven、Git</p>
				<br />
				<p># v0.0.1（新增） - 2017-10-25</p>
				<p>* EAF框架设计初步构想</p>
			</div>
		</div>
		<div class="sysNotice col">
			<blockquote class="layui-elem-quote title">系统基本参数</blockquote>
			<table class="layui-table">
				<colgroup>
					<col width="150">
					<col>
				</colgroup>
				<tbody>
					<tr>
						<td>当前版本</td>
						<td class="version"></td>
					</tr>
					<tr>
						<td>开发作者</td>
						<td class="author"></td>
					</tr>
					<tr>
						<td>网站首页</td>
						<td class="homePage"></td>
					</tr>
					<tr>
						<td>服务器环境</td>
						<td class="server"></td>
					</tr>
					<tr>
						<td>数据库版本</td>
						<td class="dataBase"></td>
					</tr>
					<tr>
						<td>最大上传限制</td>
						<td class="maxUpload"></td>
					</tr>
					<tr>
						<td>当前用户权限</td>
						<td class="userRights"></td>
					</tr>
				</tbody>
			</table>
			<blockquote class="layui-elem-quote title">最新文章<i class="iconfont icon-new1"></i></blockquote>
			<table class="layui-table" lay-skin="line">
				<colgroup>
					<col>
					<col width="110">
				</colgroup>
				<tbody class="hot_news"></tbody>
			</table> 
		</div>
	</div>
</body>
</html>