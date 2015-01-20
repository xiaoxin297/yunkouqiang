<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>云口腔 | 首页</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${root}/resources/admin/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/style-metro.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/style.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/style-responsive.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
<link href="${root}/resources/admin/css/uniform.default.css" rel="stylesheet" type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<link href="${root}/resources/admin/css/promo.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/css/animate.css" rel="stylesheet" type="text/css" />
<link href="${root}/resources/admin/image/favicon.ico" rel="shortcut icon" />
<style type="text/css">
.header .hor-menu {
	margin: 0;
	float: right;
}
</style>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-full-width">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner">
			<div class="container">
				<!-- BEGIN LOGO -->
				<a class="brand" href="index.html"> <img src="${root}/resources/admin/image/logo-big.png" alt="logo" />
				</a>

				<!-- END LOGO -->

				<!-- BEGIN HORIZANTAL MENU -->

				<div class="navbar hor-menu hidden-phone hidden-tablet">

					<div class="navbar-inner">

						<ul class="nav">

							<li class="visible-phone visible-tablet"></li>

							<li class="active"><a href="${root}/"> <span class="selected"></span> 主页 <span class="arrow"></span>
							</a></li>

							<li><a href="${root}/forword/admin/home?login=none&register=block"> 注册 </a> <b class="caret-out"></b></li>

							<li><a href="${root}/forword/admin/home">登录</a></li>

							<li><a href="${root}/forword/web/feedback">留言 </a></li>


						</ul>

					</div>

				</div>

			</div>

		</div>

		<!-- END TOP NAVIGATION BAR -->

	</div>
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container row-fluid">
		<!-- BEGIN EMPTY PAGE SIDEBAR -->
		<!-- END EMPTY PAGE SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content no-min-height">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->

			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid promo-page">

				<!-- BEGIN PAGE CONTENT-->

				<div class="row-fluid">

					<div class="span12">

						<div class="block-grey">

							<div class="container">

								<div id="promo_carousel" class="carousel slide">

									<div class="carousel-inner">

										<div class="active item">

											<div class="row-fluid">

												<div class="span7 margin-bottom-20 margin-top-20 animated rotateInUpRight">

													<h1>欢迎来到云口腔</h1>

													<p>云口腔管理系统用最流行的技术，将传统的管理软件“搬”到云平台，让每个用户更方便的使用管理软件管理自己的诊所。云口腔管理系统是放在“云端”的服务，您可以在任何设备上、任何可以联网的环境使用云口腔管理系统。
														相对于传统的口腔系统管理软件：您不用下载任何软件、不用安装任何文件、不用任何设置。在使用云口腔管理系统的时候，您只需在浏览器中输入网址(www.yunkouqiang.com)后即可使用。</p>

													<p>我们的目标是尽最大的努力让您更加简单的、更加高效的、更加明晰的管理您的诊所。</p>

													<a href="index.html" class="btn red big xlarge"> 学习如何使用 <i class="m-icon-big-swapright m-icon-white"></i>

													</a>

												</div>

												<div class="span5 animated rotateInDownLeft">
													<a href="index.html"><img src="${root}/resources/admin/image/img1.png" alt=""></a>
												</div>

											</div>

										</div>

									</div>
									<a class="carousel-control left" href="#promo_carousel" data-slide="prev"> <i class="m-icon-big-swapleft m-icon-white"></i>
									</a> <a class="carousel-control right" href="#promo_carousel" data-slide="next"> <i class="m-icon-big-swapright m-icon-white"></i>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
		<!-- END PAGE CONTAINER-->
		<!-- END PAGE -->

		<!-- END CONTAINER -->

		<!-- BEGIN FOOTER1 -->

		<div class="footer">

			<div class="container">

				<div class="footer-inner">2013 &copy; Metronic by keenthemes.</div>

				<div class="footer-tools">

					<span class="go-top"> <i class="icon-angle-up"></i>

					</span>

				</div>

			</div>

		</div>

		<!-- END FOOTER -->

		<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

		<!-- BEGIN CORE PLUGINS -->

		<script src="${root}/resources/admin/js/jquery-1.10.1.min.js" type="text/javascript"></script>

		<script src="${root}/resources/admin/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>

		<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->

		<script src="${root}/resources/admin/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>

		<script src="${root}/resources/admin/js/bootstrap.min.js" type="text/javascript"></script>

		<!--[if lt IE 9]>

	<script src="${root}/resources/admin/js/excanvas.min.js"></script>

	<script src="${root}/resources/admin/js/respond.min.js"></script>  

	<![endif]-->

		<script src="${root}/resources/admin/js/jquery.slimscroll.min.js" type="text/javascript"></script>
		<script src="${root}/resources/admin/js/jquery.blockui.min.js" type="text/javascript"></script>
		<script src="${root}/resources/admin/js/jquery.cookie.min.js" type="text/javascript"></script>
		<script src="${root}/resources/admin/js/jquery.uniform.min.js" type="text/javascript"></script>
		<!-- END CORE PLUGINS -->
		<script src="${root}/resources/admin/js/app.js"></script>
		<script>
			jQuery(document).ready(function() {
				App.init();
				jQuery('#promo_carousel').carousel({
					interval : 10000,
					pause : 'hover'
				});

			});
		</script>
		<!-- END JAVASCRIPTS -->
		<!-- END BODY -->
</html>