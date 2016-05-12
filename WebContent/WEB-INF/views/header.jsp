<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>

<body >
	
	<div class="navbar navbar-default" ms-controller="header">
			<div class="navbar-container" id="navbar-container">
				<div class="navbar-header pull-left">
					<a href="#" class="navbar-brand">
						<small>
							<i class="icon-leaf"></i>
							超市管理系統
						</small>
					</a>
				</div>	
			</div><!-- /.container -->
			<div class="navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
		              <li class="light-blue">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>欢迎光临,</small>
									{{user.name}}
								</span>

								<i class="icon-caret-down"></i>
							</a>
								<ul class="user-menu pull-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li ms-click="outlogin">
									<a>
										<i class="icon-off"></i>
										退出系统
									</a>
								</li>
							</ul>
					 </li>
					<ul>
		   </div>
     </div>
</body>
</html>