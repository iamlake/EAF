layui.use(['form','layer','jquery','laydate','util','elf'],function(){
	var form = layui.form, layer = layui.layer, laydate = layui.laydate, util = layui.util;
	var $ = layui.$, elf = layui.elf;
	var isNew = false;

	laydate.render({
		elem : '#txt_birthDate', max : util.toDateString(new Date(),"yyyy-MM-dd")
	});
	laydate.render({
		elem : '#txt_startTime'
	});	

 	form.on("submit(save)", function(data) {
 		var ext = 'isNew:' + isNew;
		if (!isNew) {
			ext += ';_method:put';
		}
		var formData = elf.getBinding($('.layui-form'), ext);
		// 弹出loading
		var index = top.layer.msg('数据提交中，请稍候…', {
			icon : 16,
			time : 500,
			shade : 0.8
		}, function() {
			$.ajax({
				url : 'rest/student/',
				type : 'POST',
			    data : formData,					
			    success: function(result) {
					top.layer.close(index);
					top.layer.msg(result.msg, {
						icon : 1,
						time : 800
					// 0.5秒关闭（如果不配置，默认是3秒）
					}, function() {
						layer.closeAll("iframe");
						// 刷新父页面
						parent.location.reload();
					});
				}
			});	
		});
		return false;
	})
 	
	$(document).ready(function() {
		var studentData = JSON.parse(window.sessionStorage.getItem("studentData"));
		if(null == studentData){
			isNew = true;
		}else{
			elf.setData($('.layui-form'), studentData);
			form.render();
		}
	});		 	
})