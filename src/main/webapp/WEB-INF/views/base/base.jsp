<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!-- layui -->
<link rel="icon" href="images/favicon.ico">
<link rel="stylesheet" href="<%=basePath%>assets/layui/css/layui.css" media="all" />
<link rel="stylesheet" href="<%=basePath%>assets/css/global.css" media="all" />
<script type="text/javascript" src="<%=basePath%>assets/layui/layui.js"></script>
<script type="text/javascript" src="<%=basePath%>assets/js/global.js"></script>
<!-- TODO 页面公共资源 -->
<script type="text/javascript">
	var basePath = '<%=basePath%>';
	var loginUser = {
		account : '${user_session.account }',
		fullname : '${user_session.fullname }',
		userHead : '${user_session.userHead }'
	}
</script>