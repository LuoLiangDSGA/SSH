<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="page-content" ms-controller="UserManger">
	<div class="page-header">
		<h4>
			人员管理 &nbsp &nbsp<i class="icon-double-angle-right"></i> &nbsp
			&nbsp人员管理

		</h4>
	</div>
	<!-- /.page-header -->
	<div class="row">

		<div class="col-xs-12">
			<div class="widget-box">
				<div class="widget-header widget-header-flat widget-header-small">
					<h5>
						<i class="icon-signal"></i>人员列表
					</h5>
				</div>

				<div class="widget-body">
					<div class="widget-toolbox">
						<div class="btn-toolbar">
							<div style="clear: both">

								<button type="button" class="btn btn-sm btn-success"
									ms-click="showaddUser()">添加员工</button>

							</div>

						</div>
					</div>
					<div class="widget-main no-padding">
						<table class="table table-bordered table-striped">
							<thead class="thin-border-bottom">
								<tr>
									<th><i class="icon-caret-right blue"></i>姓名</th>
									<th><i class="icon-caret-right blue"></i> 角色</th>
									<th><i class="icon-caret-right blue"></i> 工资</th>
									<th><i class="icon-caret-right blue"></i> 入职时间</th>
									<th><i class="icon-caret-right blue"></i> 操作</th>
								</tr>
							</thead>
							<tbody>

								<tr ms-repeat-obj="dataList">
									<td>{{obj.name}}</td>
									<td>{{obj.role.roleName}}</td>
									<td>{{obj.pay}}</td>

									<td>{{obj.createtime}}</td>
									<td>&nbsp
										<button type="button" class="btn btn-sm btn-success"
											ms-click="showUpdata(obj.name,obj.pay,obj.id,obj.password)">修改</button>
										&nbsp
										<button type="button" class="btn btn-sm btn-success"
											ms-click="showdelete(obj.id)">删除</button>
									</td>
								</tr>
							</tbody>
						</table>
						<div id="grid-pager"
							class="ui-state-default ui-jqgrid-pager ui-corner-bottom"
							dir="ltr" style="width: 1136px;">
							<div id="pg_grid-pager" class="ui-pager-control" role="group">
								<table cellspacing="0" cellpadding="0" border="0"
									class="ui-pg-table"
									style="width: 100%; table-layout: fixed; height: 100%;"
									role="row">
									<tbody>
										<tr>

											<td id="grid-pager_center" align="center"
												style="white-space: pre; width: 346px;"><table
													cellspacing="0" cellpadding="0" border="0"
													style="table-layout: auto;" class="ui-pg-table">
													<tbody>
														<tr>
															<td id="first_grid-pager" ms-click="firstpage()"
																class="ui-pg-button ui-corner-all "><span
																class="ui-icon icon-double-angle-left bigger-140"></span></td>
															<td id="prev_grid-pager" ms-click="prevpage()"
																class="ui-pg-button ui-corner-all "><span
																class="ui-icon icon-angle-left bigger-140"></span></td>
															<td class="ui-pg-button ui-state-disabled"
																style="width: 4px;"><span class="ui-separator"></span></td>
															<td dir="ltr">第 {{currentPage}} 页 共 <span
																id="sp_1_grid-pager"> {{pageCount}} 页</span></td>
															<td class="ui-pg-button ui-state-disabled"
																style="width: 4px; cursor: default;"><span
																class="ui-separator"></span></td>
															<td id="next_grid-pager" ms-click="nextpage()"
																class="ui-pg-button ui-corner-all"
																style="cursor: default;"><span
																class="ui-icon icon-angle-right bigger-140"></span></td>
															<td id="last_grid-pager" ms-click="lastpage()"
																class="ui-pg-button ui-corner-all"
																style="cursor: default;"><span
																class="ui-icon icon-double-angle-right bigger-140"></span></td>

														</tr>
													</tbody>
												</table></td>

										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>

					<!-- /widget-main -->
				</div>

				<!-- /widget-body -->
			</div>

		</div>
		<!-- /.row -->
	</div>


	<!-- 修改 -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">修改用户</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户名称 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder="名称 "
									class="col-xs-12 col-sm-12" ms-duplex="updataUser.username" />
							</div>
						</div>

						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户密码 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder="用户密码"
									class="col-xs-12 col-sm-12" ms-duplex="updataUser.password" />
							</div>
						</div>
						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户工资 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder="用户工资"
									class="col-xs-12 col-sm-12" ms-duplex="updataUser.pay" />
							</div>
						</div>
						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户的角色 </label>

							<div class="col-sm-10">
								<select id="selected2" class="col-xs-12 col-sm-12">
									<option ms-repeat-option="options" ms-value="{{option.id}}">{{option.roleName}}</option>
								</select>

							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary"
						ms-click="uodateUser()">提交更改</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>




	<!-- 添加 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">添加用户</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户名称 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-11" placeholder="名称 "
									class="col-xs-12 col-sm-12" ms-duplex="addUser.username" />
							</div>
						</div>

						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户密码 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-12" placeholder="用户密码"
									class="col-xs-12 col-sm-12" ms-duplex="addUser.password" />
							</div>
						</div>
						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户工资 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-13" placeholder="用户工资"
									class="col-xs-12 col-sm-12" ms-duplex="addUser.pay" />
							</div>
						</div>
						<div class="space-4"></div>
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">用户的角色 </label>

							<div class="col-sm-10">
								<select id="selected" class="col-xs-12 col-sm-12">
									<option ms-repeat-option="options" ms-value="{{option.id}}">{{option.roleName}}</option>
								</select>

							</div>
						</div>

					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" ms-click="addUser()">添加</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>


	<!-- 删除 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title" id="myModalLabel">删除角色</h4>
				</div>
				<div class="modal-body">请确定是否删除？</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消
					</button>
					<button type="button" class="btn btn-primary"
						ms-click="deleteUser()">确定删除</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>