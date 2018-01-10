var $,tab,skyconsWeather;
if (window.sessionStorage.getItem("curapp") == null)
	window.sessionStorage.setItem("curapp", "1");
layui.use(['bodyTab','form','element','layer','jquery','linq'],function(){
	var form = layui.form,
		layer = layui.layer,
		element = layui.element,
		linq = layui.linq;
		$ = layui.jquery;
		
		tab = layui.bodyTab({
			openTabNum : "20",  //最大可打开窗口数量
			url : "rest/menu/"+window.sessionStorage.getItem("curapp") //获取菜单json地址
		});

	$(document).ready(function() {
		$('iframe').attr('src', 'rest/page/dashboard');
	});	
	
	//更换皮肤
	function skins(){
		var skin = window.sessionStorage.getItem("skin");
		if(skin){  //如果更换过皮肤
			if(window.sessionStorage.getItem("skinValue") != "自定义"){
				$("body").addClass(window.sessionStorage.getItem("skin"));
			}else{
				$(".layui-layout-admin .layui-header").css("background-color",skin.split(',')[0]);
				$(".layui-bg-black").css("background-color",skin.split(',')[1]);
				$(".hideMenu").css("background-color",skin.split(',')[2]);
			}
		}
	}
	skins();
	$(".changeSkin").click(function(){
		layer.open({
			title : "更换皮肤",
			area : ["310px","280px"],
			type : "1",
			content : '<div class="skins_box">'+
						'<form class="layui-form">'+
							'<div class="layui-form-item">'+
								'<input type="radio" name="skin" value="默认" title="默认" lay-filter="default" checked="">'+
								'<input type="radio" name="skin" value="橙色" title="橙色" lay-filter="orange">'+
								'<input type="radio" name="skin" value="蓝色" title="蓝色" lay-filter="blue">'+
								'<input type="radio" name="skin" value="自定义" title="自定义" lay-filter="custom">'+
								'<div class="skinCustom">'+
									'<input type="text" class="layui-input topColor" name="topSkin" placeholder="顶部颜色" />'+
									'<input type="text" class="layui-input leftColor" name="leftSkin" placeholder="左侧颜色" />'+
									'<input type="text" class="layui-input menuColor" name="btnSkin" placeholder="顶部菜单按钮" />'+
								'</div>'+
							'</div>'+
							'<div class="layui-form-item skinBtn">'+
								'<a href="javascript:;" class="layui-btn layui-btn-sm layui-btn-normal" lay-submit="" lay-filter="changeSkin">确定更换</a>'+
								'<a href="javascript:;" class="layui-btn layui-btn-sm layui-btn-primary" lay-submit="" lay-filter="noChangeSkin">我再想想</a>'+
							'</div>'+
						'</form>'+
					'</div>',
			success : function(index, layero){
				var skin = window.sessionStorage.getItem("skin");
				if(window.sessionStorage.getItem("skinValue")){
					$(".skins_box input[value="+window.sessionStorage.getItem("skinValue")+"]").attr("checked","checked");
				};
				if($(".skins_box input[value=自定义]").attr("checked")){
					$(".skinCustom").css("visibility","inherit");
					$(".topColor").val(skin.split(',')[0]);
					$(".leftColor").val(skin.split(',')[1]);
					$(".menuColor").val(skin.split(',')[2]);
				};
				form.render();
				$(".skins_box").removeClass("layui-hide");
				$(".skins_box .layui-form-radio").on("click",function(){
					var skinColor;
					if($(this).find("span").text() == "橙色"){
						skinColor = "orange";
					}else if($(this).find("span").text() == "蓝色"){
						skinColor = "blue";
					}else if($(this).find("span").text() == "默认"){
						skinColor = "";
					}
					if($(this).find("span").text() != "自定义"){
						$(".topColor,.leftColor,.menuColor").val('');
						$("body").removeAttr("class").addClass("main_body "+skinColor+"");
						$(".skinCustom").removeAttr("style");
						$(".layui-bg-black,.hideMenu,.layui-layout-admin .layui-header").removeAttr("style");
					}else{
						$(".skinCustom").css("visibility","inherit");
					}
				})
				var skinStr,skinColor;
				$(".topColor").blur(function(){
					$(".layui-layout-admin .layui-header").css("background-color",$(this).val());
				})
				$(".leftColor").blur(function(){
					$(".layui-bg-black").css("background-color",$(this).val());
				})
				$(".menuColor").blur(function(){
					$(".hideMenu").css("background-color",$(this).val());
				})

				form.on("submit(changeSkin)",function(data){
					if(data.field.skin != "自定义"){
						if(data.field.skin == "橙色"){
							skinColor = "orange";
						}else if(data.field.skin == "蓝色"){
							skinColor = "blue";
						}else if(data.field.skin == "默认"){
							skinColor = "";
						}
						window.sessionStorage.setItem("skin",skinColor);
					}else{
						skinStr = $(".topColor").val()+','+$(".leftColor").val()+','+$(".menuColor").val();
						window.sessionStorage.setItem("skin",skinStr);
						$("body").removeAttr("class").addClass("main_body");
					}
					window.sessionStorage.setItem("skinValue",data.field.skin);
					layer.closeAll("page");
				});
				form.on("submit(noChangeSkin)",function(){
					$("body").removeAttr("class").addClass("main_body "+window.sessionStorage.getItem("skin")+"");
					$(".layui-bg-black,.hideMenu,.layui-layout-admin .layui-header").removeAttr("style");
					skins();
					layer.closeAll("page");
				});
			},
			cancel : function(){
				$("body").removeAttr("class").addClass("main_body "+window.sessionStorage.getItem("skin")+"");
				$(".layui-bg-black,.hideMenu,.layui-layout-admin .layui-header").removeAttr("style");
				skins();
			}
		})
	})

	//退出
	$(".signOut").click(function(){
		window.sessionStorage.removeItem("menu");
		menu = [];
		window.sessionStorage.removeItem("curmenu");
		window.sessionStorage.removeItem("curapp");
	})

	//隐藏左侧导航
	$(".hideMenu").click(function(){
		$(".layui-layout-admin").toggleClass("showMenu");
		//渲染顶部窗口
		tab.tabMove();
	})

	//渲染左侧菜单
	tab.render();

	//锁屏
	function lockPage() {
		layer.open({
			title : false,
			type : 1,
			content : '	<div class="admin-header-lock" id="lock-box">'
					+ '<div class="admin-header-lock-img"><img src="'
					+ loginUser.userHead
					+ '"/></div>'
					+ '<div class="admin-header-lock-name" id="lockUserName">'
					+ loginUser.fullname
					+ '</div>'
					+ '<div class="input_btn">'
					+ '<input type="password" class="admin-header-lock-input layui-input" autocomplete="off" placeholder="请输入密码解锁.." name="lockPwd" id="lockPwd" />'
					+ '<button class="layui-btn" id="unlock">解锁</button>'
					+ '</div>'
					+ '</div>',
			closeBtn : 0,
			shade : 0.9
		})
		$(".admin-header-lock-input").focus();
	}
	$(".lockcms").on("click",function(){
		window.sessionStorage.setItem("lockcms", true);
		lockPage();
	})
	// 判断是否显示锁屏
	if(window.sessionStorage.getItem("lockcms") == "true"){
		lockPage();
	}
	// 解锁
	$("body").on("click","#unlock",function(){
		var lockinput = $(this).siblings(".admin-header-lock-input");
		if(lockinput.val() == ''){
			layer.msg("请输入解锁密码！");
			lockinput.focus();
		}else{
			$.get("rest/user/" + loginUser.account,
				function(result) {
					if(result.code == '0'){
						if(lockinput.val() == result.data[0].password){
							window.sessionStorage.setItem("lockcms",false);
							lockinput.val('');
							layer.closeAll("page");
						}else{
							layer.msg("密码错误，请重新输入！");
							lockinput.val('').focus();
						}
					}else{
						layer.msg("请刷新页面后重试！");
						lockinput.val('').focus();
					}
				}
			);
		}
	});
	$(document).on('keydown', function() {
		if(event.keyCode == 13) {
			$("#unlock").click();
		}
	});
	
	//切换应用
	changeApp = function(id) {
		//alert("选中app_id是：" + id);
		window.sessionStorage.setItem("curapp", id);
		//渲染左侧菜单
		//tab.render();
		window.sessionStorage.removeItem("menu");
		menu = [];
		window.sessionStorage.removeItem("curmenu");
		window.location.href = basePath + "rest/page/index";
	}
	
	function apps() {
		$.get("assets/json/apps.json", function(data) {
			var innerhtml = '<div class="layui-layer layui-layer-page more-app"'
				+ ' id="layui-layer68" type="page" times="68" showtime="0" contype="string"'
				+ ' style="background-color: rgba(0,0,0,0.7);'
				+ ' z-index: 19891082; width: 100%; top: 0px; left: 0px;">'
				+ '<div id="" class="layui-layer-content">'
				+ '<ul class="more-app-color">';
		
			if(data.length < 1)
				return null;
					
			linq.from(data).forEach(function(value, index){
				innerhtml += '<li style="background-color: '+value.style+'">';
				innerhtml += '<a href="javascript:;" onclick=changeApp(\''+value.app_id+'\')>';
				innerhtml += '<p>'+value.title+'<p>';
				innerhtml += '<p tips>'+value.remark+'</p>';
				innerhtml += '</a>';
				innerhtml += '</li>';				
			 });
			innerhtml += '</ul></div>'
					+ '<span class="layui-layer-setwin"></span>'
					+ '</div>';
	  
			layer.open({
				type : 1,
				title : false,
				offset: 't',
				anim: 1,
				closeBtn : 0,
				shadeClose : true,
				skin : 'layui-layer-nobg',
				content : innerhtml
			});			
		})
	}
	$(".moreApps").on("click",function(){
		apps();
	})

	//手机设备的简单适配
	var treeMobile = $('.site-tree-mobile'),
		shadeMobile = $('.site-mobile-shade')

	treeMobile.on('click', function(){
		$('body').addClass('site-mobile');
	});

	shadeMobile.on('click', function(){
		$('body').removeClass('site-mobile');
	});

	// 添加新窗口
	$("body").on("click",".layui-nav .layui-nav-item a",function(){
		//如果不存在子级
		if($(this).siblings().length == 0){
			addTab($(this));
			$('body').removeClass('site-mobile');  //移动端点击菜单关闭菜单层
		}
		$(this).parent("li").siblings().removeClass("layui-nav-itemed");
	})

	//公告层
	function showNotice(){
		layer.open({
	        type: 1,
	        title: "系统公告",
	        closeBtn: false,
	        area: '310px',
	        shade: 0.8,
	        id: 'LAY_layuipro',
	        btn: ['火速围观'],
	        moveType: 1,
	        content: '<div style="padding:15px 20px; text-align:justify; line-height: 22px; text-indent:2em;border-bottom:1px solid #e2e2e2;"><p>最近一直在考虑前端框架选型，某次我偶然通过下载云码网站分享的larryCMS模板，最后找到了贤心大神的LayUI官网，瞬间让我觉得眼前一亮，这就是我想要的。很早之前就想着手搭建一套项目框架，但苦于没有时间，最初前端选型是考虑Metronic，但bootstrop代码的冗余很大，自己本来就不擅长前端，所以一直搁置了下来，直到遇到了LayUI我才又燃起了斗志。由于最初只是为了体验，所以后台代码也没有设计成多大的格局，直到现在也只是考虑简单、可用，为主要目的。我也希望后续有更多的时间和精力将它逐步完善。由于从着手去做到现在的规模，只有1个多月的时间，很多不足之处，也请大家给予指正。</p><p>它山之石可以攻玉。开发过程中我参考了很多JeeSite和Quick4J的设计思想，组织权限表也参考了UniEAP的设计，另外整个前端模板都是基于LayuiCMS，在此特别感谢相关作者，后续也希望多多指教。</p></div>',
	        success: function(layero){
				var btn = layero.find('.layui-layer-btn');
				btn.css('text-align', 'center');
				btn.on("click",function(){
					window.sessionStorage.setItem("showNotice","true");
				})
				if($(window).width() > 432){  //如果页面宽度不足以显示顶部“系统公告”按钮，则不提示
					btn.on("click",function(){
						layer.tips('系统公告躲在了这里', '#showNotice', {
							tips: 3
						});
					})
				}
	        }
	    });
	}
	//判断是否处于锁屏状态(如果关闭以后则未关闭浏览器之前不再显示)
	if(window.sessionStorage.getItem("lockcms") != "true" && window.sessionStorage.getItem("showNotice") != "true"){
		showNotice();
	}
	$(".showNotice").on("click",function(){
		showNotice();
	})

	//刷新后还原打开的窗口
	if(window.sessionStorage.getItem("menu") != null){
		menu = JSON.parse(window.sessionStorage.getItem("menu"));
		curmenu = window.sessionStorage.getItem("curmenu");
		var openTitle = '';
		for(var i=0;i<menu.length;i++){
			openTitle = '';
			if(menu[i].icon){
				if(menu[i].icon.split("-")[0] == 'icon'){
					openTitle += '<i class="iconfont '+menu[i].icon+'"></i>';
				}else{
					openTitle += '<i class="layui-icon">'+menu[i].icon+'</i>';
				}
			}
			openTitle += '<cite>'+menu[i].title+'</cite>';
			openTitle += '<i class="layui-icon layui-unselect layui-tab-close" data-id="'+menu[i].layId+'">&#x1006;</i>';
			element.tabAdd("bodyTab",{
				title : openTitle,
		        content :"<iframe src='"+menu[i].href+"' data-id='"+menu[i].layId+"'></frame>",
		        id : menu[i].layId
			})
			//定位到刷新前的窗口
			if(curmenu != "undefined"){
				if(curmenu == '' || curmenu == "null"){  //定位到后台首页
					element.tabChange("bodyTab",'');
				}else if(JSON.parse(curmenu).title == menu[i].title){  //定位到刷新前的页面
					element.tabChange("bodyTab",menu[i].layId);
				}
			}else{
				element.tabChange("bodyTab",menu[menu.length-1].layId);
			}
		}
		//渲染顶部窗口
		tab.tabMove();
	}

	//刷新当前
	$(".refresh").on("click",function(){  //此处添加禁止连续点击刷新一是为了降低服务器压力，另外一个就是为了防止超快点击造成chrome本身的一些js文件的报错(不过貌似这个问题还是存在，不过概率小了很多)
		if($(this).hasClass("refreshThis")){
			$(this).removeClass("refreshThis");
			$(".clildFrame .layui-tab-item.layui-show").find("iframe")[0].contentWindow.location.reload(true);
			setTimeout(function(){
				$(".refresh").addClass("refreshThis");
			},2000)
		}else{
			layer.msg("您点击的速度超过了服务器的响应速度，还是等两秒再刷新吧！");
		}
	})

	//关闭其他
	$(".closePageOther").on("click",function(){
		if($("#top_tabs li").length>2 && $("#top_tabs li.layui-this cite").text()!="后台首页"){
			var menu = JSON.parse(window.sessionStorage.getItem("menu"));
			$("#top_tabs li").each(function(){
				if($(this).attr("lay-id") != '' && !$(this).hasClass("layui-this")){
					element.tabDelete("bodyTab",$(this).attr("lay-id")).init();
					//此处将当前窗口重新获取放入session，避免一个个删除来回循环造成的不必要工作量
					for(var i=0;i<menu.length;i++){
						if($("#top_tabs li.layui-this cite").text() == menu[i].title){
							menu.splice(0,menu.length,menu[i]);
							window.sessionStorage.setItem("menu",JSON.stringify(menu));
						}
					}
				}
			})
		}else if($("#top_tabs li.layui-this cite").text()=="后台首页" && $("#top_tabs li").length>1){
			$("#top_tabs li").each(function(){
				if($(this).attr("lay-id") != '' && !$(this).hasClass("layui-this")){
					element.tabDelete("bodyTab",$(this).attr("lay-id")).init();
					window.sessionStorage.removeItem("menu");
					menu = [];
					window.sessionStorage.removeItem("curmenu");
				}
			})
		}else{
			layer.msg("没有可以关闭的窗口了@_@");
		}
		//渲染顶部窗口
		tab.tabMove();
	})
	//关闭全部
	$(".closePageAll").on("click",function(){
		if($("#top_tabs li").length > 1){
			$("#top_tabs li").each(function(){
				if($(this).attr("lay-id") != ''){
					element.tabDelete("bodyTab",$(this).attr("lay-id")).init();
					window.sessionStorage.removeItem("menu");
					menu = [];
					window.sessionStorage.removeItem("curmenu");
				}
			})
		}else{
			layer.msg("没有可以关闭的窗口了@_@");
		}
		//渲染顶部窗口
		tab.tabMove();
	})
})

//打开新窗口
function addTab(_this){
	tab.tabAdd(_this);
}

//捐赠弹窗
function donation(){
	layer.tab({
		area : ['260px', '367px'],
		tab : [{
			title : "微信",
			content : "<div style='padding:30px;overflow:hidden;background:#d2d0d0;'><img src='assets/images/pay4wechat.jpg'></div>"
		},{
			title : "支付宝",
			content : "<div style='padding:30px;overflow:hidden;background:#d2d0d0;'><img src='assets/images/pay4alipay.jpg'></div>"
		}]
	})
}