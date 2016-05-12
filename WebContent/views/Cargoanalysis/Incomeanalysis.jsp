<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 这里是主提页面 -->
<div class="page-content" ms-controller=Incomeanalysis>
	<div class="page-header">
		<h4>
			统计分析 &nbsp &nbsp<i class="icon-double-angle-right"></i> &nbsp
			&nbsp收入支出分析

		</h4>
	</div>
	<!-- /.page-header -->
	<div class="row">

		<div class="col-xs-12">
			<div class="widget-box">
				<div class="widget-header widget-header-flat widget-header-small">
					<h5>
						<i class="icon-signal"></i> 订单列表
					</h5>
				</div>

				<div class="widget-body">
					<div class="widget-toolbox">
						<div class="btn-toolbar">
							<div style="clear: both">
							
									
							

							</div>

						</div>
					</div>
					<div class="widget-main no-padding">
						<table class="table table-bordered table-striped">
							<thead class="thin-border-bottom">
								<tr>
									<th><i class="icon-caret-right blue"></i> 名称</th>
									<th><i class="icon-caret-right blue"></i>第一季度</th>
									<th><i class="icon-caret-right blue"></i> 第二季度</th>
									<th><i class="icon-caret-right blue"></i>第三季度</th>
									<th><i class="icon-caret-right blue"></i>第四季度</th>


								</tr>
							</thead>
							<tbody>

								<tr ms-repeat-obj="dataList">
									<td>{{obj.label}}</td>
									<td>{{obj.first}}</td>
									<td>{{obj.two}}</td>
									<td>{{obj.three}}</td>
									<td>{{obj.four}}</td>
								



								</tr>


							</tbody>
						</table>
					</div>
					<!-- /widget-main -->
				</div>
				
				<!-- /widget-body -->
			</div>
			<!-- asdfasdfasdfasdf -->
		
										<div class="widget-box transparent">
											<div class="widget-header widget-header-flat">
												<h4 class="lighter">
													<i class="icon-signal"></i>
													销售统计
												</h4>

												<div class="widget-toolbar">
													<a href="#" data-action="collapse">
														<i class="icon-chevron-up"></i>
													</a>
												</div>
											</div>

											<div class="widget-body">
												<div class="widget-main padding-4">
													<div id="sales-charts"></div>
												</div><!-- /widget-main -->
											</div><!-- /widget-body -->
										</div><!-- /widget-box -->
									
			<!-- asdfasdfasdfasdf -->
		</div>
		<!-- /.row -->
	</div>
