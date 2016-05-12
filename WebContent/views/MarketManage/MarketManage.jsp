<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="page-content" ms-controller="MarketManage">

	<div class="page-header">
		<h4>
			超市管理 &nbsp &nbsp<i class="icon-double-angle-right"></i> &nbsp
			&nbsp商品管理
		</h4>
	</div>
	<div class="row">
		<div class="col-xs-12">

			<div class="col-xs-12">
				<h3 class="header smaller lighter blue">商品列表</h3>
				<div class="table-header">可对所有商品进行操作</div>
				<table id="dataTables-example"
					class="table table-striped table-bordered table-hover">
					<thead>
						<tr>
							<th class="center"><label> <input type="checkbox"
									ms-click="select(this)" class="ace" /> <span class="lbl"></span>
							</label></th>
							<th>名称</th>
							<th>售价</th>
							<th class="hidden-480">类型</th>
							<th class="hidden-480">总量</th>
							<th><i class="icon-time bigger-110 hidden-480"></i> 余量</th>
							<th class="hidden-480">上架时间</th>
							<th class="hidden-480">状态</th>
							<th>操作</th>
						</tr>
					</thead>

					<tbody>
						<tr ms-repeat-obj="dataList">
							<td class="center"><label> <input type="checkbox"
									class="ace" /> <span class="lbl"></span>
							</label></td>
							<td>{{obj.name}}</td>
							<td>{{obj.price}}</td>
							<td>{{obj.goodtype.goodTypeName}}</td>
							<td>{{obj.number}}</td>
							<td>{{obj.remainnumber}}</td>
							<td>{{obj.createTime}}</td>
							<td>{{obj.state}}</td>
							<td>
								<div class="visible-md visible-lg hidden-sm hidden-xs btn-group">
									<button role="button" class="btn btn-xs btn-success"
										ms-click="role(obj.id)">
										<i class="icon-ok bigger-120"></i>
									</button>

									<button role="button" class="btn btn-xs btn-info"
										ms-click="edit(obj.id)">
										<i class="icon-edit bigger-120"></i>
									</button>

									<button role="button" class="btn btn-xs btn-danger"
										ms-click="showdele(obj.id)">
										<i class="icon-trash bigger-120"></i>
									</button>

								</div>
							</td>
						</tr>
					</tbody>
				</table>

				<div id="modal-table" class="modal fade" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header no-padding">
								<div class="table-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">
										<span class="white">&times;</span>
									</button>
									查看
								</div>
							</div>

							<div class="modal-body no-padding">
								<div class="widget-body">
									<div class="widget-main">
										<div id="fuelux-wizard" class="row-fluid">
											<form class="form-horizontal" id="validation-form">
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品名称:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.name"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="space-2"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品价格:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.price"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品总数:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.number"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品余量:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.remainnumber"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品状态:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.remainnumber"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">上架时间:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.createTime"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right"
														for="platform">商品分类:</label>
													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.goodtype.goodTypeName"
																class="col-xs-12 col-sm-6" />
														</div>

													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品介绍:</label>

													<div class="col-xs-12 col-sm-6">
														<div class="clearfix">
															<textarea ms-duplex="good.introduce" class="input-xlarge"
																id="textarea" name="comment" id="comment"></textarea>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="modal-footer no-margin-top">
								<button class="btn btn-sm btn-danger pull-left"
									data-dismiss="modal">
									<i class="icon-remove"></i> Close
								</button>
							</div>
						</div>
					</div>
				</div>

				<div id="modal-table1" class="modal fade" tabindex="-1">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header no-padding">
								<div class="table-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">
										<span class="white">&times;</span>
									</button>
									编辑商品信息
								</div>
							</div>

							<div class="modal-body no-padding">
								<div class="widget-body">
									<div class="widget-main">
										<div id="fuelux-wizard" class="row-fluid">
											<form class="form-horizontal" id="validation-form">
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品名称:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.name"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="space-2"></div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品价格:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.price"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品总数:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.number"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品余量:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.remainnumber"
																class="col-xs-12 col-sm-6" />
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品状态:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<select ms-duplex="good.state" class="input-medium ">
																<option selected>销售中</option>
																<option>下架</option>
																<option>售空</option>
															</select>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">上架时间:</label>

													<div class="col-xs-12 col-sm-9">
														<div class="clearfix">
															<input type="text" ms-duplex="good.createTime"
																class="col-xs-12 col-sm-6" readonly />
														</div>
													</div>
												</div>

												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right"
														for="platform">商品分类:</label>
													<div class="col-xs-12 col-sm-6">
														<div class="clearfix">
															<select class="input-medium" ms-duplex="good.goodtype"
																id="goodtype">
																<option ms-repeat-option="options" ms-value="option">{{option.goodTypeName}}</option>
															</select>
														</div>
													</div>
												</div>
												<div class="form-group">
													<label
														class="control-label col-xs-12 col-sm-3 no-padding-right">商品介绍:</label>

													<div class="col-xs-12 col-sm-6">
														<div class="clearfix">
															<textarea ms-duplex="good.introduce" class="input-xlarge"
																id="textarea" name="comment" id="comment"></textarea>
														</div>
													</div>
												</div>
											</form>
										</div>
									</div>
								</div>
							</div>

							<div class="modal-footer no-margin-top">
								<button class="btn btn-sm btn-info pull-left"
									data-dismiss="modal" style="margin-left: 150px"
									ms-click="update(good.id)">
									<i class="icon-remove"></i> 修改
								</button>
								<button class="btn btn-sm btn-danger pull-left"
									data-dismiss="modal" style="margin-left: 40px">
									<i class="icon-remove"></i> 关闭
								</button>
							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

		<!-- 删除 -->
		<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title" id="myModalLabel">删除商品</h4>
					</div>
					<div class="modal-body">请确定是否删除？</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-danger" data-dismiss="modal">取消
						</button>
						<button type="button" class="btn btn-primary" ms-click="dele()">确定删除</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal -->
		</div>
	</div>
</div>