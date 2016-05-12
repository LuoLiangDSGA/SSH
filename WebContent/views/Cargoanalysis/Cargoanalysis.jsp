<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 这里是主提页面 -->
<div class="page-content" ms-controller="Cargoanalysis">
	<div class="page-header">
		<h4>
			统计分析 &nbsp &nbsp<i class="icon-double-angle-right"></i> &nbsp
			&nbsp货物分析

		</h4>
	</div>
	<!-- /.page-header -->
	<div class="row">

		<div class="col-xs-12">
			<div class="widget-box">
				<div class="widget-header widget-header-flat widget-header-small">
					<h5>
						<i class="icon-signal"></i> 货物列表
					</h5>
				</div>

				<div class="widget-body">
					<div class="widget-toolbox">
						<div class="btn-toolbar">
							<div style="clear: both">
								 <select class="form-control" ms-duplex="cheak" style="float: left; width: 20%"
									id="form-field-select-2">
						
									<option value="商品类别">商品类别</option>
									<option value="商品销售状态">商品销售状态</option>
									

								</select>
								<button type="button" class="btn btn-sm btn-success" ms-click="load()">
									查询 <i class="icon-arrow-right icon-on-right bigger-110"></i>
								</button>

							</div>

						</div>
					</div>
					<div class="widget-main no-padding">
						<table class="table table-bordered table-striped">
							<thead class="thin-border-bottom">
								<tr>
								<th><i class="icon-caret-right blue"></i>分类</th>
									<th><i class="icon-caret-right blue"></i> 数量</th>
									<th><i class="icon-caret-right blue"></i>百分比</th>
									
									
								</tr>
							</thead>
							<tbody>

								<tr ms-repeat-obj="dataList">
								<td>{{obj.label}}</td>
									<td>{{obj.data}}</td>
									<td>{{obj.realdata}}</td>
									
								</tr>


							</tbody>
						</table>
					</div>
		
					<!-- /widget-main -->
				</div>
				<!-- /widget-body -->
			</div>
			<!-- asdfasdfasdfasdf -->
			<div class="widget-box">
				<div class="widget-header widget-header-flat widget-header-small">
					<h5>
						<i class="icon-signal"></i> 货物分析
					</h5>

					
				</div>

				<div class="widget-body">
					<div class="widget-main">
						<div id="piechart-placeholder"></div>

						<div class="hr hr8 hr-double"></div>

					</div>
					<!-- /widget-main -->
				</div>
				<!-- /widget-body -->
			</div>
			<!-- asdfasdfasdfasdf -->
		</div>
		<!-- /.row -->
	</div>


<!-- <script type="text/javascript">
		jQuery(function($) {
			var placeholder = $('#piechart-placeholder').css({
				'width' : '90%',
				'min-height' : '150px'
			});
			var data = [ {
				label : "1",
				data : 38.7,
				color : "#68BC31"
			}, {
				label : "2",
				data : 24.5,
				color : "#2091CF"
			}, {
				label : "3",
				data : 8.2,
				color : "#AF4E96"
			}, {
				label : "4",
				data : 18.6,
				color : "#DA5430"
			}, {
				label : "5",
				data : 10,
				color : "#FEE074"
			} ]
			function drawPieChart(placeholder, data, position) {
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
			}
			drawPieChart(placeholder, data);

			/**
			we saved the drawing function and the data to redraw with different position later when switching to RTL mode dynamically
			so that's not needed actually.
			 */
			placeholder.data('chart', data);
			placeholder.data('draw', drawPieChart);

		})
	</script>-->