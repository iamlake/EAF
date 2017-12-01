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
		}		

	};
	
	exports('eaf', obj);
});