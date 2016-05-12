<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>登录</title>

<link href="assets/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="assets/css/font-awesome.min.css" />
<!--  <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300" />-->
<link rel="stylesheet" href="assets/css/ace.min.css" />
<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />
<link rel="stylesheet" href="assets/css/sweetalert.css" />

</head>
<body class="login-layout"
	background="<%=request.getContextPath()%>/assets/images/back.jpg">
	<div class="main-container" ms-controller="UserController">
		<div class="main-content">
			<div class="row">
				<div class="col-sm-10 col-sm-offset-1">
					<div class="login-container">
						<!--
                            	作者：623362715@qq.com
                            	时间：2015-12-21
                            	描述：标题
                            -->
						<div class="center">
							<h1>&nbsp;</h1>
							<h1>超市管理系统</h1>
							<h1>&nbsp;</h1>
						</div>

						<div class="space-6"></div>

						<div class="position-relative">
							<div id="login-box"
								class="login-box visible widget-box no-border">
								<div class="widget-body">

									<!--
                                        	作者：623362715@qq.com
                                        	时间：2015-12-21
                                        	描述：登录
                                        -->
									<div class="widget-main">
										<h4 class="header blue lighter bigger">
											<i class="icon-coffee green"></i> 请 填 写 您 的 信 息
										</h4>

										<div class="space-6"></div>

										<form>
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="姓 名"
														ms-duplex="User.name" /> <i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control" placeholder="密 码"
														ms-duplex="User.password" /> <i class="icon-lock"></i>
												</span>
												</label>

												<div class="space"></div>

												<div class="clearfix">
													<label class="inline"> <input type="checkbox"
														class="ace" /> <span class="lbl"> 记 住 密 码</span>
													</label>

													<button type="button"
														class="width-35 pull-right btn btn-sm btn-primary"
														ms-click="login()">
														<i class="icon-key"></i> 登 录
													</button>

												</div>

												<div class="space-4"></div>
											</fieldset>
										</form>

									</div>
									<!-- /widget-main -->
									<!--
                                        	作者：623362715@qq.com
                                        	时间：2015-12-21
                                        	描述：注册
                                        -->

								</div>
								<!-- /widget-body -->
							</div>
							<!-- /login-box -->

							<!--
                            	作者：623362715@qq.com
                            	时间：2015-12-21
                            	描述：注册
                            -->
							<div id="signup-box" class="signup-box widget-box no-border">
								<div class="widget-body">
									<div class="widget-main">
										<h4 class="header green lighter bigger">
											<i class="icon-group blue"></i> 注 册 新 用 户
										</h4>

										<div class="space-6"></div>
										<p>Enter your details to begin:</p>

										<form>
											<fieldset>
												<label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="email" class="form-control" placeholder="Email" />
														<i class="icon-envelope"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="text" class="form-control" placeholder="Username" />
														<i class="icon-user"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control"
														placeholder="Password" /> <i class="icon-lock"></i>
												</span>
												</label> <label class="block clearfix"> <span
													class="block input-icon input-icon-right"> <input
														type="password" class="form-control"
														placeholder="Repeat password" /> <i class="icon-retweet"></i>
												</span>
												</label> <label class="block"> <input type="checkbox"
													class="ace" /> <span class="lbl"> I accept the <a
														href="#">User Agreement</a>
												</span>
												</label>

												<div class="space-24"></div>

												<div class="clearfix">
													<button type="reset" class="width-30 pull-left btn btn-sm">
														<i class="icon-refresh"></i> Reset
													</button>

													<button type="button"
														class="width-65 pull-right btn btn-sm btn-success">
														Register <i class="icon-arrow-right icon-on-right"></i>
													</button>
												</div>
											</fieldset>
										</form>
									</div>

									<div class="toolbar center">
										<a href="#" onclick="show_box('login-box'); return false;"
											class="back-to-login-link"> <i class="icon-arrow-left"></i>
											Back to login
										</a>
									</div>
								</div>
								<!-- /widget-body -->
							</div>
							<!-- /signup-box -->
						</div>
						<!-- /position-relative -->
					</div>
				</div>
				<!-- /.col -->
			</div>
			<!-- /.row -->
		</div>
	</div>
	<!-- /.main-container -->

	<!-- basic scripts -->

	<!--[if !IE]> -->

	<script src="assets/js/jquery-2.0.3.min.js"></script>
	<script src="scripts/avalon.js"></script>
	<script src="scripts/sweetalert.min.js"></script>
	<script src="scripts/sweetalert-dev.js"></script>
	<script src="assets/js/jquery.gritter.min.js"></script>
	<script src="scripts/User.js"></script>


	<script type="text/javascript">
		window.jQuery
				|| document
						.write("<script src='assets/js/jquery-2.0.3.min.js'>"
								+ "<"+"/script>");
	</script>


	<script type="text/javascript">
		if ("ontouchend" in document)
			document
					.write("<script src='assets/js/jquery.mobile.custom.min.js'>"
							+ "<"+"/script>");
	</script>


	<script type="text/javascript">
		function show_box(id) {
			jQuery('.widget-box.visible').removeClass('visible');
			jQuery('#' + id).addClass('visible');
		}
	</script>
	<div style="display: none">
		<script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='UTF-8'></script>
	</div>
</body>
</html>
