<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="page-content" ms-controller="Roal">
	<div class="page-header">
		<h4>
			人员管理 &nbsp &nbsp<i class="icon-double-angle-right"></i> &nbsp
			&nbsp角色管理

		</h4>
	</div>
	<!-- /.page-header -->
	<div class="row">

		<div class="col-xs-12">
			<div class="widget-box">
				<div class="widget-header widget-header-flat widget-header-small">
					<h5>
						<i class="icon-signal"></i>角色列表
					</h5>
				</div>

				<div class="widget-body">
					<div class="widget-toolbox">
						<div class="btn-toolbar">
							<div style="clear: both">

								<button type="button" class="btn btn-sm btn-success" ms-click="shouwadd()">
									新建角色</button>

							</div>

						</div>
					</div>
					<div class="widget-main no-padding">
						<table class="table table-bordered table-striped">
							<thead class="thin-border-bottom">
								<tr>
									<th><i class="icon-caret-right blue"></i> 角色ID</th>
									<th><i class="icon-caret-right blue"></i>角色名称</th>
									<th><i class="icon-caret-right blue"></i> 角色介绍</th>
									<th><i class="icon-caret-right blue"></i> 操 作</th>
								</tr>
							</thead>
							<tbody>

								<tr ms-repeat-obj="dataList">
									<td>{{obj.id}}</td>
									<td>{{obj.roleName}}</td>
									<td>{{obj.des}}</td>
									<td>&nbsp
										<button type="button" class="btn btn-sm btn-success"
											 ms-click="showUpdata(obj.roleName,obj.des,obj.id)">修改</button> &nbsp
										<button type="button" class="btn btn-sm btn-success" ms-click="showdelete(obj.id)">
											删除</button></td>
								</tr>
							</tbody>
						</table>
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
					<h4 class="modal-title" id="myModalLabel">修改角色</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1"> 角色名称 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder="名称 "
									class="col-xs-12 col-sm-12"  ms-duplex="updataRole.roleName" />
							</div>
						</div>

						<div class="space-4"></div>
						
							<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-1">角色介绍 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-1" placeholder="角色介绍"
									class="col-xs-12 col-sm-12"  ms-duplex="updataRole.des" />
							</div>
						</div>

						


					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" ms-click="uodatarole()">提交更改</button>
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
					<h4 class="modal-title" id="myModalLabel">添加角色</h4>
				</div>
				<div class="modal-body">

					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-21"> 角色名称 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-21" placeholder="名称 "
									class="col-xs-12 col-sm-12"  ms-duplex="addRole.roleName" />
							</div>
						</div>

						<div class="space-4"></div>
						
							<div class="form-group">
							<label class="col-sm-2 control-label no-padding-right"
								for="form-field-22">角色介绍 </label>

							<div class="col-sm-10">
								<input type="text" id="form-field-22" placeholder="角色介绍"
									class="col-xs-12 col-sm-12"  ms-duplex="addRole.des" />
							</div>
						</div>

						


					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" ms-click="addrole()">添加</button>
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
				<div class="modal-body">

				请确定是否删除？
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">取消
					</button>
					<button type="button" class="btn btn-primary" ms-click="deleterole()">确定删除</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>