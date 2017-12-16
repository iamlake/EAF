layui.use([ 'form', 'layer' ], function() {
	var form = layui.form,
		layer = parent.layer === undefined ? layui.layer : parent.layer,
 		$ = layui.jquery, active = {
			changeImage : function() {
				var time = new Date().getTime();
				$('.kaptchaImage').attr("src", "images/kaptcha.jpg?t=" + time);// 为了不让验证码缓存，为了安全起见，需要次次都刷新
			}
		}
	
	// 登录按钮事件
	form.on("submit(login)",function(data){
		$.ajax({
			url : 'rest/user/login',
			type : 'POST',
			data : data.field,
			success : function(result) {
				if(result.code == '0'){
					window.location.href = "rest/page/index";
				}else{
					if (result.msg != null) {
						layer.msg(result.msg, {
							time : 1000,
							icon : 5,
							anim : 6
						});
					}
					active.changeImage();
				}
			}
		});
		return false;
	})
	
    $('.loginform .kaptchaImage').on('click', function() {
		var type = $(this).data('type');
		active[type] ? active[type].call(this) : '';
	});	
	
	// video背景
	$(window).resize(function(){
		if($(".video-player").width() > $(window).width()){
			$(".video-player").css({
				"height" : $(window).height(),
				"width" : "auto",
				"left" : -($(".video-player").width() - $(window).width()) / 2
			});
		}else{
			$(".video-player").css({
				"width" : $(window).width(),
				"height" : "auto",
				"left" : -($(".video-player").width() - $(window).width()) / 2
			});
		}
	}).resize();
})
