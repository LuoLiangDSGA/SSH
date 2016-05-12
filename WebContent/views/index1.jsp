<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/ace-skins.min.css" />
<link rel="stylesheet" href="assets/css/sweetalert.css" />
<script src="scripts/avalon.js"></script>
</head>

<body ms-controller="indexController">
	<!-- 头部-->
	<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
	<div class="main-container" id="main-container">



		<script type="text/javascript">
			try {
				ace.settings.check('main-container', 'fixed')
			} catch (e) {
			}
		</script>



		<div class="main-container-inner">


			<a class="menu-toggler" id="menu-toggler" href="#"> <span
				class="menu-text"></span>
			</a>

			<jsp:include page="/WEB-INF/views/sidebar.jsp"></jsp:include>
			<!--主题显示-->
			<div class="main-content">
				<div class="breadcrumbs" id="breadcrumbs">
					<ul class="breadcrumb">
						<li><i class="icon-home home-icon"></i> <a href="#">首页</a></li>
						<li class="active">个人中心</li>
					</ul>
					<!-- .breadcrumb -->
				</div>

				<!-- 这里是主提页面 -->
				<div ms-include-src="views/{{url}}.jsp"></div>
			</div>
			<!-- /.main-content -->
			<a href="#" id="btn-scroll-up"
				class="btn-scroll-up btn btn-sm btn-inverse"> <i
				class="icon-double-angle-up icon-only bigger-110"></i>
			</a>
		</div>

		<script type="text/javascript">
			try {
				ace.settings.check('breadcrumbs', 'fixed')
			} catch (e) {
			}
		</script>

		<script src="scripts/jquery-1.9.1.min.js"></script>
		<script type="text/javascript">
			window.jQuery
					|| document
							.write("<script src='assets/js/jquery-2.0.3.min.js'>"
									+ "<" + "/script>");
		</script>
		<script src="scripts/jquery.dataTables.min.js"></script>
		<script src="assets/js/dataTables.bootstrap.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="assets/js/typeahead-bs2.min.js"></script>
		<script src="assets/js/jquery-ui-1.10.3.custom.min.js"></script>
		<script src="assets/js/jquery.ui.touch-punch.min.js"></script>
		<script src="assets/js/jquery.slimscroll.min.js"></script>
		<script src="assets/js/jquery.easy-pie-chart.min.js"></script>
		<script src="assets/js/jquery.sparkline.min.js"></script>
		<script src="assets/js/flot/jquery.flot.min.js"></script>
		<script src="assets/js/flot/jquery.flot.pie.min.js"></script>
		<script src="assets/js/flot/jquery.flot.resize.min.js"></script>
		<script src="scripts/sweetalert.min.js"></script>
		<script src="scripts/sweetalert-dev.js"></script>
		<script src="assets/js/jquery.gritter.min.js"></script>

		<script src="scripts/index.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-extra.min.js"></script>
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>
</body>
</html>

