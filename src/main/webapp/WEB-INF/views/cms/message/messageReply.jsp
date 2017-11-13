<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>消息回复--layui后台管理模板</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="http://at.alicdn.com/t/font_tnyc012u2rlwstt9.css" media="all" />
		<link rel="stylesheet" href="assets/css/message.css" media="all" />
		<script type="text/javascript" src="js/cms/message/message.js"></script>
	</head>
	<body class="childrenBody">
		<form class="layui-form">
			<div class="replay_edit">
				<textarea class="layui-textarea" id="msgReply"></textarea>
				<a class="layui-btn send_msg">发送</a>
			</div>
			<table class="layui-table msg_box" lay-skin="line">
				<colgroup>
					<col width="50%">
					<col width="30%">
					<col>
				</colgroup>
				<tbody class="msgReplyHtml"></tbody>
			</table>
		</form>
	</body>
</html>