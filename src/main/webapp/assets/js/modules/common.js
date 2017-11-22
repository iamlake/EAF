layui.define([ 'jquery' ], function(exports) {
	var $ = layui.jquery;
	var obj = {
		/**
		 * 获得form中控件的值返回JSON对象
		 * 相同的checkbox用分号拼接起来
		 * @param {formObj} 指定的选择器
		 * @param {jsonExt} 需要拼接在后面的Json对象
		 * @method getBinding
		 * @author Liyiming
		 * */
		getBinding : function(formObj, jsonDataExt) {
			var dataBinding = {}, array = formObj.serializeArray();
			$(array).each(function() {
				if (dataBinding[this.name]) {
					dataBinding[this.name] += ';' + this.value;
				} else {
					dataBinding[this.name] = this.value;
				}
			});

			if (jsonDataExt != undefined) {
				var extArray = jsonDataExt.split(';');
				$(extArray).each(function() {
					var extSplitArray = this.split(':');
					dataBinding[extSplitArray[0]] = extSplitArray[1];
				});
			}
			return dataBinding;
		},

		/**
		 * 将Json对象赋值给form
		 * @param {formObj} 指定的选择器
		 * @param {jsonValue} 需要给form赋值的json对象
		 * @method setData
		 * @author Liyiming
		 * */
		setData : function(formObj, jsonData) {
			$.each(jsonData, function(name, ival) {
				var $oinput = formObj.find("input[name=" + name + "]");
				if ($oinput.attr("type") == "checkbox") {
					if (ival !== null) {
						var checkboxObj = $("[name=" + name + "]");
						var checkArray = ival.split(";");
						for (var i = 0; i < checkboxObj.length; i++) {
							for (var j = 0; j < checkArray.length; j++) {
								if (checkboxObj[i].value == checkArray[j]) {
									checkboxObj[i].click();
								}
							}
						}
					}
				} else if ($oinput.attr("type") == "radio") {
					$oinput.each(function() {
						var radioObj = $("[name=" + name + "]");
						for (var i = 0; i < radioObj.length; i++) {
							if (radioObj[i].value == ival) {
								radioObj[i].click();
							}
						}
					});
				} else if ($oinput.attr("type") == "textarea") {
					formObj.find("[name=" + name + "]").html(ival);
				} else {
					formObj.find("[name=" + name + "]").val(ival);
				}
			})
		},
		
		/**
		 * 月(M)、日(d)、小时(h)、分(m)、秒(s)、季度(q) 可以用 1-2 个占位符，
		 * 年(y)可以用 1-4 个占位符，毫秒(S)只能用 1 个占位符(是 1-3 位的数字)
		 * Examples:
		 * dateFormat("2016-10-04 8:9:4.423","yyyy-MM-dd hh:mm:ss.S")		==> 2016-10-04 08:09:04.423
		 * dateFormat("1507353913000","yyyy-M-d h:m:s.S")								==> 2017-10-7 13:25:13.0
		 * @param {datetime} 指定的选择器
		 * @param {pattern} 需要给form赋值的json对象
		 * @method dateFormat
		 * @author Liyiming
		 * */		
		dateFormat : function(datetime, pattern) {
			console.log(parseInt(datetime));
			if (parseInt(datetime) == datetime) {
				if (datetime.length == 10) {
					datetime = parseInt(datetime) * 1000;
				} else if (datetime.length == 13) {
					datetime = parseInt(datetime);
				}
			}
			datetime = new Date(datetime);
			var o = {
				"M+" : datetime.getMonth() + 1, // 月份
				"d+" : datetime.getDate(), // 日
				"h+" : datetime.getHours(), // 小时
				"m+" : datetime.getMinutes(), // 分
				"s+" : datetime.getSeconds(), // 秒
				"q+" : Math.floor((datetime.getMonth() + 3) / 3), // 季度
				"S" : datetime.getMilliseconds()
			// 毫秒
			};
			if (/(y+)/.test(pattern))
				pattern = pattern.replace(RegExp.$1,  (datetime.getFullYear() + "").substr(4 - RegExp.$1.length));
			for ( var k in o)
				if (new RegExp("(" + k + ")").test(pattern))
					pattern = pattern.replace(RegExp.$1,  (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
			return pattern;
		}
	};
	
	exports('common', obj);
});