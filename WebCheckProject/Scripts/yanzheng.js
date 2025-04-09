

document.getElementById('TextBox27').addEventListener('blur', function () {
	// 调用上面定义的验证函数（尽管在这个简单的示例中，验证逻辑已经包含在submit事件监听器中）
	if (this.value.trim() === '') {
		alert('日期不能为空，请参考格式yyyy-MM-dd！');
	}
});

