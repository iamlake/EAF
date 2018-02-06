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
  大部分演示都在layer独立组件的官网，与内置的layer模块，用法是完全一致的
</blockquote>
<a class="layui-btn layui-btn-normal" href="http://layer.layui.com/" target="_blank">前去layer官网</a>

<fieldset class="layui-elem-field layui-field-title site-demo-button" style="margin-top: 30px;">
  <legend>弹层类型</legend>
</fieldset>
<div class="site-demo-button" id="layerTypeDemo" style="margin-bottom: 0;">
     <button class="layui-btn layui-btn-primary" data-type="test1">Alert</button>
     <button class="layui-btn layui-btn-primary" data-type="test2">Confirm</button>
     <button class="layui-btn layui-btn-primary" data-type="test3">Msg</button>
     <button class="layui-btn layui-btn-primary" data-type="test4">Tips</button>
     <button class="layui-btn layui-btn-primary" data-type="test5">Page</button>
     <button class="layui-btn layui-btn-primary" data-type="test6">Iframe</button>
     <button class="layui-btn layui-btn-primary" data-type="test7">Prompt</button>
     <button class="layui-btn layui-btn-primary" data-type="test8">Tab</button>
     <button class="layui-btn layui-btn-primary" data-type="test9">Photos</button>
</div>

 
<fieldset class="layui-elem-field layui-field-title site-demo-button" style="margin-top: 30px;">
  <legend>特殊例子</legend>
</fieldset>
<div class="site-demo-button" id="layerDemo" style="margin-bottom: 0;">
  <blockquote class="layui-elem-quote layui-quote-nm">
    Tips：为了更清晰演示，每触发下述一个例子之前，都会关闭所有已经演示的层
  </blockquote>
  <button data-method="setTop" class="layui-btn">多窗口模式，层叠置顶</button>
  <button data-method="confirmTrans" class="layui-btn">配置一个透明的询问框</button>
  <button data-method="notice" class="layui-btn">示范一个公告层</button>
  <button data-method="offset" data-type="t" class="layui-btn layui-btn-normal">上弹出</button>
  <button data-method="offset" data-type="r" class="layui-btn layui-btn-normal">右弹出</button>
  <button data-method="offset" data-type="b" class="layui-btn layui-btn-normal">下弹出</button>
  <button data-method="offset" data-type="l" class="layui-btn layui-btn-normal">左弹出</button>
  <button data-method="offset" data-type="lt" class="layui-btn layui-btn-normal">左上弹出</button>
  <button data-method="offset" data-type="lb" class="layui-btn layui-btn-normal">左下弹出</button>
  <button data-method="offset" data-type="rt" class="layui-btn layui-btn-normal">右上弹出</button>
  <button data-method="offset" data-type="rb" class="layui-btn layui-btn-normal">右下弹出</button>
  <button data-method="offset" data-type="auto" class="layui-btn layui-btn-normal">居中弹出</button>
</div>
  
<fieldset class="layui-elem-field layui-field-title" style="margin-top: 50px;">
  <legend>再次温馨提醒</legend>
</fieldset>
<p class="site-demo-text">本页演示是采用了Layui加载的layer，如果你使用的是独立版的layer，无需通过layui.use('layer')来加载。Layui中的layer与独立版的layer的唯一不同，就是加载方式这一点有所差异，请阅读文档：<a href="http://www.layui.com/doc/modules/layer.html#use" target="_blank">http://www.layui.com/doc/modules/layer.html#use</a></p>
		</div>
	</div>
<script>
layui.use('layer', function(){ //独立版的layer无需执行这一句
  var $ = layui.jquery, layer = layui.layer; //独立版的layer无需执行这一句
  
  //触发事件
  var active = {
    setTop: function(){
      var that = this; 
      //多窗口模式，层叠置顶
      layer.open({
        type: 2 //此处以iframe举例
        ,title: '当你选择该窗体时，即会在最顶端'
        ,area: ['390px', '260px']
        ,shade: 0
        ,maxmin: true
        ,offset: [ //为了演示，随机坐标
          Math.random()*($(window).height()-300)
          ,Math.random()*($(window).width()-390)
        ] 
        ,content: 'http://layer.layui.com/test/settop.html'
        ,btn: ['继续弹出', '全部关闭'] //只是为了演示
        ,yes: function(){
          $(that).click(); 
        }
        ,btn2: function(){
          layer.closeAll();
        }
        
        ,zIndex: layer.zIndex //重点1
        ,success: function(layero){
          layer.setTop(layero); //重点2
        }
      });
    }
    ,confirmTrans: function(){
      //配置一个透明的询问框
      layer.msg('大部分参数都是可以公用的<br>合理搭配，展示不一样的风格', {
        time: 20000, //20s后自动关闭
        btn: ['明白了', '知道了', '哦']
      });
    }
    ,notice: function(){
      //示范一个公告层
      layer.open({
        type: 1
        ,title: false //不显示标题栏
        ,closeBtn: false
        ,area: '300px;'
        ,shade: 0.8
        ,id: 'LAY_layuipro' //设定一个id，防止重复弹出
        ,btn: ['火速围观', '残忍拒绝']
        ,btnAlign: 'c'
        ,moveType: 1 //拖拽模式，0或者1
        ,content: '<div style="padding: 50px; line-height: 22px; background-color: #393D49; color: #fff; font-weight: 300;">你知道吗？亲！<br>layer ≠ layui<br><br>layer只是作为Layui的一个弹层模块，由于其用户基数较大，所以常常会有人以为layui是layerui<br><br>layer虽然已被 Layui 收编为内置的弹层模块，但仍然会作为一个独立组件全力维护、升级。<br><br>我们此后的征途是星辰大海 ^_^</div>'
        ,success: function(layero){
          var btn = layero.find('.layui-layer-btn');
          btn.find('.layui-layer-btn0').attr({
            href: 'http://www.layui.com/'
            ,target: '_blank'
          });
        }
      });
    }
    ,offset: function(othis){
      var type = othis.data('type')
      ,text = othis.text();
      
      layer.open({
        type: 1
        ,offset: type //具体配置参考：http://www.layui.com/doc/modules/layer.html#offset
        ,id: 'layerDemo'+type //防止重复弹出
        ,content: '<div style="padding: 20px 100px;">'+ text +'</div>'
        ,btn: '关闭全部'
        ,btnAlign: 'c' //按钮居中
        ,shade: 0 //不显示遮罩
        ,yes: function(){
          layer.closeAll();
        }
      });
    }
  };
  
  $('#layerDemo .layui-btn').on('click', function(){
    var othis = $(this), method = othis.data('method');
    active[method] ? active[method].call(this, othis) : '';
  });
  
  var ate = {
		    test1: function(){
		      layer.alert('你好，体验者');
		    }
		    ,test2: function(){
		      layer.confirm('您是如何看待前端开发？', {
		        btn: ['重要','奇葩'] //按钮
		      }, function(){
		        layer.msg('的确很重要', {icon: 1});
		      }, function(){
		        layer.msg('也可以这样', {
		          time: 20000, //20s后自动关闭
		          btn: ['明白了', '知道了']
		        });
		      });
		    }
		    ,test3: function(){
		      layer.msg('玩命提示中');
		    }
		    ,test4: function(){
		      layer.tips('Hi，我是一个提示', this, {tips: 1});
		    }
		    ,test5: function(){
		       layer.open({
		        title:'页面层'
		        ,type: 1
		        //,skin: 'layui-layer-rim'
		        ,shadeClose: true
		        ,area: ['700px', '500px']
		        ,content: '<div style="padding: 20px;">放入任意HTML</div>'
		      });
		    }
		    ,test6: function(){
		      layer.open({
		        type: 2
		        ,content: 'http://fly.layui.com/'
		        ,shadeClose: true
		        ,area: ['375px', '500px']
		        ,maxmin: true
		      });
		    }
		    ,test7: function(){
		      layer.prompt({title: '输入任何口令，并确认', formType: 1}, function(pass, index){
		        layer.close(index);
		        layer.prompt({title: '随便写点啥，并确认', formType: 2}, function(text, index){
		          layer.close(index);
		          layer.msg('演示完毕！您的口令：'+ pass +'<br>您最后写下了：'+text);
		        });
		      });
		    }
		    ,test8: function(){
		      layer.tab({
		        area: ['600px', '300px'],
		        tab: [{
		          title: 'TAB1', 
		          content: '<div style="padding:20px;">内容1</div>'
		        }, {
		          title: 'TAB2', 
		          content: '<div style="padding:20px;">内容2</div>'
		        }]
		      });
		    }
		    ,test9: function(){
		        layer.photos({
			          photos: photoJson //格式见API文档手册页
			        });
		    }
		    /**
		    ,test10: function(){
		      var icon = -1;
		      (function changeIcon(){
		        var index = layer.alert('Hi，你好！ 点击确认更换图标', {
		          icon: icon,
		          shadeClose: true,
		          title: icon === -1 ? '初体验 - layer '+layer.v : 'icon：'+icon + ' - layer '+layer.v
		        }, changeIcon);
		        if(8 === ++icon) layer.close(index);
		      }());
		    }
		    ,test11: function(){
		      layer.confirm('真的吗？', function(index){
		        layer.msg('哦')
		        layer.close(index);
		      });
		    }
		    ,test12: function(){
		      layer.msg('玩了命提示中');
		    }
		    ,test13: function(){
		      //墨绿深蓝风
		      layer.alert('墨绿风格，点击确认看深蓝', {
		        skin: 'layui-layer-molv'
		        ,closeBtn: 0
		      }, function(){
		        layer.alert('偶吧深蓝style', {
		          skin: 'layui-layer-lan'
		          ,closeBtn: 0
		          ,anim: 4
		        });
		      });
		    }
		    ,test14: function(){
		      layer.open({
		        type: 1,
		        shade: false,
		        title: false,
		        content: $('.demo-component-layer'),
		        cancel: function(){
		          setTimeout(function(){
		            layer.tips('捕获就是从页面已经存在的元素上，包裹 layer 的结构，从而弹出显示。是不是比较好玩呢？', '.demo-component-layer', {
		              tips: 3, time: 5000
		            });
		          }, 300);
		        }
		      });
		    }
		    ,test15: function(){
		      layer.open({
		        type: 1,
		        skin: 'layui-layer-rim',
		        area: ['420px', '240px'],
		        content: '<div style="padding: 10px;">任意html内容</div>'
		      });
		    }
		    ,test16: function(){
		      layer.open({
		        type: 1,
		        skin: 'layui-layer-admin',
		        closeBtn: false,
		        area: '350px',
		        anim: 5,
		        shadeClose: true,
		        content: '<div style="padding:20px;">即传入skin:"样式名"，然后你就可以为所欲为了。你怎么样给她整容都行</div>'
		      });
		    }
		    ,test17: function(){
		      layer.tips('Hi，我是tips', this, {
		        tips: 1
		      });
		    }
		    ,test18: function(){
		      layer.tips('我是另外一个tips，只不过我长得跟之前那位稍有些不一样。', this, {
		        tips: [3, '#2F9688'],
		        time: 4000
		      });
		    }
		    ,test19: function(){
		      layer.open({
		        type: 2,
		        title: '贤心博客',
		        shadeClose: true,
		        shade: 0.8,
		        area: ['375px', '500px'],
		        content: 'http://sentsin.com/'
		      }); 
		    }
		    ,test20: function(){
		      layer.open({
		        type: 2,
		        title: '百度一下',
		        shade: false,
		        maxmin: true,
		        area: ['90%', '90%'],
		        content: 'http://www.baidu.com/'
		      });
		    }
		    ,test21: function(){
		      var ii = layer.load(0, {shade: false});
		      setTimeout(function(){
		        layer.close(ii)
		      }, 3000);
		    }
		    ,test22: function(){
		      var iii = layer.load(1, {
		        shade: [0.1,'#fff']
		      });
		      setTimeout(function(){
		        layer.close(iii)
		      }, 3000);
		    }
		    ,test23: function(){
		      layer.prompt({title: '写点什么吧'}, function(value, index){
		        layer.msg('你写下了：'+ value, {
		          icon: 6
		          ,shade: 0.9
		        }, function(){
		          layer.close(index);
		        });
		      });
		    }
		    
		    ,test26: function(){
		      layer.alert('见到你真的很高兴', {icon: 6});
		    }
		    ,test27: function(){
		      layer.msg('你确定你很帅么？', {
		        time: 0 //不自动关闭
		        ,btn: ['必须啊', '丑到爆']
		        ,yes: function(index){
		          layer.close(index);
		          layer.msg('雅蠛蝶 O.o', {
		            icon: 6
		            ,time: 0
		            ,btn: ['嗷','嗷','嗷']
		          });
		        }
		      });
		    }
		    ,test28: function(){
		      layer.msg('这是最常用的吧');
		    }
		    ,test29: function(){
		      layer.msg('并不十分开心。。', {icon: 5});
		    }
		    ,test30: function(){
		      layer.msg('玩命卖萌中', function(){
		        layer.msg('卖完了');
		      });
		    }
		    ,test31: function(){
		      layer.confirm('真的删除吗？', function(){
		        layer.msg('正在删除', {icon: 16}, function(){
		          layer.msg('成功删除', {icon: 1})
		        });
		      });
		    }
		    
		    ,test33: function(){
		      layer.open({
		        type: 1,
		        title: false,
		        closeBtn: 0,
		        shadeClose: true,
		        skin: 'yourClass',
		        content: '<div style="padding: 20px; width: 260px; height: 180px;">自定义HTML内容</div>'
		      });
		    }
		   
		    ,test35: function(){
		      layer.open({
		        type: 2,
		        area: ['700px', '450px'],
		        fixed: false,
		        maxmin: true,
		        content: layui.setter.base + 'views/iframe/layer/iframe.html'
		      });
		    }
		    ,test36: function(){
		      layer.open({
		        type: 2,
		        area: ['360px', '500px'],
		        skin: 'layui-layer-rim',
		        content: ['http://sentsin.com/', 'no']
		      });
		    }
		    ,test37: function(){
		      layer.load();
		      setTimeout(function(){
		        layer.closeAll('loading');
		      }, 2000);
		    }
		    ,test38: function(){
		      layer.load(1);
		      setTimeout(function(){
		        layer.closeAll('loading');
		      }, 2000);
		    }
		    ,test39: function(){
		      layer.load(2);
		      setTimeout(function(){
		        layer.closeAll('loading');
		      }, 2000);
		    }
		    ,test40: function(){
		      layer.msg('加载中', {
		        icon: 16
		        ,shade: 0.01
		      });
		    }
		    ,test41: function(){
		      layer.tips('上', this, {
		        tips: [1, '#000']
		      });
		    }
		    ,test42: function(){
		      layer.tips('默认就是向右的，3秒后关闭', this);
		    }
		    ,test43: function(){
		      layer.tips('下', this, {
		        tips: 3
		      });
		    }
		    ,test44: function(){
		      layer.tips('在很久很久以前，在很久很久以前，在很久很久以前……', this, {
		        tips: [4, '#78BA32']
		      });
		    }
		    ,test45: function(){
		      layer.tips('不会销毁之前的', this, {tipsMore: true});
		    }

		    ,test47: function(){
		      var index = layer.open({
		        type: 2,
		        content: 'http://baidu.com',
		        area: ['300px', '300px'],
		        maxmin: true
		      });
		      layer.full(index);
		    }
		    ,test48: function(){
		      layer.msg('灵活运用 offset', {
		        offset: 't',
		        anim: 6
		      });
		    }
		    */
		  };
		  

	$('#layerTypeDemo .layui-btn').on('click', function() {
			var type = $(this).data('type');
			ate[type] && ate[type].call(this);
		});
	
	var photoJson = {
	    	  "code": 0,
	    	  "msg": "",
	    	  "title": "JSON请求的相册",
	    	  "id": 8,
	    	  "start": 0,
	    	  "data": [
	    	    {
	    	      "alt": "layer",
	    	      "pid": 109,
	    	      "src": "https://wx4.sinaimg.cn/mw1024/5db11ff4gy1fmx4keaw9pj20dw08caa4.jpg",
	    	      "thumb": ""
	    	    },
	    	    {
	    	      "alt": "说好的，一起Fly",
	    	      "pid": 110,
	    	      "src": "https://wx4.sinaimg.cn/mw1024/5db11ff4gy1fmx4kebemcj20ga09saa1.jpg",
	    	      "thumb": ""
	    	    },
	    	    {
	    	      "alt": "佟丽娅女神",
	    	      "pid": 111,
	    	      "src": "https://wx2.sinaimg.cn/mw690/5db11ff4gy1fmx4kec5bvj20eb0h3mxh.jpg",
	    	      "thumb": ""
	    	    },
	    	    {
	    	      "alt": "凤姐是个好人",
	    	      "pid": 112,
	    	      "src": "https://wx3.sinaimg.cn/mw690/5db11ff4gy1fmx4kec9vuj20b20dwmyk.jpg",
	    	      "thumb": ""
	    	    },
	    	    {
	    	      "alt": "星空如此深邃",
	    	      "pid": 113,
	    	      "src": "https://wx3.sinaimg.cn/mw690/5db11ff4gy1fmx4keca8ag208g06iglw.gif",
	    	      "thumb": ""
	    	    }
	    	  ]
	    	};
});
</script>	
	</body>
</html>