layui.use(['form','layer','jquery','laydate','eaf'],function(){
	var form = layui.form, layer = layui.layer, laydate = layui.laydate;
	var $ = layui.$;
	var eaf = layui.eaf;		

	laydate.render({
		elem : '#txt_birthDate', max : eaf.dateFormat(new Date(),"yyyy-MM-dd")
	});
	laydate.render({
		elem : '#txt_startTime'
	});	

 	form.on("submit(save)", function(data) {
		var jsonDataExt = 'isNew:' + isNew;
		var formData = eaf.getBinding($('.layui-form'), jsonDataExt);

		// 弹出loading
		var index = top.layer.msg('数据提交中，请稍候…', {
			icon : 16,
			time : 500,
			shade : 0.8
		}, function() {
			$.post("rest/student/save", formData, function(data) {
				// alert("Data Loaded: " + data);
				top.layer.close(index);
				top.layer.msg("操作成功！", {
					icon : 1,
					time : 800
				// 0.5秒关闭（如果不配置，默认是3秒）
				}, function() {
					layer.closeAll("iframe");
					// 刷新父页面
					parent.location.reload();
				});
			});
		});
		return false;
	})
 	
 	var isNew = false;
 	
	$(document).ready(function() {
		var studentData = JSON.parse(window.sessionStorage.getItem("studentData"));
		if(null == studentData){
			isNew = true;
		}else{
			eaf.setData($('.layui-form'), studentData);
			form.render();
		}
//		layer.alert('选中数据：' + window.sessionStorage.getItem("studentData"));
//		layer.alert('读取数据：' + JSON.stringify(eaf.getBinding($('.layui-form'))));
	});		 	
})

//格式化时间
function formatTime(_time){
    var year = _time.getFullYear();
    var month = _time.getMonth()+1<10 ? "0"+(_time.getMonth()+1) : _time.getMonth()+1;
    var day = _time.getDate()<10 ? "0"+_time.getDate() : _time.getDate();
    var hour = _time.getHours()<10 ? "0"+_time.getHours() : _time.getHours();
    var minute = _time.getMinutes()<10 ? "0"+_time.getMinutes() : _time.getMinutes();
    return year+"-"+month+"-"+day+" "+hour+":"+minute;
}
