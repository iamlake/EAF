<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ include file="/WEB-INF/views/base/base.jsp" %>
		<base href="<%=basePath%>">
		<meta charset="utf-8">
		<title>IconFont</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<style type="text/css">
			*{margin: 0;padding: 0;list-style: none;}
			/*
			KISSY CSS Reset
			理念：1. reset 的目的不是清除浏览器的默认样式，这仅是部分工作。清除和重置是紧密不可分的。
			2. reset 的目的不是让默认样式在所有浏览器下一致，而是减少默认样式有可能带来的问题。
			3. reset 期望提供一套普适通用的基础样式。但没有银弹，推荐根据具体需求，裁剪和修改后再使用。
			特色：1. 适应中文；2. 基于最新主流浏览器。
			维护：玉伯<lifesinger@gmail.com>, 正淳<ragecarrier@gmail.com>
			 */
			
			/** 清除内外边距 **/
			body, h1, h2, h3, h4, h5, h6, hr, p, blockquote, /* structural elements 结构元素 */
			dl, dt, dd, ul, ol, li, /* list elements 列表元素 */
			pre, /* text formatting elements 文本格式元素 */
			form, fieldset, legend, button, input, textarea, /* form elements 表单元素 */
			th, td /* table elements 表格元素 */ {
			  margin: 0;
			  padding: 0;
			}
			
			/** 设置默认字体 **/
			body,
			button, input, select, textarea /* for ie */ {
			  font: 12px/1.5 tahoma, arial, \5b8b\4f53, sans-serif;
			}
			h1, h2, h3, h4, h5, h6 { font-size: 100%; }
			address, cite, dfn, em, var { font-style: normal; } /* 将斜体扶正 */
			code, kbd, pre, samp { font-family: courier new, courier, monospace; } /* 统一等宽字体 */
			small { font-size: 12px; } /* 小于 12px 的中文很难阅读，让 small 正常化 */
			
			/** 重置列表元素 **/
			ul, ol { list-style: none; }
			
			/** 重置文本格式元素 **/
			a { text-decoration: none; }
			a:hover { text-decoration: underline; }
			
			
			/** 重置表单元素 **/
			legend { color: #000; } /* for ie6 */
			fieldset, img { border: 0; } /* img 搭车：让链接里的 img 无边框 */
			button, input, select, textarea { font-size: 100%; } /* 使得表单元素在 ie 下能继承字体大小 */
			/* 注：optgroup 无法扶正 */
			
			/** 重置表格元素 **/
			table { border-collapse: collapse; border-spacing: 0; }
			
			/* 清除浮动 */
			.ks-clear:after, .clear:after {
			  content: '\20';
			  display: block;
			  height: 0;
			  clear: both;
			}
			.ks-clear, .clear {
			  *zoom: 1;
			}
			
			.main {
			  padding: 30px 100px;
			width: 960px;
			margin: 0 auto;
			}
			.main h1{font-size:36px; color:#333; text-align:left;margin-bottom:30px; border-bottom: 1px solid #eee;}
			
			.helps{margin-top:40px;}
			.helps pre{
			  padding:20px;
			  margin:10px 0;
			  border:solid 1px #e7e1cd;
			  background-color: #fffdef;
			  overflow: auto;
			}
			
			.icon_lists{
			  width: 100% !important;
			
			}
			
			.icon_lists li{
			  float:left;
			  width: 100px;
			  height:180px;
			  text-align: center;
			  list-style: none !important;
			}
			.icon_lists .icon{
			  font-size: 42px;
			  line-height: 100px;
			  margin: 10px 0;
			  color:#333;
			  -webkit-transition: font-size 0.25s ease-out 0s;
			  -moz-transition: font-size 0.25s ease-out 0s;
			  transition: font-size 0.25s ease-out 0s;
			
			}
			.icon_lists .icon:hover{
			  font-size: 100px;
			}
			
			
			
			.markdown {
			  color: #666;
			  font-size: 14px;
			  line-height: 1.8;
			}
			
			.highlight {
			  line-height: 1.5;
			}
			
			.markdown img {
			  vertical-align: middle;
			  max-width: 100%;
			}
			
			.markdown h1 {
			  color: #404040;
			  font-weight: 500;
			  line-height: 40px;
			  margin-bottom: 24px;
			}
			
			.markdown h2,
			.markdown h3,
			.markdown h4,
			.markdown h5,
			.markdown h6 {
			  color: #404040;
			  margin: 1.6em 0 0.6em 0;
			  font-weight: 500;
			  clear: both;
			}
			
			.markdown h1 {
			  font-size: 28px;
			}
			
			.markdown h2 {
			  font-size: 22px;
			}
			
			.markdown h3 {
			  font-size: 16px;
			}
			
			.markdown h4 {
			  font-size: 14px;
			}
			
			.markdown h5 {
			  font-size: 12px;
			}
			
			.markdown h6 {
			  font-size: 12px;
			}
			
			.markdown hr {
			  height: 1px;
			  border: 0;
			  background: #e9e9e9;
			  margin: 16px 0;
			  clear: both;
			}
			
			.markdown p,
			.markdown pre {
			  margin: 1em 0;
			}
			
			.markdown > p,
			.markdown > blockquote,
			.markdown > .highlight,
			.markdown > ol,
			.markdown > ul {
			  width: 80%;
			}
			
			.markdown ul > li {
			  list-style: circle;
			}
			
			.markdown > ul li,
			.markdown blockquote ul > li {
			  margin-left: 20px;
			  padding-left: 4px;
			}
			
			.markdown > ul li p,
			.markdown > ol li p {
			  margin: 0.6em 0;
			}
			
			.markdown ol > li {
			  list-style: decimal;
			}
			
			.markdown > ol li,
			.markdown blockquote ol > li {
			  margin-left: 20px;
			  padding-left: 4px;
			}
			
			.markdown code {
			  margin: 0 3px;
			  padding: 0 5px;
			  background: #eee;
			  border-radius: 3px;
			}
			
			.markdown pre {
			  border-radius: 6px;
			  background: #f7f7f7;
			  padding: 20px;
			}
			
			.markdown pre code {
			  border: none;
			  background: #f7f7f7;
			  margin: 0;
			}
			
			.markdown strong,
			.markdown b {
			  font-weight: 600;
			}
			
			.markdown > table {
			  border-collapse: collapse;
			  border-spacing: 0px;
			  empty-cells: show;
			  border: 1px solid #e9e9e9;
			  width: 95%;
			  margin-bottom: 24px;
			}
			
			.markdown > table th {
			  white-space: nowrap;
			  color: #333;
			  font-weight: 600;
			
			}
			
			.markdown > table th,
			.markdown > table td {
			  border: 1px solid #e9e9e9;
			  padding: 8px 16px;
			  text-align: left;
			}
			
			.markdown > table th {
			  background: #F7F7F7;
			}
			
			.markdown blockquote {
			  font-size: 90%;
			  color: #999;
			  border-left: 4px solid #e9e9e9;
			  padding-left: 0.8em;
			  margin: 1em 0;
			  font-style: italic;
			}
			
			.markdown blockquote p {
			  margin: 0;
			}
			
			.markdown .anchor {
			  opacity: 0;
			  transition: opacity 0.3s ease;
			  margin-left: 8px;
			}
			
			.markdown .waiting {
			  color: #ccc;
			}
			
			.markdown h1:hover .anchor,
			.markdown h2:hover .anchor,
			.markdown h3:hover .anchor,
			.markdown h4:hover .anchor,
			.markdown h5:hover .anchor,
			.markdown h6:hover .anchor {
			  opacity: 1;
			  display: inline-block;
			}
			
			.markdown > br,
			.markdown > p > br {
			  clear: both;
			}
			
			
			.hljs {
			  display: block;
			  background: white;
			  padding: 0.5em;
			  color: #333333;
			  overflow-x: auto;
			}
			
			.hljs-comment,
			.hljs-meta {
			  color: #969896;
			}
			
			.hljs-string,
			.hljs-variable,
			.hljs-template-variable,
			.hljs-strong,
			.hljs-emphasis,
			.hljs-quote {
			  color: #df5000;
			}
			
			.hljs-keyword,
			.hljs-selector-tag,
			.hljs-type {
			  color: #a71d5d;
			}
			
			.hljs-literal,
			.hljs-symbol,
			.hljs-bullet,
			.hljs-attribute {
			  color: #0086b3;
			}
			
			.hljs-section,
			.hljs-name {
			  color: #63a35c;
			}
			
			.hljs-tag {
			  color: #333333;
			}
			
			.hljs-title,
			.hljs-attr,
			.hljs-selector-id,
			.hljs-selector-class,
			.hljs-selector-attr,
			.hljs-selector-pseudo {
			  color: #795da3;
			}
			
			.hljs-addition {
			  color: #55a532;
			  background-color: #eaffea;
			}
			
			.hljs-deletion {
			  color: #bd2c00;
			  background-color: #ffecec;
			}
			
			.hljs-link {
			  text-decoration: underline;
			}
			
			pre{
			  background: #fff;
			}

		</style>
	</head>
	<body class="childrenBody">
	    <div class="main markdown">
	        <h1>IconFont 图标</h1>
	        <ul class="icon_lists clear">
	                <li>
	                <i class="icon iconfont icon-appreciate"></i>
	                    <div class="name">appreciate</div>
	                    <div class="fontclass">.icon-appreciate</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-check"></i>
	                    <div class="name">check</div>
	                    <div class="fontclass">.icon-check</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-close"></i>
	                    <div class="name">close</div>
	                    <div class="fontclass">.icon-close</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-edit"></i>
	                    <div class="name">edit</div>
	                    <div class="fontclass">.icon-edit</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-emoji"></i>
	                    <div class="name">emoji</div>
	                    <div class="fontclass">.icon-emoji</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-favorfill"></i>
	                    <div class="name">favor_fill</div>
	                    <div class="fontclass">.icon-favorfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-favor"></i>
	                    <div class="name">favor</div>
	                    <div class="fontclass">.icon-favor</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-loading"></i>
	                    <div class="name">loading</div>
	                    <div class="fontclass">.icon-loading</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-locationfill"></i>
	                    <div class="name">location_fill</div>
	                    <div class="fontclass">.icon-locationfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-location"></i>
	                    <div class="name">location</div>
	                    <div class="fontclass">.icon-location</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-phone"></i>
	                    <div class="name">phone</div>
	                    <div class="fontclass">.icon-phone</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundcheckfill"></i>
	                    <div class="name">round_check_fill</div>
	                    <div class="fontclass">.icon-roundcheckfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundcheck"></i>
	                    <div class="name">round_check</div>
	                    <div class="fontclass">.icon-roundcheck</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundclosefill"></i>
	                    <div class="name">round_close_fill</div>
	                    <div class="fontclass">.icon-roundclosefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundclose"></i>
	                    <div class="name">round_close</div>
	                    <div class="fontclass">.icon-roundclose</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundrightfill"></i>
	                    <div class="name">round_right_fill</div>
	                    <div class="fontclass">.icon-roundrightfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundright"></i>
	                    <div class="name">round_right</div>
	                    <div class="fontclass">.icon-roundright</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-search"></i>
	                    <div class="name">search</div>
	                    <div class="fontclass">.icon-search</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-taxi"></i>
	                    <div class="name">taxi</div>
	                    <div class="fontclass">.icon-taxi</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-timefill"></i>
	                    <div class="name">time_fill</div>
	                    <div class="fontclass">.icon-timefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-time"></i>
	                    <div class="name">time</div>
	                    <div class="fontclass">.icon-time</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-unfold"></i>
	                    <div class="name">unfold</div>
	                    <div class="fontclass">.icon-unfold</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-warnfill"></i>
	                    <div class="name">warn_fill</div>
	                    <div class="fontclass">.icon-warnfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-warn"></i>
	                    <div class="name">warn</div>
	                    <div class="fontclass">.icon-warn</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-camerafill"></i>
	                    <div class="name">camera_fill</div>
	                    <div class="fontclass">.icon-camerafill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-camera"></i>
	                    <div class="name">camera</div>
	                    <div class="fontclass">.icon-camera</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-commentfill"></i>
	                    <div class="name">comment_fill</div>
	                    <div class="fontclass">.icon-commentfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-comment"></i>
	                    <div class="name">comment</div>
	                    <div class="fontclass">.icon-comment</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-likefill"></i>
	                    <div class="name">like_fill</div>
	                    <div class="fontclass">.icon-likefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-like"></i>
	                    <div class="name">like</div>
	                    <div class="fontclass">.icon-like</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-notificationfill"></i>
	                    <div class="name">notification_fill</div>
	                    <div class="fontclass">.icon-notificationfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-notification"></i>
	                    <div class="name">notification</div>
	                    <div class="fontclass">.icon-notification</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-order"></i>
	                    <div class="name">order</div>
	                    <div class="fontclass">.icon-order</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-samefill"></i>
	                    <div class="name">same_fill</div>
	                    <div class="fontclass">.icon-samefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-same"></i>
	                    <div class="name">same</div>
	                    <div class="fontclass">.icon-same</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-deliver"></i>
	                    <div class="name">deliver</div>
	                    <div class="fontclass">.icon-deliver</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-evaluate"></i>
	                    <div class="name">evaluate</div>
	                    <div class="fontclass">.icon-evaluate</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pay"></i>
	                    <div class="name">pay</div>
	                    <div class="fontclass">.icon-pay</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-send"></i>
	                    <div class="name">send</div>
	                    <div class="fontclass">.icon-send</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-shop"></i>
	                    <div class="name">shop</div>
	                    <div class="fontclass">.icon-shop</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-ticket"></i>
	                    <div class="name">ticket</div>
	                    <div class="fontclass">.icon-ticket</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-wang"></i>
	                    <div class="name">wang</div>
	                    <div class="fontclass">.icon-wang</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-back"></i>
	                    <div class="name">back</div>
	                    <div class="fontclass">.icon-back</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cascades"></i>
	                    <div class="name">cascades</div>
	                    <div class="fontclass">.icon-cascades</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-discover"></i>
	                    <div class="name">discover</div>
	                    <div class="fontclass">.icon-discover</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-list"></i>
	                    <div class="name">list</div>
	                    <div class="fontclass">.icon-list</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-more"></i>
	                    <div class="name">more</div>
	                    <div class="fontclass">.icon-more</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-scan"></i>
	                    <div class="name">scan</div>
	                    <div class="fontclass">.icon-scan</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-settings"></i>
	                    <div class="name">settings</div>
	                    <div class="fontclass">.icon-settings</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-questionfill"></i>
	                    <div class="name">question_fill</div>
	                    <div class="fontclass">.icon-questionfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-question"></i>
	                    <div class="name">question</div>
	                    <div class="fontclass">.icon-question</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-shopfill"></i>
	                    <div class="name">shop_fill</div>
	                    <div class="fontclass">.icon-shopfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-form"></i>
	                    <div class="name">form</div>
	                    <div class="fontclass">.icon-form</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-wangfill"></i>
	                    <div class="name">wang_fill</div>
	                    <div class="fontclass">.icon-wangfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pic"></i>
	                    <div class="name">pic</div>
	                    <div class="fontclass">.icon-pic</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-filter"></i>
	                    <div class="name">filter</div>
	                    <div class="fontclass">.icon-filter</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-footprint"></i>
	                    <div class="name">footprint</div>
	                    <div class="fontclass">.icon-footprint</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-top"></i>
	                    <div class="name">top</div>
	                    <div class="fontclass">.icon-top</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pulldown"></i>
	                    <div class="name">pull_down</div>
	                    <div class="fontclass">.icon-pulldown</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pullup"></i>
	                    <div class="name">pull_up</div>
	                    <div class="fontclass">.icon-pullup</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-right"></i>
	                    <div class="name">right</div>
	                    <div class="fontclass">.icon-right</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-refresh"></i>
	                    <div class="name">refresh</div>
	                    <div class="fontclass">.icon-refresh</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-moreandroid"></i>
	                    <div class="name">more_android</div>
	                    <div class="fontclass">.icon-moreandroid</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-deletefill"></i>
	                    <div class="name">delete_fill</div>
	                    <div class="fontclass">.icon-deletefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-refund"></i>
	                    <div class="name">refund</div>
	                    <div class="fontclass">.icon-refund</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cart"></i>
	                    <div class="name">cart</div>
	                    <div class="fontclass">.icon-cart</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-qrcode"></i>
	                    <div class="name">qr_code</div>
	                    <div class="fontclass">.icon-qrcode</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-remind"></i>
	                    <div class="name">remind</div>
	                    <div class="fontclass">.icon-remind</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-delete"></i>
	                    <div class="name">delete</div>
	                    <div class="fontclass">.icon-delete</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-profile"></i>
	                    <div class="name">profile</div>
	                    <div class="fontclass">.icon-profile</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-home"></i>
	                    <div class="name">home</div>
	                    <div class="fontclass">.icon-home</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cartfill"></i>
	                    <div class="name">cart_fill</div>
	                    <div class="fontclass">.icon-cartfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-discoverfill"></i>
	                    <div class="name">discover_fill</div>
	                    <div class="fontclass">.icon-discoverfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-homefill"></i>
	                    <div class="name">home_fill</div>
	                    <div class="fontclass">.icon-homefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-message"></i>
	                    <div class="name">message</div>
	                    <div class="fontclass">.icon-message</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-addressbook"></i>
	                    <div class="name">address_book</div>
	                    <div class="fontclass">.icon-addressbook</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-link"></i>
	                    <div class="name">link</div>
	                    <div class="fontclass">.icon-link</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-lock"></i>
	                    <div class="name">lock</div>
	                    <div class="fontclass">.icon-lock</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-unlock"></i>
	                    <div class="name">unlock</div>
	                    <div class="fontclass">.icon-unlock</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-vip"></i>
	                    <div class="name">vip</div>
	                    <div class="fontclass">.icon-vip</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-weibo"></i>
	                    <div class="name">weibo</div>
	                    <div class="fontclass">.icon-weibo</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-activity"></i>
	                    <div class="name">activity</div>
	                    <div class="fontclass">.icon-activity</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-big"></i>
	                    <div class="name">big</div>
	                    <div class="fontclass">.icon-big</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-friendaddfill"></i>
	                    <div class="name">friend_add_fill</div>
	                    <div class="fontclass">.icon-friendaddfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-friendadd"></i>
	                    <div class="name">friend_add</div>
	                    <div class="fontclass">.icon-friendadd</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-friendfamous"></i>
	                    <div class="name">friend_famous</div>
	                    <div class="fontclass">.icon-friendfamous</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-friend"></i>
	                    <div class="name">friend</div>
	                    <div class="fontclass">.icon-friend</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-goods"></i>
	                    <div class="name">goods</div>
	                    <div class="fontclass">.icon-goods</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-selection"></i>
	                    <div class="name">selection</div>
	                    <div class="fontclass">.icon-selection</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-tmall"></i>
	                    <div class="name">tmall</div>
	                    <div class="fontclass">.icon-tmall</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-explore"></i>
	                    <div class="name">explore</div>
	                    <div class="fontclass">.icon-explore</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-present"></i>
	                    <div class="name">present</div>
	                    <div class="fontclass">.icon-present</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-squarecheckfill"></i>
	                    <div class="name">square_check_fill</div>
	                    <div class="fontclass">.icon-squarecheckfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-square"></i>
	                    <div class="name">square</div>
	                    <div class="fontclass">.icon-square</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-squarecheck"></i>
	                    <div class="name">square_check</div>
	                    <div class="fontclass">.icon-squarecheck</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-round"></i>
	                    <div class="name">round</div>
	                    <div class="fontclass">.icon-round</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundaddfill"></i>
	                    <div class="name">round_add_fill</div>
	                    <div class="fontclass">.icon-roundaddfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundadd"></i>
	                    <div class="name">round_add</div>
	                    <div class="fontclass">.icon-roundadd</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-add"></i>
	                    <div class="name">add</div>
	                    <div class="fontclass">.icon-add</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-notificationforbidfill"></i>
	                    <div class="name">notification_forbid_fill</div>
	                    <div class="fontclass">.icon-notificationforbidfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-explorefill"></i>
	                    <div class="name">explore_fill</div>
	                    <div class="fontclass">.icon-explorefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-fold"></i>
	                    <div class="name">fold</div>
	                    <div class="fontclass">.icon-fold</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-game"></i>
	                    <div class="name">game</div>
	                    <div class="fontclass">.icon-game</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-redpacket"></i>
	                    <div class="name">redpacket</div>
	                    <div class="fontclass">.icon-redpacket</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-selectionfill"></i>
	                    <div class="name">selection_fill</div>
	                    <div class="fontclass">.icon-selectionfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-similar"></i>
	                    <div class="name">similar</div>
	                    <div class="fontclass">.icon-similar</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-appreciatefill"></i>
	                    <div class="name">appreciate_fill</div>
	                    <div class="fontclass">.icon-appreciatefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-infofill"></i>
	                    <div class="name">info_fill</div>
	                    <div class="fontclass">.icon-infofill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-info"></i>
	                    <div class="name">info</div>
	                    <div class="fontclass">.icon-info</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-tao"></i>
	                    <div class="name">tao</div>
	                    <div class="fontclass">.icon-tao</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-mobiletao"></i>
	                    <div class="name">mobile_tao</div>
	                    <div class="fontclass">.icon-mobiletao</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-forwardfill"></i>
	                    <div class="name">forward_fill</div>
	                    <div class="fontclass">.icon-forwardfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-forward"></i>
	                    <div class="name">forward</div>
	                    <div class="fontclass">.icon-forward</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-rechargefill"></i>
	                    <div class="name">recharge_fill</div>
	                    <div class="fontclass">.icon-rechargefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-recharge"></i>
	                    <div class="name">recharge</div>
	                    <div class="fontclass">.icon-recharge</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-vipcard"></i>
	                    <div class="name">vipcard</div>
	                    <div class="fontclass">.icon-vipcard</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-voice"></i>
	                    <div class="name">voice</div>
	                    <div class="fontclass">.icon-voice</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-voicefill"></i>
	                    <div class="name">voice_fill</div>
	                    <div class="fontclass">.icon-voicefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-friendfavor"></i>
	                    <div class="name">friend_favor</div>
	                    <div class="fontclass">.icon-friendfavor</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-wifi"></i>
	                    <div class="name">wifi</div>
	                    <div class="fontclass">.icon-wifi</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-share"></i>
	                    <div class="name">share</div>
	                    <div class="fontclass">.icon-share</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-wefill"></i>
	                    <div class="name">we_fill</div>
	                    <div class="fontclass">.icon-wefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-we"></i>
	                    <div class="name">we</div>
	                    <div class="fontclass">.icon-we</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-lightauto"></i>
	                    <div class="name">light_auto</div>
	                    <div class="fontclass">.icon-lightauto</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-lightforbid"></i>
	                    <div class="name">light_forbid</div>
	                    <div class="fontclass">.icon-lightforbid</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-lightfill"></i>
	                    <div class="name">light_fill</div>
	                    <div class="fontclass">.icon-lightfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-camerarotate"></i>
	                    <div class="name">camera_rotate</div>
	                    <div class="fontclass">.icon-camerarotate</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-light"></i>
	                    <div class="name">light</div>
	                    <div class="fontclass">.icon-light</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-barcode"></i>
	                    <div class="name">bar_code</div>
	                    <div class="fontclass">.icon-barcode</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-flashlightclose"></i>
	                    <div class="name">flashlight_close</div>
	                    <div class="fontclass">.icon-flashlightclose</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-flashlightopen"></i>
	                    <div class="name">flashlight_open</div>
	                    <div class="fontclass">.icon-flashlightopen</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-searchlist"></i>
	                    <div class="name">search_list</div>
	                    <div class="fontclass">.icon-searchlist</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-service"></i>
	                    <div class="name">service</div>
	                    <div class="fontclass">.icon-service</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-sort"></i>
	                    <div class="name">sort</div>
	                    <div class="fontclass">.icon-sort</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-1212"></i>
	                    <div class="name">1212</div>
	                    <div class="fontclass">.icon-1212</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-down"></i>
	                    <div class="name">down</div>
	                    <div class="fontclass">.icon-down</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-mobile"></i>
	                    <div class="name">mobile</div>
	                    <div class="fontclass">.icon-mobile</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-mobilefill"></i>
	                    <div class="name">mobile_fill</div>
	                    <div class="fontclass">.icon-mobilefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-copy"></i>
	                    <div class="name">copy</div>
	                    <div class="fontclass">.icon-copy</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-countdownfill"></i>
	                    <div class="name">countdown_fill</div>
	                    <div class="fontclass">.icon-countdownfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-countdown"></i>
	                    <div class="name">countdown</div>
	                    <div class="fontclass">.icon-countdown</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-noticefill"></i>
	                    <div class="name">notice_fill</div>
	                    <div class="fontclass">.icon-noticefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-notice"></i>
	                    <div class="name">notice</div>
	                    <div class="fontclass">.icon-notice</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-qiang"></i>
	                    <div class="name">qiang</div>
	                    <div class="fontclass">.icon-qiang</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-upstagefill"></i>
	                    <div class="name">upstage_fill</div>
	                    <div class="fontclass">.icon-upstagefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-upstage"></i>
	                    <div class="name">upstage</div>
	                    <div class="fontclass">.icon-upstage</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-babyfill"></i>
	                    <div class="name">baby_fill</div>
	                    <div class="fontclass">.icon-babyfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-baby"></i>
	                    <div class="name">baby</div>
	                    <div class="fontclass">.icon-baby</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-brandfill"></i>
	                    <div class="name">brand_fill</div>
	                    <div class="fontclass">.icon-brandfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-brand"></i>
	                    <div class="name">brand</div>
	                    <div class="fontclass">.icon-brand</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-choicenessfill"></i>
	                    <div class="name">choiceness_fill</div>
	                    <div class="fontclass">.icon-choicenessfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-choiceness"></i>
	                    <div class="name">choiceness</div>
	                    <div class="fontclass">.icon-choiceness</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-clothesfill"></i>
	                    <div class="name">clothes_fill</div>
	                    <div class="fontclass">.icon-clothesfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-clothes"></i>
	                    <div class="name">clothes</div>
	                    <div class="fontclass">.icon-clothes</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-creativefill"></i>
	                    <div class="name">creative_fill</div>
	                    <div class="fontclass">.icon-creativefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-creative"></i>
	                    <div class="name">creative</div>
	                    <div class="fontclass">.icon-creative</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-female"></i>
	                    <div class="name">female</div>
	                    <div class="fontclass">.icon-female</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-keyboard"></i>
	                    <div class="name">keyboard</div>
	                    <div class="fontclass">.icon-keyboard</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-male"></i>
	                    <div class="name">male</div>
	                    <div class="fontclass">.icon-male</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-newfill"></i>
	                    <div class="name">new_fill</div>
	                    <div class="fontclass">.icon-newfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-new"></i>
	                    <div class="name">new</div>
	                    <div class="fontclass">.icon-new</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pullleft"></i>
	                    <div class="name">pull_left</div>
	                    <div class="fontclass">.icon-pullleft</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pullright"></i>
	                    <div class="name">pull_right</div>
	                    <div class="fontclass">.icon-pullright</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-rankfill"></i>
	                    <div class="name">rank_fill</div>
	                    <div class="fontclass">.icon-rankfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-rank"></i>
	                    <div class="name">rank</div>
	                    <div class="fontclass">.icon-rank</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-bad"></i>
	                    <div class="name">bad</div>
	                    <div class="fontclass">.icon-bad</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cameraadd"></i>
	                    <div class="name">camera_add</div>
	                    <div class="fontclass">.icon-cameraadd</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-focus"></i>
	                    <div class="name">focus</div>
	                    <div class="fontclass">.icon-focus</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-friendfill"></i>
	                    <div class="name">friend_fill</div>
	                    <div class="fontclass">.icon-friendfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cameraaddfill"></i>
	                    <div class="name">camera_add_fill</div>
	                    <div class="fontclass">.icon-cameraaddfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-apps"></i>
	                    <div class="name">apps</div>
	                    <div class="fontclass">.icon-apps</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-paintfill"></i>
	                    <div class="name">paint_fill</div>
	                    <div class="fontclass">.icon-paintfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-paint"></i>
	                    <div class="name">paint</div>
	                    <div class="fontclass">.icon-paint</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-picfill"></i>
	                    <div class="name">pic_fill</div>
	                    <div class="fontclass">.icon-picfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-refresharrow"></i>
	                    <div class="name">refresh_arrow</div>
	                    <div class="fontclass">.icon-refresharrow</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-markfill"></i>
	                    <div class="name">mark_fill</div>
	                    <div class="fontclass">.icon-markfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-mark"></i>
	                    <div class="name">mark</div>
	                    <div class="fontclass">.icon-mark</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-presentfill"></i>
	                    <div class="name">present_fill</div>
	                    <div class="fontclass">.icon-presentfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-repeal"></i>
	                    <div class="name">repeal</div>
	                    <div class="fontclass">.icon-repeal</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-album"></i>
	                    <div class="name">album</div>
	                    <div class="fontclass">.icon-album</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-peoplefill"></i>
	                    <div class="name">people_fill</div>
	                    <div class="fontclass">.icon-peoplefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-people"></i>
	                    <div class="name">people</div>
	                    <div class="fontclass">.icon-people</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-servicefill"></i>
	                    <div class="name">service_fill</div>
	                    <div class="fontclass">.icon-servicefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-repair"></i>
	                    <div class="name">repair</div>
	                    <div class="fontclass">.icon-repair</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-file"></i>
	                    <div class="name">file</div>
	                    <div class="fontclass">.icon-file</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-repairfill"></i>
	                    <div class="name">repair_fill</div>
	                    <div class="fontclass">.icon-repairfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-taoxiaopu"></i>
	                    <div class="name">taoxiaopu</div>
	                    <div class="fontclass">.icon-taoxiaopu</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attentionfill"></i>
	                    <div class="name">attention_fill</div>
	                    <div class="fontclass">.icon-attentionfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attention"></i>
	                    <div class="name">attention</div>
	                    <div class="fontclass">.icon-attention</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-commandfill"></i>
	                    <div class="name">command_fill</div>
	                    <div class="fontclass">.icon-commandfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-command"></i>
	                    <div class="name">command</div>
	                    <div class="fontclass">.icon-command</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-communityfill"></i>
	                    <div class="name">community_fill</div>
	                    <div class="fontclass">.icon-communityfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-community"></i>
	                    <div class="name">community</div>
	                    <div class="fontclass">.icon-community</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-read"></i>
	                    <div class="name">read</div>
	                    <div class="fontclass">.icon-read</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-calendar"></i>
	                    <div class="name">calendar</div>
	                    <div class="fontclass">.icon-calendar</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cut"></i>
	                    <div class="name">cut</div>
	                    <div class="fontclass">.icon-cut</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-magic"></i>
	                    <div class="name">magic</div>
	                    <div class="fontclass">.icon-magic</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-backwardfill"></i>
	                    <div class="name">backward_fill</div>
	                    <div class="fontclass">.icon-backwardfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-playfill"></i>
	                    <div class="name">play_fill</div>
	                    <div class="fontclass">.icon-playfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-stop"></i>
	                    <div class="name">stop</div>
	                    <div class="fontclass">.icon-stop</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-tagfill"></i>
	                    <div class="name">tag_fill</div>
	                    <div class="fontclass">.icon-tagfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-tag"></i>
	                    <div class="name">tag</div>
	                    <div class="fontclass">.icon-tag</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-group"></i>
	                    <div class="name">group</div>
	                    <div class="fontclass">.icon-group</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-all"></i>
	                    <div class="name">all</div>
	                    <div class="fontclass">.icon-all</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-backdelete"></i>
	                    <div class="name">back_delete</div>
	                    <div class="fontclass">.icon-backdelete</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-hotfill"></i>
	                    <div class="name">hot_fill</div>
	                    <div class="fontclass">.icon-hotfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-hot"></i>
	                    <div class="name">hot</div>
	                    <div class="fontclass">.icon-hot</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-post"></i>
	                    <div class="name">post</div>
	                    <div class="fontclass">.icon-post</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-radiobox"></i>
	                    <div class="name">radio_box</div>
	                    <div class="fontclass">.icon-radiobox</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-rounddown"></i>
	                    <div class="name">round_down</div>
	                    <div class="fontclass">.icon-rounddown</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-upload"></i>
	                    <div class="name">upload</div>
	                    <div class="fontclass">.icon-upload</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-writefill"></i>
	                    <div class="name">write_fill</div>
	                    <div class="fontclass">.icon-writefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-write"></i>
	                    <div class="name">write</div>
	                    <div class="fontclass">.icon-write</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-radioboxfill"></i>
	                    <div class="name">radio_box_fill</div>
	                    <div class="fontclass">.icon-radioboxfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-punch"></i>
	                    <div class="name">punch</div>
	                    <div class="fontclass">.icon-punch</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-shake"></i>
	                    <div class="name">shake</div>
	                    <div class="fontclass">.icon-shake</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-add1"></i>
	                    <div class="name">add</div>
	                    <div class="fontclass">.icon-add1</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-move"></i>
	                    <div class="name">move</div>
	                    <div class="fontclass">.icon-move</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-safe"></i>
	                    <div class="name">safe</div>
	                    <div class="fontclass">.icon-safe</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-haodian"></i>
	                    <div class="name">haodian</div>
	                    <div class="fontclass">.icon-haodian</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-mao"></i>
	                    <div class="name">mao</div>
	                    <div class="fontclass">.icon-mao</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-qi"></i>
	                    <div class="name">qi</div>
	                    <div class="fontclass">.icon-qi</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-ye"></i>
	                    <div class="name">ye</div>
	                    <div class="fontclass">.icon-ye</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-juhuasuan"></i>
	                    <div class="name">juhuasuan</div>
	                    <div class="fontclass">.icon-juhuasuan</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-taoqianggou"></i>
	                    <div class="name">taoqianggou</div>
	                    <div class="fontclass">.icon-taoqianggou</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-tianmao"></i>
	                    <div class="name">tianmao</div>
	                    <div class="fontclass">.icon-tianmao</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-activityfill"></i>
	                    <div class="name">activity_fill</div>
	                    <div class="fontclass">.icon-activityfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-crownfill"></i>
	                    <div class="name">crown_fill</div>
	                    <div class="fontclass">.icon-crownfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-crown"></i>
	                    <div class="name">crown</div>
	                    <div class="fontclass">.icon-crown</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-goodsfill"></i>
	                    <div class="name">goods_fill</div>
	                    <div class="fontclass">.icon-goodsfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-messagefill"></i>
	                    <div class="name">message_fill</div>
	                    <div class="fontclass">.icon-messagefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-profilefill"></i>
	                    <div class="name">profile_fill</div>
	                    <div class="fontclass">.icon-profilefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-sound"></i>
	                    <div class="name">sound</div>
	                    <div class="fontclass">.icon-sound</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-sponsorfill"></i>
	                    <div class="name">sponsor_fill</div>
	                    <div class="fontclass">.icon-sponsorfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-sponsor"></i>
	                    <div class="name">sponsor</div>
	                    <div class="fontclass">.icon-sponsor</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-upblock"></i>
	                    <div class="name">up_block</div>
	                    <div class="fontclass">.icon-upblock</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-weblock"></i>
	                    <div class="name">we_block</div>
	                    <div class="fontclass">.icon-weblock</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-weunblock"></i>
	                    <div class="name">we_unblock</div>
	                    <div class="fontclass">.icon-weunblock</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-1111"></i>
	                    <div class="name">1111</div>
	                    <div class="fontclass">.icon-1111</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-my"></i>
	                    <div class="name">my</div>
	                    <div class="fontclass">.icon-my</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-myfill"></i>
	                    <div class="name">my_fill</div>
	                    <div class="fontclass">.icon-myfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-emojifill"></i>
	                    <div class="name">emoji_fill</div>
	                    <div class="fontclass">.icon-emojifill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-emojiflashfill"></i>
	                    <div class="name">emoji_flash_fill</div>
	                    <div class="fontclass">.icon-emojiflashfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-flashbuyfill-copy"></i>
	                    <div class="name">flashbuy_fill</div>
	                    <div class="fontclass">.icon-flashbuyfill-copy</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-text"></i>
	                    <div class="name">text</div>
	                    <div class="fontclass">.icon-text</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-goodsfavor"></i>
	                    <div class="name">goods_favor</div>
	                    <div class="fontclass">.icon-goodsfavor</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-musicfill"></i>
	                    <div class="name">music_fill</div>
	                    <div class="fontclass">.icon-musicfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-musicforbidfill"></i>
	                    <div class="name">music_forbid_fill</div>
	                    <div class="fontclass">.icon-musicforbidfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-xiamiforbid"></i>
	                    <div class="name">xiami_forbid</div>
	                    <div class="fontclass">.icon-xiamiforbid</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-xiami"></i>
	                    <div class="name">xiami</div>
	                    <div class="fontclass">.icon-xiami</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundleftfill"></i>
	                    <div class="name">round_left_fill</div>
	                    <div class="fontclass">.icon-roundleftfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-triangledownfill"></i>
	                    <div class="name">triangle_down_fill</div>
	                    <div class="fontclass">.icon-triangledownfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-triangleupfill"></i>
	                    <div class="name">triangle_up_fill</div>
	                    <div class="fontclass">.icon-triangleupfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundleftfill-copy"></i>
	                    <div class="name">round_left_fill</div>
	                    <div class="fontclass">.icon-roundleftfill-copy</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-pulldown1"></i>
	                    <div class="name">pull_down</div>
	                    <div class="fontclass">.icon-pulldown1</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-emojilight"></i>
	                    <div class="name">emoji_light</div>
	                    <div class="fontclass">.icon-emojilight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-keyboardlight"></i>
	                    <div class="name">keyboard_light</div>
	                    <div class="fontclass">.icon-keyboardlight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-recordfill"></i>
	                    <div class="name">record_fill</div>
	                    <div class="fontclass">.icon-recordfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-recordlight"></i>
	                    <div class="name">record_light</div>
	                    <div class="fontclass">.icon-recordlight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-record"></i>
	                    <div class="name">record</div>
	                    <div class="fontclass">.icon-record</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-roundaddlight"></i>
	                    <div class="name">round_add_light</div>
	                    <div class="fontclass">.icon-roundaddlight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-soundlight"></i>
	                    <div class="name">sound_light</div>
	                    <div class="fontclass">.icon-soundlight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cardboardfill"></i>
	                    <div class="name">cardboard_fill</div>
	                    <div class="fontclass">.icon-cardboardfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cardboard"></i>
	                    <div class="name">cardboard</div>
	                    <div class="fontclass">.icon-cardboard</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-formfill"></i>
	                    <div class="name">form_fill</div>
	                    <div class="fontclass">.icon-formfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-coin"></i>
	                    <div class="name">coin</div>
	                    <div class="fontclass">.icon-coin</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-sortlight"></i>
	                    <div class="name">sort_light</div>
	                    <div class="fontclass">.icon-sortlight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-cardboardforbid"></i>
	                    <div class="name">cardboard_forbid</div>
	                    <div class="fontclass">.icon-cardboardforbid</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-circlefill"></i>
	                    <div class="name">circle_fill</div>
	                    <div class="fontclass">.icon-circlefill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-circle"></i>
	                    <div class="name">circle</div>
	                    <div class="fontclass">.icon-circle</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attentionforbid"></i>
	                    <div class="name">attention_forbid</div>
	                    <div class="fontclass">.icon-attentionforbid</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attentionforbidfill"></i>
	                    <div class="name">attention_forbid_fill</div>
	                    <div class="fontclass">.icon-attentionforbidfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attentionfavorfill"></i>
	                    <div class="name">attention_favor_fill</div>
	                    <div class="fontclass">.icon-attentionfavorfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attentionfavor"></i>
	                    <div class="name">attention_favor</div>
	                    <div class="fontclass">.icon-attentionfavor</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-piclight"></i>
	                    <div class="name">pic_light</div>
	                    <div class="fontclass">.icon-piclight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-shoplight"></i>
	                    <div class="name">shop_light</div>
	                    <div class="fontclass">.icon-shoplight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-voicelight"></i>
	                    <div class="name">voice_light</div>
	                    <div class="fontclass">.icon-voicelight</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-attentionfavorfill-copy"></i>
	                    <div class="name">attention_favor_fill</div>
	                    <div class="fontclass">.icon-attentionfavorfill-copy</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-full"></i>
	                    <div class="name">full</div>
	                    <div class="fontclass">.icon-full</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-mail"></i>
	                    <div class="name">mail</div>
	                    <div class="fontclass">.icon-mail</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-peoplelist"></i>
	                    <div class="name">people_list</div>
	                    <div class="fontclass">.icon-peoplelist</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-goodsnewfill"></i>
	                    <div class="name">goods_new_fill</div>
	                    <div class="fontclass">.icon-goodsnewfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-goodsnew"></i>
	                    <div class="name">goods_new</div>
	                    <div class="fontclass">.icon-goodsnew</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-medalfill"></i>
	                    <div class="name">medal_fill</div>
	                    <div class="fontclass">.icon-medalfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-medal"></i>
	                    <div class="name">medal</div>
	                    <div class="fontclass">.icon-medal</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-newsfill"></i>
	                    <div class="name">news_fill</div>
	                    <div class="fontclass">.icon-newsfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-newshotfill"></i>
	                    <div class="name">news_hot_fill</div>
	                    <div class="fontclass">.icon-newshotfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-newshot"></i>
	                    <div class="name">news_hot</div>
	                    <div class="fontclass">.icon-newshot</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-news"></i>
	                    <div class="name">news</div>
	                    <div class="fontclass">.icon-news</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-videofill"></i>
	                    <div class="name">video_fill</div>
	                    <div class="fontclass">.icon-videofill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-video"></i>
	                    <div class="name">video</div>
	                    <div class="fontclass">.icon-video</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-askfill"></i>
	                    <div class="name">ask_fill</div>
	                    <div class="fontclass">.icon-askfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-ask"></i>
	                    <div class="name">ask</div>
	                    <div class="fontclass">.icon-ask</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-exit"></i>
	                    <div class="name">exit</div>
	                    <div class="fontclass">.icon-exit</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-skinfill"></i>
	                    <div class="name">skin_fill</div>
	                    <div class="fontclass">.icon-skinfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-skin"></i>
	                    <div class="name">skin</div>
	                    <div class="fontclass">.icon-skin</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-moneybagfill"></i>
	                    <div class="name">money_bag_fill</div>
	                    <div class="fontclass">.icon-moneybagfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-usefullfill"></i>
	                    <div class="name">usefull_fill</div>
	                    <div class="fontclass">.icon-usefullfill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-usefull"></i>
	                    <div class="name">usefull</div>
	                    <div class="fontclass">.icon-usefull</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-moneybag"></i>
	                    <div class="name">money_bag</div>
	                    <div class="fontclass">.icon-moneybag</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-redpacket_fill"></i>
	                    <div class="name">redpacket_fill</div>
	                    <div class="fontclass">.icon-redpacket_fill</div>
	                </li>
	            
	                <li>
	                <i class="icon iconfont icon-subscription"></i>
	                    <div class="name">subscription</div>
	                    <div class="fontclass">.icon-subscription</div>
	                </li>
	        	</ul>
	        </div>
	        <div class="main markdown">
			<h1>Layui内置图标</h1>
				<ul class="icon_lists clear">
					<li>
					<i class="icon layui-icon layui-icon-notice"></i>
						<div class="name">notice</div>
						<div class="fontclass">.layui-icon-notice</div>
					</li>
					<li>
	                <i class="icon layui-icon layui-icon-theme"></i>
	                    <div class="name">theme</div>
	                    <div class="fontclass">.layui-icon-theme</div>
	                </li>
	                <li>
	                <i class="icon layui-icon layui-icon-note"></i>
	                    <div class="name">note</div>
	                    <div class="fontclass">.layui-icon-note</div>
	                </li>
					<li>
	                <i class="icon layui-icon layui-icon-more-vertical"></i>
	                    <div class="name">more-vertical</div>
	                    <div class="fontclass">.layui-icon-more-vertical</div>
	                </li>
					<li>
	                <i class="icon layui-icon layui-icon-shrink-right"></i>
	                    <div class="name">shrink-right</div>
	                    <div class="fontclass">.layui-icon-shrink-right</div>
	                </li>
	                <li>
	                <i class="icon layui-icon layui-icon-website"></i>
	                    <div class="name">website</div>
	                    <div class="fontclass">.layui-icon-website</div>
	                </li>
					<li>
	                <i class="icon layui-icon layui-icon-home"></i>
	                    <div class="name">home</div>
	                    <div class="fontclass">.layui-icon-home</div>
	                </li>
					<li>
	                <i class="icon layui-icon layui-icon-component"></i>
	                    <div class="name">component</div>
	                    <div class="fontclass">.layui-icon-component</div>
	                </li> 
					<li>
	                <i class="icon layui-icon layui-icon-template"></i>
	                    <div class="name">template</div>
	                    <div class="fontclass">.layui-icon-template</div>
	                </li>
					<li>
	                <i class="icon layui-icon layui-icon-app"></i>
	                    <div class="name">app</div>
	                    <div class="fontclass">.layui-icon-app</div>
	                </li>
					<li>
	                <i class="icon layui-icon layui-icon-senior"></i>
	                    <div class="name">senior</div>
	                    <div class="fontclass">.layui-icon-senior</div>
	                </li>
	                <li>
	                <i class="icon layui-icon layui-icon-user"></i>
	                    <div class="name">user</div>
	                    <div class="fontclass">.layui-icon-user</div>
	                </li>  
					<li>
	                <i class="icon layui-icon layui-icon-set"></i>
	                    <div class="name">set</div>
	                    <div class="fontclass">.layui-icon-set</div>
	                </li>           
			</ul>
		</div>
		<div class="main markdown">
			<h2 id="font-class-">font-class引用</h2>
			<hr>
			<p>font-class是unicode使用方式的一种变种，主要是解决unicode书写不直观，语意不明确的问题。</p>
			<p>与unicode使用方式相比，具有如下特点：</p>
			<ul>
				<li>兼容性良好，支持ie8+，及所有现代浏览器。</li>
				<li>相比于unicode语意明确，书写更直观。可以很容易分辨这个icon是什么。</li>
				<li>因为使用class来定义图标，所以当要替换图标时，只需要修改class里面的unicode引用。</li>
				<li>不过因为本质上还是使用的字体，所以多色图标还是不支持的。</li>
			</ul>
			<p>使用步骤如下：</p>
			<h3 id="-fontclass-">第一步：引入项目下面生成的fontclass代码：</h3>
			<pre>&lt;link rel="stylesheet" type="text/css" href="./iconfont.css"&gt;</pre>
			<h3 id="-">第二步：挑选相应图标并获取类名，应用于页面：</h3>
			<pre>&lt;i class="<span class="hljs-selector-tag">iconfont</span> <span class="hljs-selector-tag">icon-xxx</span>"&gt;&lt;/i&gt;</pre>
			<blockquote>
				<p>"iconfont"是你项目下的font-family。可以通过编辑项目查看，默认是"iconfont"。</p>
			</blockquote>
		</div>
	</body>
</html>