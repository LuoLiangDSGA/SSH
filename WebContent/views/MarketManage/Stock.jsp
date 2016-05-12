<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 这里是主提页面 -->
<div class="page-content" ms-controller="Stock">
	<div class="page-header">
		<h4>
			超市管理 &nbsp &nbsp<i class="icon-double-angle-right"></i> &nbsp &nbsp进货

		</h4>
	</div>

	<div class="row">
		<div class="col-xs-12">
			<div class="row-fluid">
				<div class="span12">
					<div class="widget-box">
						<div class="widget-header widget-header-blue widget-header-flat">
							<h4 class="lighter">
								<i class="icon-check icon-animated-hand-pointer blue"></i>添加商品信息
							</h4>
						</div>
						<div class="widget-body">
							<div class="widget-main">
								<div id="fuelux-wizard" class="row-fluid">
									<form class="form-horizontal" id="validation-form">
										<div class="form-group">
											<label
												class="control-label col-xs-12 col-sm-3 no-padding-right">商品名称:</label>

											<div class="col-xs-12 col-sm-9">
												<div class="clearfix">
													<input type="text" ms-duplex="good.name" id="name"
														class="col-xs-12 col-sm-6" required />
												</div>
											</div>
										</div>
										<div class="space-2"></div>

										<div class="form-group">
											<label
												class="control-label col-xs-12 col-sm-3 no-padding-right">商品价格:</label>

											<div class="col-xs-12 col-sm-9">
												<div class="clearfix">
													<input type="text" ms-duplex="good.price" id="jiage"
														class="col-xs-12 col-sm-6" />
												</div>
											</div>
										</div>
										<div class="form-group">
											<label
												class="control-label col-xs-12 col-sm-3 no-padding-right">商品总数:</label>

											<div class="col-xs-12 col-sm-9">
												<div class="clearfix">
													<input type="text" ms-duplex="good.number" id="all"
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
														id="jieshao" name="comment"></textarea>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label
												class="control-label col-xs-12 col-sm-3 no-padding-right"
												for="platform">商品分类:</label>
											<div class="col-xs-12 col-sm-6">
												<div class="clearfix">
													<select ms-duplex="selected" class="input-medium"
														id="goodtype">
														<option ms-repeat-option="options" ms-value="option">{{option.goodTypeName}}</option>
													</select>
												</div>
											</div>
										</div>
										<div class="clearfix form-actions">
											<div class="col-md-offset-3 col-md-9">
												<button class="btn btn-info" type="button"
													ms-click="addGoods()">
													<i class="icon-ok bigger-110"></i> 添加
												</button>

												&nbsp; &nbsp; &nbsp;
												<button class="btn btn-danger" type="reset">
													<i class="icon-undo bigger-110"></i> 取消
												</button>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
