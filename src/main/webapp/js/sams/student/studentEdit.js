layui.use(['form','layer','jquery','laydate','eaf'],function(){
	var form = layui.form, layer = layui.layer, laydate = layui.laydate;
	var $ = layui.$, eaf = layui.eaf;
	var isNew = false;

	laydate.render({
		elem : '#txt_birthDate', max : eaf.dateFormat(new Date(),"yyyy-MM-dd")
	});
	laydate.render({
		elem : '#txt_startTime'
	});	

 	form.on("submit(save)", function(data) {
 		var ext = 'isNew:' + isNew;
		if (!isNew) {
			ext += ';_method:put';
		}
		var formData = eaf.getBinding($('.layui-form'), ext);
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
			eaf.setData($('.layui-form'), studentData);
			form.render();
		}
	});		 	
})