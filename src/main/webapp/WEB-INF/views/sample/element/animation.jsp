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
		<style>
			.site-doc-icon li .layui-anim {
			    width: 150px;
			    height: 150px;
			    line-height: 150px;
			    margin: 0 auto 10px;
			    text-align: center;
			    background-color: #009688;
			    cursor: pointer;
			    color: #fff;
			    border-radius: 50%;
			}
			.site-doc-icon li {
			    width: 222px;
			}
		</style>
	</head>
	<body>
		<div class="layui-main">
			<div id="LAY_preview">
				<fieldset class="layui-elem-field layui-field-title" style="margin-top: 30px;">
				  <legend>动画过程演示</legend>
				</fieldset>
				 
				<ul class="site-doc-icon">
				  <li>
				    <div class="layui-anim layui-anim-up" data-anim="layui-anim-up">从最底部往上滑入</div>
				    <div class="code">layui-anim-up</div>
				  </li>
				  <li>
				    <div class="layui-anim layui-anim-upbit" data-anim="layui-anim-upbit">微微往上滑入</div>
				    <div class="code">layui-anim-upbit</div>
				  </li>
				  <li>
				    <div class="layui-anim layui-anim-scale" data-anim="layui-anim-scale">平滑放大</div>
				    <div class="code">layui-anim-scale</div>
				  </li>
				   <li>
				    <div class="layui-anim layui-anim-scaleSpring" data-anim="layui-anim-scaleSpring">弹簧式放大</div>
				    <div class="code">layui-anim-scaleSpring</div>
				  </li>
				</ul>
				<ul class="site-doc-icon">
				  <li>
				    <div class="layui-anim" data-anim="layui-anim-fadein">渐现</div>
				    <div class="code">layui-anim-fadein</div>
				  </li>
				  <li>
				    <div class="layui-anim" data-anim="layui-anim-fadeout">渐隐</div>
				    <div class="code">layui-anim-fadeout</div>
				  </li>
				  <li>
				    <div class="layui-anim" data-anim="layui-anim-rotate">360度旋转</div>
				    <div class="code">layui-anim-rotate</div>
				  </li>
				  <li>
				    <div class="layui-anim" data-anim="layui-anim-rotate layui-anim-loop">循环动画</div>
				    <div class="code">追加：layui-anim-loop</div>
				  </li>
				</ul>
		</div>
	</div>
<script>
layui.use('jquery', function(){
  var $ = layui.$;
  
  //演示动画
  $('.site-doc-icon .layui-anim').on('click', function(){
    var othis = $(this), anim = othis.data('anim');
 
    //停止循环
    if(othis.hasClass('layui-anim-loop')){
      return othis.removeClass(anim);
    }
    
    othis.removeClass(anim);
    
    setTimeout(function(){
      othis.addClass(anim);
    });
    //恢复渐隐
    if(anim === 'layui-anim-fadeout'){
      setTimeout(function(){
        othis.removeClass(anim);
      }, 1300);
    }
  });
});
</script>	
	</body>
</html>