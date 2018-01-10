layui.use(['layer','table','elf'],function(){
	var layer = parent.layer === undefined ? layui.layer : parent.layer,
		table = layui.table;
	var elf = layui.elf;	
	
	var tableJson ={
		elem : '#table_student',
		data : '',
		cols : [ [ // 标题栏
			{
				checkbox : true,
				LAY_CHECKED : false
			},
			{
				field : 'studentNo',
				title : '学号',
				width : 100,
				sort : true
			},
			{
				field : 'studentName',
				title : '姓名',
				width : 180
			},
			{
				field : 'sex',
				title : '性别',
				width : 100
			},
			{
				field : 'birthDate',
				title : '出生日期',
				width : 150
				//,templet : '<div>{{ layui.elf.dateFormat(d.birthDate,"yyyy-MM-dd")}}</div>'
			},
			{
				field : 'startTime',
				title : '入学时间',
				width : 150
				//,templet : '<div>{{ layui.elf.dateFormat(d.startTime,"yyyy-MM-dd")}}</div>'
			},
			{
				field : 'finishTime',
				title : '毕业时间',
				width : 150
				//,templet : '<div>{{ layui.elf.dateFormat(d.finishTime,"yyyy-MM-dd")}}</div>'
			}, {
				field : 'remark',
				title : '备注',
				width : 320
			}, {
				fixed : 'right',
				title : '操作',
				width : 300,
				align : 'center',
				toolbar : '#barOps'
			} ] ],
		height: 'full-115',
		skin : 'row', //表格风格
		even : true,
		page : true, //是否显示分页
		limits : [ 5, 10, 30, 100 ],
		limit : 10 //每页默认显示的数量
	};

	var $ = layui.$, queryResult, active = {
		getCheckData : function() { // 获取选中数据
			var checkStatus = table.checkStatus('table_student'), data = checkStatus.data;
			return data;
		},
		getCheckLength : function() { // 获取选中数目
			var checkStatus = table.checkStatus('table_student'), data = checkStatus.data;
			//layer.msg('选中了：' + data.length + ' 个');
			return data.length;
		},
		isAll : function() { // 验证是否全选
			var checkStatus = table.checkStatus('table_student');
			layer.msg(checkStatus.isAll ? '全选' : '未全选')
			return checkStatus.isAll;
		},
		doQuery : function() { // 按条件查询
			$.get("rest/student", { 
				'studentNo' : $(".search_stuno").val(), 
				'studentName' : $(".search_stuname").val()
			},function(result) {
				tableJson.data = result.data;
				table.render(tableJson);
			})
		},
		doAdd : function() { // 新增学生
			window.sessionStorage.removeItem("studentData");
			active.forward("添加新生");
		},
		doDelBatch : function() {// 批量删除
			var data = active.getCheckData();
			if (data.length < 1) {
				layer.alert('请至少选择一条记录！', { icon : 0 });
			}else{
				
			}
		},
		forward : function(dialog){
			var index = layui.layer.open({
				title : dialog,
				type : 2,
				//area : ['1024px', '650px'],
				//offset : 'lt',
				//maxmin: true,
				content : "rest/page/sams_student_studentEdit",
				success : function(layero, index){
					setTimeout(function(){
						layui.layer.tips('点击此处返回学生列表', '.layui-layer-setwin .layui-layer-close', {
							tips: 3
						});
					},500)
				}
			})
			//改变窗口大小时，重置弹窗的高度，防止超出可视区域（如F12调出debug的操作）
			$(window).resize(function() {
				setTimeout(function() {
					layui.layer.full(index);
				}, 150)				
			})
			layui.layer.full(index);
		}
	};

	$(document).ready(function() {
		active.doQuery();
	});		
	
	 // 监听表格复选框选择
	table.on('checkbox(student_list)', function(obj) {
		console.log(obj)
	});
	 
	// 监听工具条
	table.on('tool(student_list)', function(obj) {
		var data = obj.data;
		if (obj.event === 'doDetail') {
			layer.msg('姓名：' + data.studentName + ' 的查看操作');
		} else if (obj.event === 'doEdit') {
			window.sessionStorage.setItem("studentData", JSON.stringify(data));
			//layer.alert('当前选中的学生ID是：<br>' + window.sessionStorage.getItem("studentId"));
			//layer.alert('编辑行：<br>' + JSON.stringify(data))
			active.forward("编辑学生");
		} else if (obj.event === 'doDel') {
			layer.confirm('确定要删除"' + data.studentName + '"吗？', {
				icon : 3,
				title : '提示'
			}, function(index) {
				$.ajax({
					url : 'rest/student/' + data.studentId,
					type : 'POST',
					data : {
						_method : "delete"
					},
					success : function(result) {
						layer.close(index);
						layer.msg(result.msg, {
							icon : 1,
							time : 500
						}, function() {
							active.doQuery();
						});
					}
				});
			});
		}
	});
	
    $('.queryform .layui-btn').on('click', function(){
        var type = $(this).data('type');
        active[type] ? active[type].call(this) : '';
	});
    
})