/**
 * 获得form中控件的值返回JSON对象
 * 相同的checkbox用分号拼接起来
 * @param {dom} 指定的选择器
 * @param {obj} 需要拼接在后面的Json对象
 * @method getBinding
 * */
$.fn.getBinding = function(jsonExt) {
	var dataBinding = {}, array = this.serializeArray();
	$(array).each(function() {
		if (dataBinding[this.name]) {
			dataBinding[this.name] += ';' + this.value;
		} else {
			dataBinding[this.name] = this.value;
		}
	});

	if (jsonExt != undefined) {
		var extArray = jsonExt.split(';');
		$(extArray).each(function() {
			var extSplitArray = this.split(':');
			dataBinding[extSplitArray[0]] = extSplitArray[1];
		});
	}
	return dataBinding;
};

/**
 * 将Json对象赋值给form
 * @param {dom} 指定的选择器
 * @param {obj} 需要给form赋值的json对象
 * @method setData
 * */
$.fn.setData = function(jsonValue) {
	var obj = this;
	$.each(jsonValue, function(name, ival) {
		var $oinput = obj.find("input[name=" + name + "]");
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
			obj.find("[name=" + name + "]").html(ival);
		} else {
			obj.find("[name=" + name + "]").val(ival);
		}
	})
}
