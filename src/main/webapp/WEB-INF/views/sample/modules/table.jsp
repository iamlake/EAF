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
    <blockquote class="layui-elem-quote">
      <p>模块加载名称：<em>table</em></p>
    </blockquote>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="use">快速使用</a></legend>
    </fieldset> 
    <div class="site-text">
      <p>创建一个table实例最简单的方式是，在页面放置一个元素 <em>&lt;table id="test"&gt;&lt;/table&gt;</em>，然后通过 <em>table.render()</em> 方法指定该容器，如下所示：</p>
    </div> 
    <table id="demo" lay-filter="test"></table><div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1" style=" height:315px;"><div class="layui-table-box"><div class="layui-table-header"><table cellspacing="0" cellpadding="0" border="0" class="layui-table"><thead><tr><th data-field="id"><div class="layui-table-cell laytable-cell-1-id"><span>ID</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc"></i><i class="layui-edge layui-table-sort-desc"></i></span></div></th><th data-field="username"><div class="layui-table-cell laytable-cell-1-username"><span>用户名</span></div></th><th data-field="sex"><div class="layui-table-cell laytable-cell-1-sex"><span>性别</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc"></i><i class="layui-edge layui-table-sort-desc"></i></span></div></th><th data-field="city"><div class="layui-table-cell laytable-cell-1-city"><span>城市</span></div></th><th data-field="sign"><div class="layui-table-cell laytable-cell-1-sign"><span>签名</span></div></th><th data-field="experience"><div class="layui-table-cell laytable-cell-1-experience"><span>积分</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc"></i><i class="layui-edge layui-table-sort-desc"></i></span></div></th><th data-field="score"><div class="layui-table-cell laytable-cell-1-score"><span>评分</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc"></i><i class="layui-edge layui-table-sort-desc"></i></span></div></th><th data-field="classify"><div class="layui-table-cell laytable-cell-1-classify"><span>职业</span></div></th><th data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth"><span>财富</span><span class="layui-table-sort layui-inline"><i class="layui-edge layui-table-sort-asc"></i><i class="layui-edge layui-table-sort-desc"></i></span></div></th></tr></thead></table></div><div class="layui-table-body layui-table-main" style="height: 234px;"><table cellspacing="0" cellpadding="0" border="0" class="layui-table"><tbody><tr data-index="0" class=""><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10000</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-0</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">女</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-0</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-0</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">255</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">57</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">作家</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">82830700</div></td></tr><tr data-index="1" class="layui-table-hover"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10001</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-1</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">男</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-1</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-1</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">884</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">27</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">词人</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">64928690</div></td></tr><tr data-index="2"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10002</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-2</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">女</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-2</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-2</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">650</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">31</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">酱油</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">6298078</div></td></tr><tr data-index="3"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10003</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-3</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">女</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-3</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-3</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">362</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">68</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">诗人</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">37117017</div></td></tr><tr data-index="4"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10004</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-4</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">男</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-4</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-4</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">807</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">6</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">作家</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">76263262</div></td></tr><tr data-index="5"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10005</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-5</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">女</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-5</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-5</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">173</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">87</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">作家</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">60344147</div></td></tr><tr data-index="6"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10006</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-6</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">女</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-6</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-6</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">982</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">34</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">作家</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">57768166</div></td></tr><tr data-index="7"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10007</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-7</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">男</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-7</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-7</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">727</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">28</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">作家</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">82030578</div></td></tr><tr data-index="8"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10008</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-8</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">男</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-8</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-8</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">951</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">14</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">词人</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">16503371</div></td></tr><tr data-index="9"><td data-field="id"><div class="layui-table-cell laytable-cell-1-id">10009</div></td><td data-field="username"><div class="layui-table-cell laytable-cell-1-username">user-9</div></td><td data-field="sex"><div class="layui-table-cell laytable-cell-1-sex">女</div></td><td data-field="city"><div class="layui-table-cell laytable-cell-1-city">城市-9</div></td><td data-field="sign"><div class="layui-table-cell laytable-cell-1-sign">签名-9</div></td><td data-field="experience"><div class="layui-table-cell laytable-cell-1-experience">484</div></td><td data-field="score"><div class="layui-table-cell laytable-cell-1-score">75</div></td><td data-field="classify"><div class="layui-table-cell laytable-cell-1-classify">词人</div></td><td data-field="wealth"><div class="layui-table-cell laytable-cell-1-wealth">86801934</div></td></tr></tbody></table></div></div><div class="layui-table-page"><div id="layui-table-page1"><div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-1"><a href="javascript:;" class="layui-laypage-prev layui-disabled" data-page="0"><i class="layui-icon"></i></a><span class="layui-laypage-curr"><em class="layui-laypage-em"></em><em>1</em></span><a href="javascript:;" data-page="2">2</a><a href="javascript:;" data-page="3">3</a><span class="layui-laypage-spr">…</span><a href="javascript:;" class="layui-laypage-last" title="尾页" data-page="100">100</a><a href="javascript:;" class="layui-laypage-next" data-page="2"><i class="layui-icon"></i></a><span class="layui-laypage-skip">到第<input type="text" min="1" value="1" class="layui-input">页<button type="button" class="layui-laypage-btn">确定</button></span><span class="layui-laypage-count">共 1000 条</span><span class="layui-laypage-limits"><select lay-ignore=""><option value="10" selected="">10 条/页</option><option value="20">20 条/页</option><option value="30">30 条/页</option><option value="40">40 条/页</option><option value="50">50 条/页</option><option value="60">60 条/页</option><option value="70">70 条/页</option><option value="80">80 条/页</option><option value="90">90 条/页</option></select></span></div></div></div><style>.laytable-cell-1-id{ width: 80px; }.laytable-cell-1-username{ width: 80px; }.laytable-cell-1-sex{ width: 80px; }.laytable-cell-1-city{ width: 108px; }.laytable-cell-1-sign{ width: 108px; }.laytable-cell-1-experience{ width: 108px; }.laytable-cell-1-score{ width: 108px; }.laytable-cell-1-classify{ width: 108px; }.laytable-cell-1-wealth{ width: 108px; }</style></div>
    <div class="site-text">
      <p>上面你已经看到了一个简单数据表格的基本样子，你一定迫不及待地想知道它的使用方式。下面就是它对应的代码：</p>
      <pre class="layui-code layui-box layui-code-view" lay-title="对应的代码"><h3 class="layui-code-h3">对应的代码<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>&lt;!DOCTYPE html&gt;</li><li>&lt;html&gt;</li><li>&lt;head&gt;</li><li>  &lt;meta charset="utf-8"&gt;</li><li>  &lt;title&gt;table模块快速使用&lt;/title&gt;</li><li>  &lt;link rel="stylesheet" href="/layui/css/layui.css" media="all"&gt;</li><li>&lt;/head&gt;</li><li>&lt;body&gt;</li><li> </li><li>&lt;table id="demo" lay-filter="test"&gt;&lt;/table&gt;</li><li> </li><li>&lt;script src="/layui/layui.js"&gt;&lt;/script&gt;</li><li>&lt;script&gt;</li><li>layui.use('table', function(){</li><li>  var table = layui.table;</li><li>  </li><li>  //第一个实例</li><li>  table.render({</li><li>    elem: '#demo'</li><li>    ,height: 315</li><li>    ,url: '/demo/table/user/' //数据接口</li><li>    ,page: true //开启分页</li><li>    ,cols: [[ //表头</li><li>      {field: 'id', title: 'ID', width:80, sort: true, fixed: 'left'}</li><li>      ,{field: 'username', title: '用户名', width:80}</li><li>      ,{field: 'sex', title: '性别', width:80, sort: true}</li><li>      ,{field: 'city', title: '城市', width:80} </li><li>      ,{field: 'sign', title: '签名', width: 177}</li><li>      ,{field: 'experience', title: '积分', width: 80, sort: true}</li><li>      ,{field: 'score', title: '评分', width: 80, sort: true}</li><li>      ,{field: 'classify', title: '职业', width: 80}</li><li>      ,{field: 'wealth', title: '财富', width: 135, sort: true}</li><li>    ]]</li><li>  });</li><li>  </li><li>});</li><li>&lt;/script&gt;</li><li>&lt;/body&gt;</li><li>&lt;/html&gt;</li></ol></pre>
      <p>一切都并不会陌生：绑定容器、设置数据接口、在表头设定对应的字段，剩下的…就交给 layui 吧。你的牛刀是否早已饥渴难耐？那么不妨现在就去小试一波吧。数据接口可参考：<a href="http://www.layui.com/demo/table/user/?page=1&amp;limit=30" target="_blank">返回的数据</a>，规则在下文也有讲解。</p>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="init">三种初始化渲染方式</a></legend>
    </fieldset>
    <div class="site-text">
      <p>在上述“快速使用”的介绍中，你已经初步见证了 table 模块的信手拈来，但其使用方式并不止那一种。我们为了满足各种情况下的需求，对 table 模块做了三种初始化的支持，你可按照个人喜好和实际情况灵活使用。</p>
    </div>
    <table class="layui-table">
      <colgroup>
        <col width="50">
        <col width="120">
        <col width="200">
        <col>
      </colgroup>
      <thead>
        <tr>
          <th></th>
          <th>方式</th>
          <th>机制</th>
          <th>适用场景</th>
        </tr> 
      </thead>
      <tbody class="layui-text">
        <tr>
          <td>01.</td>
          <td><a href="http://www.layui.com/doc/modules/table.html#methodRender">方法渲染</a></td>
          <td>用JS方法的配置完成渲染</td>
          <td>（推荐）无需写过多的 HTML，在 JS 中指定原始元素，再设定各项参数即可。</td>
        </tr>
        <tr>
          <td>02.</td>
          <td><a href="http://www.layui.com/doc/modules/table.html#autoRender">自动渲染</a></td>
          <td>HTML配置，自动渲染</td>
          <td>无需写过多 JS，可专注于 HTML 表头部分</td>
        </tr>
        <tr>
          <td>03.</td>
          <td><a href="http://www.layui.com/doc/modules/table.html#parseTable">转换静态表格</a></td>
          <td>转化一段已有的表格元素</td>
          <td>无需配置数据接口，在JS中指定表格元素，并简单地给表头加上自定义属性即可</td>
        </tr>
      </tbody>
    </table>
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="methodRender">方法渲染</a></legend>
    </fieldset>
    <div class="site-text">
      <p>其实这是“自动化渲染”的手动模式，本质类似，只是“方法级渲染”将基础参数的设定放在了JS代码中，且原始的 table 标签只需要一个 <em>选择器</em>：</p>
    </div>
    <pre class="layui-code layui-box layui-code-view" lay-title="HTML"><h3 class="layui-code-h3">HTML<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>          </li><li>&lt;table id="demo" lay-filter="test"&gt;&lt;/table&gt;</li><li>    </li></ol></pre>
    <pre class="layui-code layui-box layui-code-view" lay-title="JavaScript"><h3 class="layui-code-h3">JavaScript<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>var table = layui.table;</li><li> </li><li>//执行渲染</li><li>table.render({</li><li>  elem: '#demo' //指定原始表格元素选择器（推荐id选择器）</li><li>  ,height: 315 //容器高度</li><li>  ,cols: [{}] //设置表头</li><li>  //,…… //更多参数参考右侧目录：基本参数选项</li><li>});</li><li>    </li></ol></pre>
    <div class="site-text">
      <p>事实上我们更推荐采用“方法级渲染”的做法，其最大的优势在于你可以脱离HTML文件，而专注于JS本身。尤其对于项目的频繁改动及发布，其便捷性会体现得更为明显。而究竟它与“自动化渲染”的方式谁更简单，也只能由各位猿猿们自行体味了。</p>
      <p>备注：<em>table.render()</em>方法返回一个对象：var tableIns = table.render(options)，可用于对当前表格进行“重载”等操作，详见目录：<a href="http://www.layui.com/doc/modules/table.html#reload">表格重载</a></p>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="autoRender">自动渲染</a></legend>
    </fieldset>
    <div class="site-text">
      <p>
        所谓的自动渲染，即：在一段 table 容器中配置好相应的参数，由 table 模块内部自动对其完成渲染，而无需你写初始的渲染方法。其特点在上文也有阐述。你需要关注的是以下三点：
        <br><br>1) 带有 <em>class="layui-table"</em> 的 <em>&lt;table&gt;</em> 标签。
        <br>2) 对标签设置属性 <em>lay-data=""</em> 用于配置一些基础参数
        <br>3) 在 <em>&lt;th&gt;</em> 标签中设置属性<em>lay-data=""</em>用于配置表头信息
      </p>
    </div>
    <div class="site-text">
      <p>按照上述的规范写好table原始容器后，只要你加载了layui 的 table 模块，就会自动对其建立动态的数据表格。下面是一个示例：</p>
    </div>
    <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>&lt;table class="layui-table" lay-data="{height:315, url:'/demo/table/user/', page:true, id:'test'}" lay-filter="test"&gt;</li><li>  &lt;thead&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;th lay-data="{field:'id', width:80, sort: true}"&gt;ID&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'username', width:80}"&gt;用户名&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'sex', width:80, sort: true}"&gt;性别&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'city'}"&gt;城市&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'sign'}"&gt;签名&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'experience', sort: true}"&gt;积分&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'score', sort: true}"&gt;评分&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'classify'}"&gt;职业&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'wealth', sort: true}"&gt;财富&lt;/th&gt;</li><li>    &lt;/tr&gt;</li><li>  &lt;/thead&gt;</li><li>&lt;/table&gt;</li><li>    </li></ol></pre>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="parseTable">转换静态表格</a></legend>
    </fieldset>
    <div class="site-text">
      <p>假设你的页面已经存在了一段有内容的表格，它由原始的table标签组成，这时你需要赋予它一些动态元素，比如拖拽调整列宽？比如排序等等？那么你同样可以很轻松地去实现。如下所示：</p>
    </div>
    <table lay-filter="parse-table-demo" style="border: 1px solid #e2e2e2;">
      <thead>
        <tr>
          <th lay-data="{field:&#39;username&#39;, width:100}">昵称</th>
          <th lay-data="{field:&#39;experience&#39;, width:80, sort:true}">积分</th>
          <th lay-data="{field:&#39;sign&#39;}">签名</th>
        </tr> 
      </thead>
      <tbody>
        <tr>
          <td>贤心1</td>
          <td>66</td>
          <td>人生就像是一场修行a</td>
        </tr>
        <tr>
          <td>贤心2</td>
          <td>88</td>
          <td>人生就像是一场修行b</td>
        </tr>
        <tr>
          <td>贤心3</td>
          <td>33</td>
          <td>人生就像是一场修行c</td>
        </tr>
      </tbody>
    </table>
    <button class="layui-btn" onclick="layui.table.init(&#39;parse-table-demo&#39;);layui.jquery(this).addClass(&#39;layui-btn-disabled&#39;)" style="margin: 10px 0;">转换上述表格</button>
    <div class="site-text">
      <p>通过上面的小例子，你已经初步见识了这一功能的实际意义。尝试在你的静态表格的 <em>th</em> 标签中加上 <em>lay-data=""</em> 属性，代码如下：</p>
    </div>
    <pre class="layui-code layui-box layui-code-view" lay-title="HTML" lay-height="200px"><h3 class="layui-code-h3">HTML<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol" style="max-height: 200px;"><li>&lt;table lay-filter="demo"&gt;</li><li>  &lt;thead&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;th lay-data="{field:'username', width:100}"&gt;昵称&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'experience', width:80, sort:true}"&gt;积分&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'sign'}"&gt;签名&lt;/th&gt;</li><li>    &lt;/tr&gt; </li><li>  &lt;/thead&gt;</li><li>  &lt;tbody&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;td&gt;贤心1&lt;/td&gt;</li><li>      &lt;td&gt;66&lt;/td&gt;</li><li>      &lt;td&gt;人生就像是一场修行a&lt;/td&gt;</li><li>    &lt;/tr&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;td&gt;贤心2&lt;/td&gt;</li><li>      &lt;td&gt;88&lt;/td&gt;</li><li>      &lt;td&gt;人生就像是一场修行b&lt;/td&gt;</li><li>    &lt;/tr&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;td&gt;贤心3&lt;/td&gt;</li><li>      &lt;td&gt;33&lt;/td&gt;</li><li>      &lt;td&gt;人生就像是一场修行c&lt;/td&gt;</li><li>    &lt;/tr&gt;</li><li>  &lt;/tbody&gt;</li><li>&lt;/table&gt;</li><li>    </li></ol></pre>
    <div class="site-text">
      <p>然后执行用于转换表格的JS方法，就可以达到目的了：</p>
    </div>
    <pre class="layui-code layui-box layui-code-view" lay-title="JavaScript"><h3 class="layui-code-h3">JavaScript<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>var table = layui.table;</li><li> </li><li>//转换静态表格</li><li>table.init('demo', {</li><li>  height: 315 //设置高度</li><li>  ,limit: 10 //<span style="color: #FF5722">注意：请务必确保 limit 参数（默认：10）是与你服务端限定的数据条数一致</span></li><li>  //支持所有基础参数</li><li>}); </li><li>    </li></ol></pre>
    <div class="site-text">
      <p>在前面的“方法渲染”和“自动渲染”两种方式中，你的数据都来源于异步的接口，这可能并不利于所谓的seo（当然是针对于前台页面）。而在这里，你的数据已和页面同步输出，却仍然可以转换成动态表格，是否感受到一丝惬意呢？</p>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="options">基础参数一览表</a></legend>
    </fieldset>
    <div class="site-text">
      <p>基础参数并非所有都要出现，有必选也有可选，结合你的实际需求自由设定。基础参数一般出现在以下几种场景中：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>场景一：下述方法中的键值即为基础参数项</li><li>table.render({</li><li>  height: 300</li><li>  ,url: '/api/data'</li><li>});</li><li>       </li><li>场景二：下述 lay-data 里面的内容即为基础参数项，切记：值要用单引号</li><li>&lt;table lay-data="{height:300, url:'/api/data'}" lay-filter="demo"&gt; …… &lt;/table&gt;</li><li> </li><li>更多场景：下述 options 即为含有基础参数项的对象</li><li>&gt; table.init('filter', options); //转化静态表格</li><li>&gt; var tableObj = table.render({});</li><li>  tableObj.reload(options); //重载表格</li><li>      </li></ol></pre>
      <p>下面是目前 table 模块所支持的全部参数一览表，我们对重点参数进行了的详细说明，你可以点击下述表格最右侧的“示例”去查看</p>
      <table class="layui-table">
        <colgroup>
          <col width="100">
          <col width="100">
          <col>
          <col width="150">
        </colgroup>
        <thead>
          <tr>
            <th>参数</th>
            <th>类型</th>
            <th>说明</th>
            <th>示例值</th>
          </tr> 
        </thead>
        <tbody>
          <tr>
            <td>elem</td>
            <td>String/DOM</td>
            <td>指定原始 table 容器的选择器或 DOM，方法渲染方式必填</td>
            <td>'#demo'</td>
          </tr>
          <tr>
            <td>cols</td>
            <td>Array</td>
            <td>设置表头。值是一个二维数组。方法渲染方式必填</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#cols">详见表头参数</a></td>
          </tr>
          <tr>
            <td>url（等）</td>
            <td>-</td>
            <td>异步数据接口相关参数。其中 url 参数为必填项</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#async">详见异步接口</a></td>
          </tr>
          <tr>
            <td>width</td>
            <td>Number</td>
            <td>设定容器宽度。table容器的默认宽度是跟随它的父元素铺满，你也可以设定一个固定值，当容器中的内容超出了该宽度时，会自动出现横向滚动条。</td>
            <td>1000</td>
          </tr>
          <tr>
            <td>height</td>
            <td>Number/String</td>
            <td>设定容器高度</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#height">详见height</a></td>
          </tr>
          <tr>
            <td>cellMinWidth</td>
            <td>Number</td>
            <td>（layui 2.2.1 新增）全局定义所有常规单元格的最小宽度（默认：60），一般用于列宽自动分配的情况。其优先级低于表头参数中的 minWidth</td>
            <td>100</td>
          </tr>
          <tr>
            <td>done</td>
            <td>Function</td>
            <td>数据渲染完的回调。你可以借此做一些其它的操作</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#done">详见done回调</a></td>
          </tr>
          <tr>
            <td>data</td>
            <td>Array</td>
            <td>直接赋值数据。既适用于只展示一页数据，也非常适用于对一段已知数据进行多页展示。</td>
            <td>[{}, {}, {}, {}, …]</td>
          </tr>
          <tr>
            <td>page</td>
            <td>Boolean/Object</td>
            <td>开启分页（默认：false） 注：从 layui 2.2.0 开始，支持传入一个对象，里面可包含 <a href="http://www.layui.com/doc/modules/laypage.html#options">laypage</a> 组件所有支持的参数（jump、elem除外）</td>
            <td>{theme: '#c00'}</td>
          </tr>
          <tr>
            <td>limit</td>
            <td>Number</td>
            <td>每页显示的条数（默认：10）。值务必对应 limits 参数的选项。<br>优先级低于 page 参数中的 limit 参数。</td>
            <td>30</td>
          </tr>
          <tr>
            <td>limits</td>
            <td>Array</td>
            <td>每页条数的选择项，默认：[10,20,30,40,50,60,70,80,90]。<br>优先级低于 page 参数中的 limits 参数。</td>
            <td>[30,60,90]</td>
          </tr>
          <tr>
            <td>loading</td>
            <td>Boolean</td>
            <td>是否显示加载条（默认：true）。如果设置 false，则在切换分页时，不会出现加载条。该参数只适用于 url 参数开启的方式</td>
            <td>false</td>
          </tr>
          <tr>
            <td>text</td>
            <td>Object</td>
            <td>自定义文本，如空数据时的异常提示等。注：layui 2.2.5 开始新增。</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#text">详见自定义文本</a></td>
          </tr>
          <tr>
            <td>initSort</td>
            <td>Object</td>
            <td>初始排序状态。用于在数据表格渲染完毕时，默认按某个字段排序。注：该参数为 layui 2.1.1 新增</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#initSort">详见初始排序</a></td>
          </tr>
          <tr>
            <td>id</td>
            <td>String</td>
            <td>设定容器唯一ID。注意：从 layui 2.2.0 开始，该参数等价于 &lt;table id="test"&gt;&lt;/table&gt; 中的 id 值。id值是对表格的数据操作方法上是必要的传递条件，它是表格容器的索引。你在下文也将会见识它的存在。</td>
            <td>test</td>
          </tr>
          <tr>
            <td>skin（等）</td>
            <td>-</td>
            <td>设定表格各种外观、尺寸等</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#skin">详见表格风格</a></td>
          </tr>
        </tbody>
      </table>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="cols">cols - 表头参数一览表</a></legend>
    </fieldset>
    <div class="site-text">
      <p>
        相信我，在你还尚无法驾驭 layui table 的时候，你的所有焦点都应放在这里，它带引领你完成许多可见和不可见甚至你无法想象的工作。如果你采用的是方法渲染，cols 是一个二维数组，表头参数设定在数组内；如果你采用的自动渲染，表头参数的设定应放在 <em>&lt;th&gt;</em> 标签上
      </p>
      <table class="layui-table">
        <colgroup>
          <col width="100">
          <col width="100">
          <col>
          <col width="150">
        </colgroup>
        <thead>
          <tr>
            <th>参数</th>
            <th>类型</th>
            <th>说明</th>
            <th>示例值</th>
          </tr> 
        </thead>
        <tbody>
          <tr>
            <td>field</td>
            <td>String</td>
            <td>（必填项）设定字段名。字段名的设定非常重要，且是表格数据列的唯一标识</td>
            <td>username</td>
          </tr>
          <tr>
            <td>title</td>
            <td>String</td>
            <td>（必填项）设定标题名称</td>
            <td>用户名</td>
          </tr>
          <tr>
            <td>width</td>
            <td>Number/String</td>
            <td>设定列宽（默认自动分配）。支持填写：数字、百分比。请结合实际情况，对不同列做不同设定。<span style="color:#FF5722;">注意：如果是 layui 2.2.0 之前的版本，列宽必须设定一个固定数字</span></td>
            <td>200<br>30%</td>
          </tr>
          <tr>
            <td>minWidth</td>
            <td>Number</td>
            <td>（layui 2.2.1 新增）局部定义当前常规单元格的最小宽度（默认：60），一般用于列宽自动分配的情况。其优先级高于基础参数中的 cellMinWidth</td>
            <td>100</td>
          </tr>
          <tr>
            <td>type</td>
            <td>String</td>
            <td>设定列类型。可选值有：normal（常规列，无需设定）、<em>checkbox</em>（复选框列）、<em>space</em>（空列）、<em>numbers</em>（序号列）。<span style="color:#FF5722;">注意：该参数为 layui 2.2.0 新增</span>。而如果是之前的版本，复选框列采用 checkbox: true、空列采用 space: true</td>
            <td>任意一个可选值</td>
          </tr>
          <tr>
            <td>LAY_CHECKED</td>
            <td>Boolean</td>
            <td>是否全选状态（默认：false）。必须复选框列开启后才有效，如果设置 true，则表示复选框默认全部选中。</td>
            <td>true</td>
          </tr>
          <tr>
            <td>fixed</td>
            <td>String</td>
            <td>固定列。可选值有：<em>left</em>（固定在左）、<em>right</em>（固定在右）。一旦设定，对应的列将会被固定在左或右，不随滚动条而滚动。
            <br>
            注意：<em>如果是固定在左，该列必须放在表头最前面；如果是固定在右，该列必须放在表头最后面。</em></td>
            <td>left（同 true）<br>right</td>
          </tr>
          <tr>
            <td>sort</td>
            <td>Boolean</td>
            <td>
              是否允许排序（默认：false）。如果设置 true，则在对应的表头显示排序icon，从而对列开启排序功能。
              <p>
                注意：<em>不推荐对值同时存在“数字和普通字符”的列开启排序，因为会进入字典序比对</em>。比如：<span style="color: #FF5722;">'贤心' &gt; '2' &gt; '100'</span>，这可能并不是你想要的结果，但字典序排列算法（ASCII码比对）就是如此。
              </p>
            </td>
            <td>true</td>
          </tr>
          <tr>
            <td>unresize</td>
            <td>Boolean</td>
            <td>
              是否禁用拖拽列宽（默认：false）。默认情况下会根据列类型（type）来决定是否禁用，如复选框列，会自动禁用。而其它普通列，默认允许拖拽列宽，当然你也可以设置 true 来禁用该功能。
            </td>
            <td>false</td>
          </tr>
          <tr>
            <td>edit</td>
            <td>String</td>
            <td>单元格编辑类型（默认不开启）目前只支持：<em>text</em>（输入框）</td>
            <td>text</td>
          </tr>
          <tr>
            <td>event</td>
            <td>String</td>
            <td>自定义单元格点击事件名，以便在 <a href="http://www.layui.com/doc/modules/table.html#ontool">tool</a> 事件中完成对该单元格的业务处理</td>
            <td>任意字符</td>
          </tr>
          <tr>
            <td>style</td>
            <td>String</td>
            <td>自定义单元格样式。即传入 CSS 样式</td>
            <td>background-color: #5FB878; color: #fff;</td>
          </tr>
          <tr>
            <td>align</td>
            <td>String</td>
            <td>单元格排列方式。可选值有：<em>left</em>（默认）、<em>center</em>（居中）、<em>right</em>（居右）</td>
            <td>center</td>
          </tr>
          <tr>
            <td>colspan</td>
            <td>Number</td>
            <td>单元格所占列数（默认：1）。一般用于多级表头</td>
            <td>3</td>
          </tr>
          <tr>
            <td>rowspan</td>
            <td>Number</td>
            <td>单元格所占行数（默认：1）。一般用于多级表头</td>
            <td>2</td>
          </tr>
          <tr>
            <td>templet</td>
            <td>String</td>
            <td>自定义列模板，模板遵循 <a href="http://www.layui.com/doc/modules/laytpl.html" target="_blank">laytpl</a> 语法。这是一个非常实用的功能，你可借助它实现逻辑处理，以及将原始数据转化成其它格式，如时间戳转化为日期字符等</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#templet">详见自定义模板</a></td>
          </tr>
          <tr>
            <td>toolbar</td>
            <td>String</td>
            <td>绑定列工具条。设定后，可在每行列中出现一些自定义的操作性按钮</td>
            <td><a href="http://www.layui.com/doc/modules/table.html#toolbar">详见列工具条</a></td>
          </tr>
        </tbody>
      </table>
      <p>下面是一些方法渲染和自动渲染的配置方式：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//方法渲染：</li><li>table.render({</li><li>  cols:  [[ //标题栏</li><li>    {checkbox: true}</li><li>    ,{field: 'id', title: 'ID', width: 80}</li><li>    ,{field: 'username', title: '用户名', width: 120}</li><li>  ]]</li><li>});</li><li> </li><li>它等价于自动渲染：</li><li>&lt;table class="layui-table" lay-data="{基础参数}" lay-filter="test"&gt;</li><li>  &lt;thead&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;th lay-data="{checkbox:true}"&gt;&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'id', width:80}"&gt;ID&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'username', width:180}"&gt;用户名&lt;/th&gt;</li><li>    &lt;/tr&gt;</li><li>  &lt;/thead&gt;</li><li>&lt;/table&gt;</li><li>      </li></ol></pre>
      <p>以下是一个二级表头的例子：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>JS：</li><li>table.render({</li><li>  cols:  [[ //标题栏</li><li>    {field: 'username', title: '联系人', width: 80, rowspan: 2} //rowspan即纵向跨越的单元格数</li><li>    ,{field: 'amount', title: '金额', width: 80, rowspan: 2}</li><li>    ,{align: 'center', title: '地址', colspan: 3} //colspan即横跨的单元格数，这种情况下不用设置field和width</li><li>  ], [</li><li>    {field: 'province', title: '省', width: 80}</li><li>    ,{field: 'city', title: '市', width: 120}</li><li>    ,{field: 'county', title: '详细', width: 300}</li><li>  ]]</li><li>});</li><li> </li><li>它等价于：</li><li>&lt;table class="layui-table" lay-data="{基础参数}"&gt;</li><li>  &lt;thead&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;th lay-data="{field:'username', width:80}" rowspan="2"&gt;联系人&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'amount', width:120}" rowspan="2"&gt;金额&lt;/th&gt;</li><li>      &lt;th lay-data="{align:'center'}" colspan="3"&gt;地址&lt;/th&gt;</li><li>    &lt;/tr&gt;</li><li>    &lt;tr&gt;</li><li>      &lt;th lay-data="{field:'province', width:80}"&gt;省&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'city', width:120}"&gt;市&lt;/th&gt;</li><li>      &lt;th lay-data="{field:'county', width:300}"&gt;详细&lt;/th&gt;</li><li>    &lt;/tr&gt;</li><li>  &lt;/thead&gt;</li><li>&lt;/table&gt;</li><li>      </li></ol></pre>
      <p>需要说明的是，table模块支持无限极表头，你可按照上述的方式继续扩充。核心点在于 <em>rowspan</em> 和 <em>colspan</em> 两个参数的使用。</p>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="templet">templet - 自定义列模板</a></legend>
    </fieldset>
    <div class="site-text">
      <p>类型：<em>String</em>，默认值：<em>无</em></p>
      <p>在默认情况下，单元格的内容是完全按照数据接口返回的content原样输出的，如果你想对某列的单元格添加链接等其它元素，你可以借助该参数来轻松实现。这是一个非常实用且强大的功能，你的表格内容会因此而丰富多样。</p>
      <blockquote class="layui-elem-quote layui-quote-nm layui-text" style="margin: 20px 0;">
        templet 提供了三种使用方式，请结合实际场景选择最合适的一种：
        <ul>
          <li>如果自定义模版的字符量太大，我们推荐你采用【方式一】；</li>
          <li>如果自定义模板的字符量适中，或者想更方便地调用外部方法，我们推荐你采用【方式二】；</li>
          <li>如果自定义模板的字符量很小，我们推荐你采用【方式三】</li>
        </ul>
      </blockquote>
      
      <p><strong>方式一：绑定模版选择器。</strong></p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.render({</li><li>  cols: [[</li><li>    {field:'title', title: '文章标题', width: 200, templet: '#titleTpl'} //这里的templet值是模板元素的选择器</li><li>    ,{field:'id', title:'ID', width:100}</li><li>  ]]</li><li>});</li><li> </li><li>等价于：</li><li>&lt;th lay-data="{field:'title', width: 200, templet: '#titleTpl'}"&gt;文章标题&lt;/th&gt;</li><li>&lt;th lay-data="{field:'id', width:100}"&gt;ID&lt;/th&gt;</li><li>      </li></ol></pre>
      <p>下述是templet对应的模板，它可以存放在页面的任意位置。模板遵循于 <a href="http://www.layui.com/doc/modules/laytpl.html" target="_blank">laytpl</a> 语法，可读取到返回的所有数据</p>
      <pre class="layui-code layui-box layui-code-view" lay-title="HTML"><h3 class="layui-code-h3">HTML<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>&lt;script type="text/html" id="titleTpl"&gt;</li><li>  &lt;a href="/detail/{{d.id}}" class="layui-table-link"&gt;{{d.title}}&lt;/a&gt;</li><li>&lt;/script&gt;</li><li> </li><li><span style="color: #FF5722;">注意：上述的 {{d.id}}、{{d.title}} 是动态内容，它对应数据接口返回的字段名。除此之外，你还可以读取到以下额外字段：<br>     序号：{{ d.LAY_INDEX }} （该额外字段为 layui 2.2.0 新增）</span></li><li> </li><li>由于模板遵循 laytpl 语法（建议细读 <em>laytpl文档</em> ），因此在模板中你可以写任意脚本语句（如 if else/for等）：</li><li>&lt;script type="text/html" id="titleTpl"&gt;</li><li>  {{#  if(d.id &lt; 100){ }}</li><li>    &lt;a href="/detail/{{d.id}}" class="layui-table-link"&gt;{{d.title}}&lt;/a&gt;</li><li>  {{#  } else { }}</li><li>    {{d.title}}(普通用户)</li><li>  {{#  } }}</li><li>&lt;/script&gt;</li><li>      </li></ol></pre>
      <p><strong>方式二：函数转义。</strong>自 layui 2.2.5 开始，templet 开始支持函数形式，函数返回一个参数 d，包含接口返回的所有字段和数据。如下所示：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.render({</li><li>  cols: [[</li><li>    {field:'title', title: '文章标题', width: 200</li><li>      ,templet: function(d){</li><li>        return 'ID：'+ d.id +'，标题：&lt;span style="color: #c00;"&gt;'+ d.title +'&lt;/span&gt;'</li><li>      }</li><li>    }</li><li>    ,{field:'id', title:'ID', width:100}</li><li>  ]]</li><li>});    </li><li>      </li></ol></pre>
      
      
      <p><strong>方式三：直接赋值模版字符。</strong>事实上，templet 也可以直接是一段 html 内容，如：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>       </li><li>templet: '&lt;div&gt;&lt;a href="/detail/{{d.id}}" class="layui-table-link"&gt;{{d.title}}&lt;/a&gt;&lt;/div&gt;'</li><li> </li><li>注意：这里一定要被一层 <em>&lt;div&gt;&lt;/div&gt;</em> 包裹，否则无法读取到模板</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="toolbar">toolbar - 绑定列工具条</a></legend>
    </fieldset>
    <div class="site-text">
      <p>类型：<em>String</em>，默认值：<em>无</em></p>
      <p>通常你需要在表格的每一行加上 <em>查看</em>、<em>编辑</em>、<em>删除</em> 这样类似的操作按钮，而 tool 参数就是为此而生，你因此可以非常便捷地实现各种操作功能。<strong>tool 参数和 templet 参数的使用方式完全类似</strong>，通常接受的是一个选择器，也可以是一段HTML字符。</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.render({</li><li>  cols: [[</li><li>    {field:'id', title:'ID', width:100}</li><li>    ,{fixed: 'right', width:150, align:'center', toolbar: '#barDemo'} //这里的toolbar值是模板元素的选择器</li><li>  ]]</li><li>});</li><li> </li><li>等价于：</li><li>&lt;th lay-data="{field:'id', width:100}"&gt;ID&lt;/th&gt;</li><li>&lt;th lay-data="{fixed: 'right', width:150, align:'center', toolbar: '#barDemo'}"&gt;&lt;/th&gt;</li><li>      </li></ol></pre>
      <a name="ontool"></a>
      <p>下述是 toolbar 对应的模板，它可以存放在页面的任意位置：</p>
      <pre class="layui-code layui-box layui-code-view" "="" lay-title="HTML"><h3 class="layui-code-h3">HTML<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>&lt;script type="text/html" id="barDemo"&gt;</li><li>  &lt;a class="layui-btn layui-btn-xs" lay-event="detail"&gt;查看&lt;/a&gt;</li><li>  &lt;a class="layui-btn layui-btn-xs" lay-event="edit"&gt;编辑&lt;/a&gt;</li><li>  &lt;a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"&gt;删除&lt;/a&gt;</li><li>  </li><li>  &lt;!-- 这里同样支持 laytpl 语法，如： --&gt;</li><li>  {{#  if(d.auth &gt; 2){ }}</li><li>    &lt;a class="layui-btn layui-btn-xs" lay-event="check"&gt;审核&lt;/a&gt;</li><li>  {{#  } }}</li><li>&lt;/script&gt;</li><li> </li><li>注意：属性 <em>lay-event=""</em> 是模板的关键所在，值可随意定义。</li><li>      </li></ol></pre>
      <p>接下来我们可以借助 table模块的工具条事件，完成不同的操作功能：</p>
      <a name="ontoolCallback"></a>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//监听工具条</li><li>table.on('tool(test)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"</li><li>  var data = obj.data; //获得当前行数据</li><li>  var layEvent = obj.event; //获得 lay-event 对应的值（<em style="color: #FF5722;">也可以是表头的 event 参数对应的值</em>）</li><li>  var tr = obj.tr; //获得当前行 tr 的DOM对象</li><li> </li><li>  if(layEvent === 'detail'){ //查看</li><li>    //do somehing</li><li>  } else if(layEvent === 'del'){ //删除</li><li>    layer.confirm('真的删除行么', function(index){</li><li>      obj.del(); //<span style="color: #FF5722;">删除对应行（tr）的DOM结构，并更新缓存</span></li><li>      layer.close(index);</li><li>      //向服务端发送删除指令</li><li>    });</li><li>  } else if(layEvent === 'edit'){ //编辑</li><li>    //do something</li><li>    </li><li>    //<span style="color: #FF5722;">同步更新缓存对应的值</span></li><li>    obj.update({</li><li>      username: '123'</li><li>      ,title: 'xxx'</li><li>    });</li><li>  }</li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="async">异步数据接口</a></legend>
    </fieldset>
    <div class="site-text">
      <p>数据的异步请求由以下几个参数组成：</p>
      <table class="layui-table">
        <colgroup>
          <col width="100">
          <col>
        </colgroup>
        <thead>
          <tr>
            <th>参数名</th>
            <th>功能</th>
          </tr> 
        </thead>
        <tbody>
          <tr>
            <td>url</td>
            <td>
              接口地址。默认会自动传递两个参数：<em>?page=1&amp;limit=30</em>（该参数可通过 request 自定义）
              <br><em>page</em> 代表当前页码、<em>limit</em> 代表每页数据量
           </td>
          </tr>
          <tr>
            <td>method</td>
            <td>接口http请求类型，默认：get</td>
          </tr>
          <tr>
            <td>where</td>
            <td>接口的其它参数。如：<em>where: {token: 'sasasas', id: 123}</em></td>
          </tr>
          <tr>
            <td>request</td>
            <td>
              用于对分页请求的参数：page、limit重新设定名称，如：
              <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>request: {</li><li>  pageName: 'curr' //页码的参数名称，默认：page</li><li>  ,limitName: 'nums' //每页数据量的参数名，默认：limit</li><li>}              </li><li>              </li></ol></pre>
              那么请求数据时的参数将会变为：<em>?curr=1&amp;nums=30</em>
            </td>
          </tr>
          <tr>
            <td>response</td>
            <td>
              用于对返回的数据格式的自定义，如：
              <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>response: {</li><li>  statusName: 'status' //数据状态的字段名称，默认：code</li><li>  ,statusCode: 200 //成功的状态码，默认：0</li><li>  ,msgName: 'hint' //状态信息的字段名称，默认：msg</li><li>  ,countName: 'total' //数据总数的字段名称，默认：count</li><li>  ,dataName: 'rows' //数据列表的字段名称，默认：data</li><li>}      </li><li>              </li></ol></pre>
              你接口返回的数据格式，比如遵循 response 对应的字段名称。比如上面对应的格式为：
              <pre class="layui-code layui-box layui-code-view layui-code-notepad" lay-title="接口返回的数据格式" lay-skin="notepad"><h3 class="layui-code-h3">接口返回的数据格式<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>{</li><li>  status: 200,</li><li>  hint: "",</li><li>  total: 1000,</li><li>  rows: []</li><li>} </li><li>              </li></ol></pre>
              下面是默认接受的数据格式：
              <pre class="layui-code layui-box layui-code-view layui-code-notepad" lay-title="默认接受的数据格式" lay-skin="notepad"><h3 class="layui-code-h3">默认接受的数据格式<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>{</li><li>  code: 0,</li><li>  msg: "",</li><li>  count: 1000,</li><li>  data: []</li><li>} </li><li>              </li></ol></pre>
              <p>接口参考：<a href="http://www.layui.com/demo/table/user/?page=1&amp;limit=30" target="_blank">/demo/table/user/</a></p>
            </td>
          </tr>
        </tbody>
      </table>
      <p>注意：<em>request 和 response 参数均为 layui 2.1.0 版本新增</em></p>
      <p>调用示例：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//“方法级渲染”配置方式</li><li>table.render({ //其它参数在此省略</li><li>  url: '/api/data/'</li><li>  //where: {token: 'sasasas', id: 123} //如果无需传递额外参数，可不加该参数</li><li>  //method: 'post' //如果无需自定义HTTP类型，可不加该参数</li><li>  //request: {} //如果无需自定义请求参数，可不加该参数</li><li>  //response: {} //如果无需自定义数据响应名称，可不加该参数</li><li>}); </li><li> </li><li>等价于（“自动化渲染”配置方式）</li><li>&lt;table class="layui-table" lay-data="{url:'/api/data/'}" lay-filter="test"&gt; …… &lt;/table&gt;</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="done">done - 数据渲染完的回调</a></legend>
    </fieldset>
    <div class="site-text">
      <p>类型：<em>Function</em>，默认值：<em>无</em></p>
      <p>无论是异步请求数据，还是直接赋值数据，都会触发该回调。你可以利用该回调做一些表格以外元素的渲染。</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.render({ //其它参数在此省略</li><li>  done: function(res, curr, count){</li><li>    //如果是异步请求数据方式，res即为你接口返回的信息。</li><li>    //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度</li><li>    console.log(res);</li><li>    </li><li>    //得到当前页码</li><li>    console.log(curr); </li><li>    </li><li>    //得到数据总量</li><li>    console.log(count);</li><li>  }</li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="text">text - 自定义文本</a></legend>
    </fieldset>
    <div class="site-text">
      <p>类型：<em>Object</em></p>
      <p>table 模块会内置一些默认的文本信息，如果想修改，你可以设置以下参数达到目的。</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.render({ //其它参数在此省略</li><li>  text: {</li><li>    none: '暂无相关数据' //默认：无数据。注：<em>该属性为 layui 2.2.5 开始新增</em></li><li>  }</li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="initSort">initSort - 初始排序</a></legend>
    </fieldset>
    <div class="site-text">
      <p>类型：<em>Object</em>，默认值：<em>无</em></p>
      <p>用于在数据表格渲染完毕时，默认按某个字段排序。注：<em>该参数为 layui 2.1.1 新增</em></p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//“方法级渲染”配置方式</li><li>table.render({ //其它参数在此省略</li><li>  initSort: {</li><li>    field: 'id' //排序字段，对应 cols 设定的各字段名</li><li>    ,type: 'desc' //排序方式  asc: 升序、desc: 降序、null: 默认排序</li><li>  }</li><li>});</li><li> </li><li>等价于（“自动化渲染”配置方式）</li><li>&lt;table class="layui-table" lay-data="{initSort:{field:'id', type:'desc'}}" lay-filter="test"&gt; …… &lt;/table&gt;</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="height">height - 设定容器高度</a></legend>
    </fieldset>
    <div class="site-text">
      <p>类型：<em>Number/String</em>，可选值如下：</p>
      <table class="layui-table">
        <colgroup>
          <col width="100">
          <col>
          <col width="150">
        </colgroup>
        <thead>
          <tr>
            <th>可选值</th>
            <th>说明</th>
            <th>示例</th>
          </tr> 
        </thead>
        <tbody>
          <tr>
            <td>不填写</td>
            <td>默认情况。高度随数据列表而适应，表格容器不会出现纵向滚动条</td>
            <td>-</td>
          </tr>
          <tr>
            <td>固定值</td>
            <td>设定一个数字，用于定义容器高度，当容器中的内容超出了该高度时，会自动出现纵向滚动条</td>
            <td>height: 315</td>
          </tr>
          <tr>
            <td>full-差值</td>
            <td>
              高度将始终铺满，无论浏览器尺寸如何。这是一个特定的语法格式，其中 <em>full</em> 是固定的，而 <em>差值</em> 则是一个数值，这需要你来预估，比如：表格容器距离浏览器顶部和底部的距离“和”
              <br>PS：<em>该功能为 layui 2.1.0 版本中新增 </em>
            </td>
            <td>height: 'full-20'</td>
          </tr>
        </tbody>
      </table>
      <p>示例：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//“方法级渲染”配置方式</li><li>table.render({ //其它参数在此省略</li><li>  height: 315 //固定值</li><li>}); </li><li>table.render({ //其它参数在此省略</li><li>  height: 'full-20' //高度最大化减去差值</li><li>}); </li><li> </li><li>等价于（“自动化渲染”配置方式）</li><li>&lt;table class="layui-table" lay-data="{height:315}" lay-filter="test"&gt; …… &lt;/table&gt;</li><li>&lt;table class="layui-table" lay-data="{height:'full-20'}" lay-filter="test"&gt; …… &lt;/table&gt;</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="skin">设定表格外观</a></legend>
    </fieldset>
    <div class="site-text">
      <p>控制表格外观的主要由以下参数组成：</p>
      <table class="layui-table">
        <colgroup>
          <col width="100">
          <col>
        </colgroup>
        <thead>
          <tr>
            <th>参数名</th>
            <th>可选值</th>
            <th>备注</th>
          </tr> 
        </thead>
        <tbody>
          <tr>
            <td>skin</td>
            <td>
              line （行边框风格）
              <br>row （列边框风格）
              <br>nob （无边框风格）
            </td>
            <td>用于设定表格风格，若使用默认风格不设置该属性即可</td>
          </tr>
          <tr>
            <td>even</td>
            <td>true/false</td>
            <td>若不开启隔行背景，不设置该参数即可</td>
          </tr>
          <tr>
            <td>size</td>
            <td>
              sm （小尺寸）
              <br>lg （大尺寸）
            </td>
            <td>用于设定表格尺寸，若使用默认尺寸不设置该属性即可</td>
          </tr>
        </tbody>
      </table>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//“方法级渲染”配置方式</li><li>table.render({ //其它参数在此省略</li><li>  skin: 'line' //行边框风格</li><li>  ,even: true //开启隔行背景</li><li>  ,size: 'sm' //小尺寸的表格</li><li>}); </li><li> </li><li>等价于（“自动化渲染”配置方式）</li><li>&lt;table class="layui-table" lay-data="{skin:'line', even:true, size:'sm'}" lay-filter="test"&gt; …… &lt;/table&gt;</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="method">基础方法</a></legend>
    </fieldset>
    <div class="site-text">
      <p>基础用法是table模块的关键组成部分，目前所开放的所有方法如下：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>&gt; table.set(options); //设定全局默认参数。options即各项基础参数</li><li>&gt; table.on('event(filter)', callback); //事件监听。event为内置事件名（详见下文），filter为容器lay-filter设定的值</li><li>&gt; table.init(filter, options); //filter为容器lay-filter设定的值，options即各项基础参数。例子见：<a href="http://www.layui.com/doc/modules/table.html#parseTable">转换静态表格</a></li><li>&gt; table.checkStatus(id); //获取表格选中行（下文会有详细介绍）。id即为id参数对应的值</li><li>&gt; table.render(options); //用于表格方法级渲染，核心方法。应该不用再过多解释了，详见：<a href="http://www.layui.com/doc/modules/table.html#methodRender">方法级渲染</a></li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="checkStatus">获取选中行</a></legend>
    </fieldset>
    <div class="site-text">
      <p>
        该方法可获取到表格所有的选中行相关数据
        <br>语法：<em>table.checkStatus('idTest')</em> idTest为基础参数id对应的值（见：<a href="http://www.layui.com/doc/modules/table.html#id">设定容器唯一ID</a>），如：
      </p>
      <pre class="layui-code layui-box layui-code-view" lay-title="渲染方式"><h3 class="layui-code-h3">渲染方式<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>【自动化渲染】</li><li>&lt;table class="layui-table" lay-data="{id: 'idTest'}"&gt; …… &lt;/table&gt;</li><li> </li><li>【方法渲染】</li><li>table.render({ //其它参数省略</li><li>  id: 'idTest'</li><li>});</li><li>      </li></ol></pre>
      <pre class="layui-code layui-box layui-code-view" lay-title="调用"><h3 class="layui-code-h3">调用<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>var checkStatus = table.checkStatus('idTest'); //test即为基础参数id对应的值</li><li> </li><li>console.log(checkStatus.data) //获取选中行的数据</li><li>console.log(checkStatus.data.length) //获取选中行数量，可作为是否有选中行的条件</li><li>console.log(checkStatus.isAll ) //表格是否全选</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="on">事件监听</a></legend>
    </fieldset>
    <div class="site-text">
      <p>
        语法：<em>table.on('event(filter)', callback);</em> 注：event为内置事件名，filter为容器lay-filter设定的值
        <br>table模块在Layui事件机制中注册了专属事件，如果你使用layui.onevent()自定义模块事件，请勿占用table名。目前所支持的所有事件见下文
      </p>
      <p>
        默认情况下，事件所监听的是全部的table模块容器，但如果你只想监听某一个容器，使用事件过滤器即可。
        <br>假设原始容器为：<em>&lt;table class="layui-table" lay-filter="test"&gt;&lt;/table&gt;</em> 那么你的事件监听写法如下：
      </p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//以复选框事件为例</li><li>table.on('checkbox(test)', function(obj){</li><li>  console.log(obj)</li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="oncheckbox">监听复选框选择</a></legend>
    </fieldset>
    <div class="site-text">
      <p>点击复选框时触发，回调函数返回一个object参数，携带的成员如下：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.on('checkbox(test)', function(obj){</li><li>  console.log(obj.checked); //当前是否选中状态</li><li>  console.log(obj.data); //选中行的相关数据</li><li>  console.log(obj.type); //如果触发的是全选，则为：all，如果触发的是单选，则为：one</li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="onedit">监听单元格编辑</a></legend>
    </fieldset>
    <div class="site-text">
      <p>单元格被编辑，且值发生改变时触发，回调函数返回一个object参数，携带的成员如下：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.on('edit(test)', function(obj){ //注：edit是固定事件名，test是table原始容器的属性 lay-filter="对应的值"</li><li>  console.log(obj.value); //得到修改后的值</li><li>  console.log(obj.field); //当前编辑的字段名</li><li>  console.log(obj.data); //所在行的所有相关数据  </li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend>监听工具条点击</legend>
    </fieldset>
    <div class="site-text">
      <p>具体用法见：<a href="http://www.layui.com/doc/modules/table.html#ontool">绑定工具条</a></p>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="onsort">监听排序切换</a></legend>
    </fieldset>
    <div class="site-text">
      <p>点击表头排序时触发，回调函数返回一个object参数，携带的成员如下：</p>
      <pre class="layui-code layui-box layui-code-view"><h3 class="layui-code-h3">code<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>table.on('sort(test)', function(obj){ //注：tool是工具条事件名，test是table原始容器的属性 lay-filter="对应的值"</li><li>  console.log(obj.field); //当前排序的字段名</li><li>  console.log(obj.type); //当前排序类型：desc（降序）、asc（升序）、null（空对象，默认排序）</li><li>  console.log(this); //当前排序的 th 对象</li><li>  </li><li>  //尽管我们的 table 自带排序功能，但并没有请求服务端。</li><li>  //有些时候，你可能需要根据当前排序的字段，重新向服务端发送请求，从而实现服务端排序，如：</li><li>  table.reload('idTest', {</li><li>    initSort: obj //记录初始排序，如果不设的话，将无法标记表头的排序状态。 layui 2.1.1 新增参数</li><li>    ,where: { //请求参数（注意：这里面的参数可任意定义，并非下面固定的格式）</li><li>      field: obj.field //排序字段</li><li>      ,order: obj.type //排序方式</li><li>    }</li><li>  });</li><li>});</li><li>      </li></ol></pre>
    </div>
    
    <fieldset class="layui-elem-field layui-field-title site-title">
      <legend><a name="reload">表格重载</a></legend>
    </fieldset>
    <div class="site-text">
      <p>很多时候，你需要对表格进行重载。比如数据全局搜索。以下方法可以帮你轻松实现这类需求（可任选一种）。</p>
      <table class="layui-table">
        <colgroup>
          <col width="190">
          <col>
          <col width="150">
        </colgroup>
        <thead>
          <tr>
            <td>语法</td>
            <td>说明</td>
            <td>适用场景</td>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>table.reload(ID, options)</td>
            <td>
              参数 <em>ID</em> 即为基础参数id对应的值，见：<a href="http://www.layui.com/doc/modules/table.html#id">设定容器唯一ID</a>
              <br>参数 <em>options</em> 即为各项基础参数
              <br>注意：<em>该方法为 2.1.0 版本中新增</em>
            </td>
            <td>所有渲染方式</td>
          </tr>
          <tr>
            <td>tableIns.reload(options)</td>
            <td>
              对象 <em>tableIns</em> 来源于 table.render() 方法的实例
              <br>参数 <em>options</em> 即为各项基础参数
           </td>
            <td>仅限方法级渲染</td>
          </tr>
        </tbody>
      </table>
      <pre class="layui-code layui-box layui-code-view" lay-title="示例1：自动化渲染的重载"><h3 class="layui-code-h3">示例1：自动化渲染的重载<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>【HTML】</li><li>&lt;table class="layui-table" lay-data="{id: 'idTest'}"&gt; …… &lt;/table&gt;</li><li> </li><li>【JS】</li><li>table.reload('idTest', {</li><li>  url: '/api/table/search'</li><li>  ,where: {} //设定异步数据接口的额外参数</li><li>  //,height: 300</li><li>});</li><li>      </li></ol></pre>
      
      <pre class="layui-code layui-box layui-code-view" lay-title="示例2：方法级渲染的重载"><h3 class="layui-code-h3">示例2：方法级渲染的重载<a href="http://www.layui.com/doc/modules/code.html" target="_blank">layui.code</a></h3><ol class="layui-code-ol"><li>//所获得的 tableIns 即为当前容器的实例</li><li>var tableIns = table.render({</li><li>  elem: '#id'</li><li>  ,clos: [] //设置表头</li><li>  ,url: '/api/data' //设置异步接口</li><li>  ,id: 'idTest'</li><li>}); </li><li> </li><li>//这里以搜索为例</li><li>tableIns.reload({</li><li>  where: { //设定异步数据接口的额外参数，任意设</li><li>    aaaaaa: 'xxx'</li><li>    ,bbb: 'yyy'</li><li>    //…</li><li>  }</li><li>  ,page: {</li><li>    curr: 1 //重新从第 1 页开始</li><li>  }</li><li>});</li><li>//上述方法等价于</li><li>table.reload('idTest', {</li><li>  where: { //设定异步数据接口的额外参数，任意设</li><li>    aaaaaa: 'xxx'</li><li>    ,bbb: 'yyy'</li><li>    //…</li><li>  }</li><li>  ,page: {</li><li>    curr: 1 //重新从第 1 页开始</li><li>  }</li><li>});</li><li>      </li></ol></pre>
      <p>注意：<em>这里的表格重载是指对表格重新进行渲染，包括数据请求和基础参数的读取</em></p>
    </div>
		</div>
	</div>
<script>
window.global = {
  pageType: 'doc'
  ,preview: function(){
    var preview = document.getElementById('LAY_preview');
    return preview ? preview.innerHTML : '';
  }()
};
layui.config({
  base: 'http://res.layui.com/lay/modules/layui/'
  ,version: '1515376178738'
}).use('global');
</script>
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_30088308'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/c.php%3Fid%3D30088308' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_30088308"></span><script src="http://w.cnzz.com/c.php" type="text/javascript"></script>
<script>
layui.use('table', function(){
  var table = layui.table;
  
  //第一个实例
  table.render({
    elem: '#demo'
    ,height: 315
    ,url: '' //数据接口
    ,page: true //开启分页
    ,cols: [[
      {field:'id', title: 'ID', width:80, sort: true}
      ,{field:'username', title: '用户名', width:80}
      ,{field:'sex', title: '性别', width:80, sort: true}
      ,{field:'city', title: '城市'} //如果未设定列宽，宽度将会自动分配（注：layui 2.2.0 新增功能，之前的版本一定要设置 width）
      ,{field:'sign', title: '签名'}
      ,{field:'experience', title: '积分', sort: true}
      ,{field:'score', title: '评分', sort: true}
      ,{field:'classify', title: '职业'}
      ,{field:'wealth', title: '财富', sort: true}
    ]]
  });
});
</script>
<link rel="stylesheet" href="<%=basePath%>assets/layui/css/modules/code.css" media="all" />
	</body>
</html>