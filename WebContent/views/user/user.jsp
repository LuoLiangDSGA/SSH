<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="page-content">
	<div class="page-header">
		<h1>
			个人中心 <i class="icon-double-angle-right"></i> 个人信息

		</h1>
	</div>
	<!-- /.page-header -->

	<div class="row">
		<div class="col-xs-12">
			<div class="tabbable">
				<ul class="nav nav-tabs" id="myTab">
					<li class="active"><a data-toggle="tab" href="#home"> <i
							class="green icon-home bigger-110"></i> 个人信息
					</a></li>
				</ul>

				<div class="tab-content">
					<div id="home" class="tab-pane active">
						<div class="profile-user-info profile-user-info-striped">
							<div class="profile-info-row">
								<div ms-visible="true" class="profile-info-name">姓名</div>

								<div class="profile-info-value">
									<span class="editable editable-click" id="username">{{user.name}}</span>
								</div>
							</div>



							<div class="profile-info-row">
								<div class="profile-info-name">职位</div>

								<div class="profile-info-value">
									<span class="editable editable-click" id="age">{{user.role.roleName}}</span>
								</div>
							</div>

							<div class="profile-info-row">
								<div class="profile-info-name">工资</div>

								<div class="profile-info-value">
									<span class="editable editable-click" id="signup">{{user.pay}}</span>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- /.col -->
	</div>
	<!-- /.row -->
</div>