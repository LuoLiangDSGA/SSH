var model = avalon.define({
	$id : "UserController",
	dataList : {},
	title : '分类管理',
	limit : 20,
	currentPage : 1,
	pageCount : 0,
	pageList : 0,
	User : {
		name : "",
		password : ""
	},
	login : function() {
		$.ajax({
			type : "POST", // 提交方式
			url : "UserLogin",// 路径
			data : {
				name : model.User.name,
				passwored : model.User.password

			},// 数据，这里使用的是Json格式进行传输
			success : function(result) {// 返回数据根据结果进行相应的处理
				// var obj = eval(result);
				var date = jQuery.parseJSON(result);
				if (date.success == true) {

					location.href = "http://localhost:8080/SSH/User-Index1";
				} else {
					swal("账号或密码错误!");
				}

			}
		});

	},
	load : function() {

	},

});