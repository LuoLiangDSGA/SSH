//主页面
var index = avalon.define({
	$id : "indexController",
	dataList : {},
	title : '分类管理',
	limit : 20,
	result : {},
	user : {},
	url : "user/user",
	currentPage : 1,
	pageCount : 0,
	pageList : 0,
	toggle : function(url) {
		$.ajax({
			type : "POST",
			url : url,
			data : {},
			success : function(result) {
				index.result = jQuery.parseJSON(result);
				if (index.result.success == true) {
					index.url = index.result.url;
					if (index.result.url == "Cargoanalysis/Cargoanalysis") {

						Cargoanalysis.load();
						return;
					}

					if (index.result.url == "Cargoanalysis/Incomeanalysis") {

						Incomeanalysis.load();
						return;
					}
					if (index.result.url == "Roal/Roal") {

						Roal.load();
						return;
					}
					if (index.result.url == "UserManger/UserManger") {
						UserManger.load();
						return;
					}

					if (index.result.url == "MarketManage/Stock") {
						Stock.options = jQuery.parseJSON(result).items;
						return;
					}
					if (index.result.url == "MarketManage/MarketManage") {
						MarketManage.dataList = jQuery.parseJSON(result).items;
						MarketManage.load();
						return;

					}

				} else {

				}

			}
		});

	},

	load : function() {
		$.ajax({
			type : "POST",
			url : "User-getcurrentuser",
			data : {},
			success : function(result) {
				var date = jQuery.parseJSON(result);
				index.user = date.item;
				sidear.cheak();
			}
		});
	}

});

// 主页面
var header = avalon.define({
	$id : "header",

	outlogin : function() {
		$.ajax({
			type : "POST",
			url : "User-outlogin",
			data : {},
			success : function(result) {
				var date = jQuery.parseJSON(result);

				location.href = "http://localhost:8080/SSH/User-Index1";
			}
		});
	}

});

// 左边
var sidear = avalon.define({
	$id : "sidear",
	isManager : false,

	cheak : function() {
		if (index.user.role.roleName == "总经理") {
			sidear.isManager = true;
		}
	}
});
// 货物分析
var Cargoanalysis = avalon.define({
	$id : "Cargoanalysis",
	dataList : {},
	limit : 20,
	result : {},
	cheak : "商品类别",
	currentPage : 1,
	pageLimit : 5,
	pageCount : 0,
	pageList : 0,

	load : function() {
		$.ajax({
			type : "POST",
			url : "Analysis-GoodList",
			data : {
				cheak : Cargoanalysis.cheak,
			},
			success : function(result) {

				var date = jQuery.parseJSON(result);
				Cargoanalysis.dataList = date.items;
				// Cargoanalysis.currentPage = date.currentPage;
				// Cargoanalysis.pageCount = date.pageCount;
				Cargoanalysis.graph();
			}
		});

	},
	graph : function() {
		var placeholder = $('#piechart-placeholder').css({
			'width' : '90%',
			'min-height' : '150px'
		});
		var color = new Array("#68BC31", "#2091CF", "#AF4E96", "#DA5430",
				"#FEE074");
		var item = {
			label : "",
			data : "",
			label : "",
			color : ""
		};
		var data = [];

		for (var i = 0; i < Cargoanalysis.dataList.length; i++) {
			var item = {
				label : "",
				data : "",
				color : ""
			};
			item.label = Cargoanalysis.dataList[i].label;
			item.data = Cargoanalysis.dataList[i].data;
			item.color = Cargoanalysis.dataList[i].color;

			data.push(Cargoanalysis.dataList[i]);
		}

		Cargoanalysis.drawPieChart(placeholder, data);

		placeholder.data('chart', data);
		placeholder.data('draw', Cargoanalysis.drawPieChart);

	},

	drawPieChart : function(placeholder, data, position) {
		$.plot(placeholder, data, {
			series : {
				pie : {
					show : true,
					tilt : 0.8,
					highlight : {
						opacity : 0.25
					},
					stroke : {
						color : '#fff',
						width : 2
					},
					startAngle : 2
				}
			},
			legend : {
				show : true,
				position : position || "ne",
				labelBoxBorderColor : null,
				margin : [ -30, 15 ]
			},
			grid : {
				hoverable : true,
				clickable : true
			}
		})
	},

	nextpage : function() {

		Cargoanalysis.currentPage = Cargoanalysis.currentPage + 1;
		Cargoanalysis.load();

	},

	prevpage : function() {

		Cargoanalysis.currentPage = Cargoanalysis.currentPage - 1;
		Cargoanalysis.load();

	}

});
// 收入支出分析
var Incomeanalysis = avalon.define({
	$id : "Incomeanalysis",
	dataList : {},
	limit : 20,
	result : {},
	currentPage : 1,
	pageCount : 0,
	pageList : 0,
	load : function() {
		$.ajax({
			type : "POST",
			url : "Analysis-IncomeList",
			data : {},
			success : function(result) {

				Incomeanalysis.dataList = jQuery.parseJSON(result).items;

				Incomeanalysis.Linetable();
			}
		});

	},

	Linetable : function() {

		var linelist = [];
		for (var i = 0; i < Incomeanalysis.dataList.length; i++) {
			var items = {
				label : "",
				data : []
			};
			items.label = Incomeanalysis.dataList[i].label;
			for (var j = 0; j < Incomeanalysis.dataList[i].data.length; j++) {

				items.data.push([ j + 1, Incomeanalysis.dataList[i].data[j] ]);
				// items.data.push([j,j]);
			}
			linelist.push(items);
		}
		var sdasd = linelist;

		var sales_charts = $('#sales-charts').css({
			'width' : '100%',
			'height' : '220px'
		});
		$.plot("#sales-charts", linelist, {
			hoverable : true,
			shadowSize : 0,
			series : {
				lines : {
					show : true
				},
				points : {
					show : true
				}
			},
			xaxis : {
				tickLength : 0
			},
			yaxis : {
				ticks : 10,
				min : 0,
				max : 5000,
				tickDecimals : 3
			},
			grid : {
				backgroundColor : {
					colors : [ "#fff", "#fff" ]
				},
				borderWidth : 1,
				borderColor : '#555'
			}
		});
	}

});

// 角色管理
var Roal = avalon.define({
	$id : "Roal",
	dataList : {},
	limit : 20,
	result : {},
	currentPage : 1,
	pageCount : 0,
	pageList : 0,
	deleteid : 0,
	addRole : {
		id : 0,
		roleName : "",
		des : ""
	},
	updataRole : {
		id : 0,
		roleName : "",
		des : ""
	},

	load : function() {
		$.ajax({
			type : "POST",
			url : "Roal-RoalList",
			data : {},
			success : function(result) {

				Roal.dataList = jQuery.parseJSON(result).items;

			}
		});

	},
	shouwadd : function() {

		$('#myModal2').modal('show');
	},

	showdelete : function(id) {

		Roal.deleteid = id;
		$('#myModal3').modal('show');
	},
	showUpdata : function(name, des, id) {

		Roal.updataRole.roleName = name;
		Roal.updataRole.des = des;
		Roal.updataRole.id = id;
		$('#myModal').modal('show');
	},
	addrole : function() {
		if ($("#form-field-21").val() == "") {
			swal("请完整填写信息！");
			return;
		}
		if ($("#form-field-22").val() == "") {
			swal("请完整填写信息！");
			return;
		}
		$.ajax({
			type : "POST",
			url : "Roal-add",
			data : {
				id : Roal.addRole.id,
				roleName : Roal.addRole.roleName,
				des : Roal.addRole.des
			},
			success : function(result) {
				var data = jQuery.parseJSON(result);

				if (data.success) {

					$('#myModal2').modal('hide');
					swal(data.msg);
					Roal.load();

				} else {

					$('#myModal2').modal('hide');
					swal(data.msg);
				}

			}
		});
	},

	uodatarole : function() {

		$.ajax({
			type : "POST",
			url : "Roal-updata",
			data : {
				id : Roal.updataRole.id,
				roleName : Roal.updataRole.roleName,
				des : Roal.updataRole.des
			},
			success : function(result) {
				var data = jQuery.parseJSON(result);

				if (data.success) {

					$('#myModal').modal('hide');
					swal(data.msg);
					Roal.load();

				} else {

					$('#myModal').modal('hide');
					swal(data.msg);
				}

			}
		});
	},
	deleterole : function() {

		$.ajax({
			type : "POST",
			url : "Roal-delete",
			data : {
				id : Roal.deleteid,

			},
			success : function(result) {
				var data = jQuery.parseJSON(result);

				if (data.success) {

					$('#myModal3').modal('hide');
					swal(data.msg);
					Roal.load();

				} else {

					$('#myModal3').modal('hide');
					swal(data.msg);
				}

			}
		});
	},

});

// 人员管理
var UserManger = avalon.define({
	$id : "UserManger",
	dataList : {},
	limit : 20,
	result : {},
	currentPage : 1,
	pageCount : 0,
	limit : 5,
	pageList : 0,
	options : {},
	deleteid : 0,
	roleName : "",
	addUser : {
		username : "",
		password : "",
		pay : 0,
		role : "",
	},
	updataUser : {
		id : 0,
		username : "",
		password : "",
		pay : 0,
		role : "",
	},

	load : function() {
		$.ajax({
			type : "POST",
			url : "UserManger-UserList",
			data : {

				currentPage : UserManger.currentPage,
				limit : UserManger.limit,
			},
			success : function(result) {

				var data = jQuery.parseJSON(result)
				UserManger.dataList = data.items;

				UserManger.pageCount = data.pagecont;
				UserManger.currentPage = data.currentpage;

			}
		});

	},
	nextpage : function() {

		if (UserManger.currentPage >= UserManger.pageCount) {
			swal("当前为最后一页！");

		} else {

			UserManger.currentPage = UserManger.currentPage + 1;
			UserManger.load();
		}
	},
	lastpage : function() {

		UserManger.currentPage = UserManger.pageCount;
		UserManger.load();

	},
	firstpage : function() {

		UserManger.currentPage = 1;
		UserManger.load();

	},

	prevpage : function() {

		if (UserManger.currentPage <= 1) {
			swal("当前为第一页！");
		} else {
			UserManger.currentPage = UserManger.currentPage - 1;
			UserManger.load();
		}

	},
	showaddUser : function() {
		$.ajax({
			type : "POST",
			url : "Roal-RoalList",
			data : {},
			success : function(result) {

				UserManger.options = jQuery.parseJSON(result).items;

			}
		});
		$('#myModal2').modal('show');
	},

	showdelete : function(id) {

		UserManger.deleteid = id;
		$('#myModal3').modal('show');
	},
	showUpdata : function(name, pay, id, password) {
		$.ajax({
			type : "POST",
			url : "Roal-RoalList",
			data : {},
			success : function(result) {

				UserManger.options = jQuery.parseJSON(result).items;
				UserManger.updataUser.username = name;
				UserManger.updataUser.password = password;
				UserManger.updataUser.pay = pay;
				UserManger.updataUser.id = id;
				$('#myModal').modal('show');

			}
		});

	},
	addUser : function() {

		if ($("#form-field-11").val() == "") {
			swal("请完整填写信息！");
			return;
		}
		if ($("#form-field-12").val() == "") {
			swal("请完整填写信息！");
			return;
		}
		if ($("#form-field-13").val() == "") {

			swal("请完整填写信息！");
			return;
		} else {

			if (isNaN($("#form-field-13").val())) {
				swal("工资请填写数字！");
				return;
			}

		}

		$.ajax({
			type : "POST",
			url : "UserManger-add",
			data : {

				name : UserManger.addUser.username,
				password : UserManger.addUser.password,
				pay : UserManger.addUser.pay,
				role : jQuery("#selected").val(),

			},
			success : function(result) {
				var data = jQuery.parseJSON(result);

				if (data.success) {

					$('#myModal2').modal('hide');
					swal(data.msg);
					UserManger.load();

				} else {

					$('#myModal2').modal('hide');
					swal(data.msg);
				}

			}
		});

	},

	uodateUser : function() {

		$.ajax({
			type : "POST",
			url : "UserManger-updata",
			data : {
				id : UserManger.updataUser.id,
				name : UserManger.updataUser.username,
				password : UserManger.updataUser.password,
				pay : UserManger.updataUser.pay,
				role : jQuery("#selected2").val(),
			},
			success : function(result) {
				var data = jQuery.parseJSON(result);

				if (data.success) {

					$('#myModal').modal('hide');
					swal(data.msg);
					UserManger.load();

				} else {

					$('#myModal').modal('hide');
					swal(data.msg);
				}

			}
		});
	},
	deleteUser : function() {

		$.ajax({
			type : "POST",
			url : "UserManger-delete",
			data : {
				id : UserManger.deleteid,

			},
			success : function(result) {
				var data = jQuery.parseJSON(result);

				if (data.success) {

					$('#myModal3').modal('hide');
					swal(data.msg);
					UserManger.load();

				} else {

					$('#myModal3').modal('hide');
					swal(data.msg);
				}

			}
		});
	},

});

// 进货
var Stock = avalon.define({
	$id : "Stock",
	dataList : {},
	limit : 20,
	result : {},
	options : {},
	good : {
		name : "",
		price : "",
		number : "",
		introduce : "",
		goodtype : ""
	},

	addGoods : function() {
		if ($("#name").val() == "") {
			swal("请完整填写信息！");
			return;
		}
		if ($("#jiage").val() == "") {
			swal("请完整填写信息！");
			return;
		} else {
			if (isNaN($("#jiage").val())) {
				swal("价格请填写数字！");
				return;
			}

		}
		if ($("#all").val() == "") {

			swal("请完整填写信息！");
			return;
		} else {

			if (isNaN($("#all").val())) {
				swal("总数请填写数字！");
				return;
			}

		}
		if ($("#jieshao").val() == "") {
			swal("请完整填写信息！");
			return;
		}
		$.ajax({
			type : "POST",
			url : "Market-addGoods",
			data : {
				name : Stock.good.name,
				price : Stock.good.price,
				number : Stock.good.number,
				introduce : Stock.good.introduce,
				goodtype : jQuery("#goodtype option:selected").text(),
			},
			success : function(result) {
				$('input').val("");
				
				Stock.good.introduce = "";
				swal(jQuery.parseJSON(result).msg, "You clicked the button!",
						"success")
			}
		});
	}
});

// 商品管理
var MarketManage = avalon.define({
	$id : "MarketManage",
	dataList : {},
	limit : 20,
	result : {},
	currentPage : 1,
	pageCount : 0,
	pageList : 0,
	deleteID : 0,
	options : {},
	good : {
		id : "",
		name : "",
		price : "",
		number : "",
		remainnumber : "",
		createTime : "",
		introduce : "",
		goodtype : "",
		state : "",
	},

	select : function() {
		var that = this; 
		$(this).closest('table').find('tr > td:first-child input:checkbox')
				.each(function() {
					this.checked = that.checked;
					$(this).closest('tr').toggleClass('selected');
				});
	},
	load : function() {
		
	},

	role : function(id) {
		$.ajax({
			type : "POST",
			url : "Market-findGood",
			data : {
				id : id,
			},
			success : function(result) {
				MarketManage.good = jQuery.parseJSON(result).item;
				name = data.item.name;
				price = data.item.price;
				number = data.item.number;
				createTime = data.item.createTime;
				remainnumber = data.item.remainnumber
				introduce = data.item.introduce;
				goodtype = data.item.goodtype;
				state = data.item.state;
				id = data.item.id;
			}
		});
		$('#modal-table').modal('show');
	},

	edit : function(id) {
		$.ajax({
			type : "POST",
			url : "Market-findGood",
			data : {
				id : id,
			},
			success : function(result) {
				MarketManage.options = jQuery.parseJSON(result).type;

				MarketManage.good = jQuery.parseJSON(result).item;

				MarketManage.good.name = good.name;
				MarketManage.good.price = good.price;
				MarketManage.good.number = good.number;
				MarketManage.good.createTime = good.createTime;
				MarketManage.good.remainnumber = good.remainnumber
				MarketManage.good.introduce = good.introduce;
				MarketManage.good.goodtype = good.goodtype;

			}
		});
		$('#modal-table1').modal('show');
	},

	update : function(id) {
		$.ajax({
			type : "POST",
			url : "Market-updateGood",
			data : {
				id : MarketManage.good.id,
				name : MarketManage.good.name,
				price : MarketManage.good.price,
				number : MarketManage.good.number,
				remainnumber : MarketManage.good.remainnumber,
				introduce : MarketManage.good.introduce,
				goodtype : jQuery("#goodtype option:selected").text(),
				state : MarketManage.good.state,
			},
			success : function(result) {

				if (jQuery.parseJSON(result).success == true) {
					swal(jQuery.parseJSON(result).msg,
							"You clicked the button!", "success");
					MarketManage.dataList = jQuery.parseJSON(result).items;
				} else {
					swal(jQuery.parseJSON(result).msg,
							"You clicked the button!", "error")
				}
			}
		});
	},
	showdele : function(id) {
		MarketManage.deleteID = id
		$('#myModal3').modal('show');
	},

	dele : function() {

		$.ajax({
			type : "POST",
			url : "Market-delGood",
			data : {
				id : MarketManage.deleteID
			},
			success : function(result) {
				MarketManage.dataList = jQuery.parseJSON(result).items;

				$('#myModal3').modal('hide');
				swal("删除成功！","You clicked the button!", "success");
			}
		})

	}

});

index.load();
