<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<body>
	<!--导航-->
	<div class="sidebar" id="sidebar" ms-controller="sidear">
		<script type="text/javascript">
			try {
				ace.settings.check('sidebar', 'fixed')
			} catch (e) {
			}
		</script>
		<!-- 导航标题 -->
		<div class="sidebar-shortcuts" id="sidebar-shortcuts">
			<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
				<div style="height: 40px;">
					<font size="5">管 理 操 作</font>
				</div>
			</div>
		</div>

		<ul class="nav nav-list">
			<li><a href="#" class="dropdown-toggle"> <i
					class="icon-desktop"></i> <span class="menu-text">个人中心 </span> <b
					class="arrow icon-angle-down"></b>
			</a>
				<ul class="submenu">

					<li ms-click="toggle('User-Index')"><a> <i
							class="icon-double-angle-right"></i> 个人信息
					</a></li>


				</ul></li>

				<li  ms-visible="isManager == true"><a href="#" class="dropdown-toggle"> <i
					class="icon-desktop"></i> <span class="menu-text">人员管理 </span> <b
					class="arrow icon-angle-down"></b>
			</a>

				<ul class="submenu" >

					<li><a href="javascript:void(0)" ms-click="toggle('UserManger-Index')"> <i
							class="icon-double-angle-right"></i> 员工管理
					</a></li>
					<li ms-click="toggle('Roal-Roal')"><a href="javascript:void(0)" > <i
							class="icon-double-angle-right"></i> 角色管理
					</a></li>

				</ul></li>

			<li><a href="#" class="dropdown-toggle"> <i
					class="icon-desktop"></i> <span class="menu-text">统计分析</span> <b
					class="arrow icon-angle-down"></b>
			</a>
				<ul class="submenu">
					<li ms-click="toggle('Analysis-Cargo')"><a
						href="javascript:void(0)"> <i class="icon-double-angle-right"></i>
							货物分析
					</a></li>
					<li ms-click="toggle('Analysis-Income')"><a href="javascript:void(0)"> <i
							class="icon-double-angle-right"></i> 收入支出
					</a></li>

				</ul></li>

			<li><a href="#" class="dropdown-toggle"> <i
					class="icon-desktop"></i> <span class="menu-text">超市管理 </span> <b
					class="arrow icon-angle-down"></b>
			</a>

				<ul class="submenu">
					<li ms-click="toggle('Market-openaddPage')"><a
						href="javascript:void(0)"> <i class="icon-double-angle-right"></i>
							进货
					</a></li>
					<li ms-click="toggle('Market-Manage')"><a
						href="javascript:void(0)"> <i class="icon-double-angle-right"></i>
							商品管理
					</a></li>

				</ul></li>
		</ul>
		<div class="sidebar-collapse" id="sidebar-collapse">
			<i class="icon-double-angle-left" data-icon1="icon-double-angle-left"
				data-icon2="icon-double-angle-right"></i>
		</div>
		<script src="scripts/avalon.js"></script>
		<script type="text/javascript">
			try {
				ace.settings.check('sidebar', 'collapsed')
			} catch (e) {
			}
		</script>
	</div>
</body>
</html>