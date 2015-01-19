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
<title>Metronic | Layouts - Promo Page</title>
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

							<li><a data-toggle="dropdown" class="dropdown-toggle" href="${root}/forword/web/register"> 注册 </a> <b class="caret-out"></b></li>

							<li><a href="${root}/forword/admin/login">登录</a></li>

							<li><a data-toggle="dropdown" class="dropdown-toggle" href="${root}/forword/web/feedback">留言 </a></li>


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

													<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati
														cupiditate non provident, similique. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce
														condimentum eleifend enim a feugiat.</p>

													<p>Lunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur
														adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>

													<a href="index.html" class="btn red big xlarge"> Take a tour <i class="m-icon-big-swapright m-icon-white"></i>

													</a>

												</div>

												<div class="span5 animated rotateInDownLeft">

													<a href="index.html"><img src="${root}/resources/admin/image/img1.png" alt=""></a>

												</div>

											</div>

										</div>

										<div class="item">

											<div class="row-fluid">

												<div class="span5 animated rotateInUpRight">

													<a href="index.html"><img src="${root}/resources/admin/image/img1_2.png" alt=""></a>

												</div>

												<div class="span7 margin-bottom-20 animated rotateInDownLeft">

													<h1>Buy Metronic Today..</h1>

													<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati
														cupiditate non provident, similique. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce
														condimentum eleifend enim a feugiat.</p>

													<p>Lunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend
														enim a feugiat.</p>

													<a href="index.html" class="btn green big xlarge"> But it today <i class="m-icon-big-swapright m-icon-white"></i>

													</a>

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

						<div class="block-yellow">

							<div class="container">

								<div class="row-fluid">

									<div class="span5 margin-bottom-20">

										<a href="index.html"><img src="${root}/resources/admin/image/img2.png" alt=""></a>

									</div>

									<div class="span7">

										<h2>Metronic viverra vehicula sem ut volutpat</h2>

										<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati
											cupiditate non provident, similique. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam lacus. Fusce
											condimentum eleifend enim a feugiat.</p>

										<p>Lunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur
											adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.</p>

										<a href="index.html" class="btn blue big xlarge"> Learn more <i class="m-icon-big-swapright m-icon-white"></i>

										</a>

									</div>

								</div>

							</div>

						</div>

						<div class="block-transparent">

							<div class="container">

								<div class="row-fluid margin-bottom-20">

									<div class="span6 margin-bottom-20">

										<h2>Metronic Viverra</h2>

										<p>
											At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos <a href="#">ellentesque la vehi</a> dolores et quas molestias
											excepturi sint occaecati cupiditate non provident, similique. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna.
											Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.
										</p>

										<p>
											Lunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita <a href="#">distinctio lorem ipsum dolor</a> sit amet,
											consectetur adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et quam lacus. Fusce condimentum eleifend enim a feugiat.
										</p>

									</div>

									<div class="span6 margin-bottom-20">

										<a href="index.html"><img src="${root}/resources/admin/image/img3.png" alt=""></a>

									</div>

								</div>

								<div class="row-fluid">

									<div class="span6">

										<a href="index.html"><img src="${root}/resources/admin/image/img4.png" alt=""></a>

									</div>

									<div class="span6 margin-bottom-20">

										<h2>Vero eos iusto odio..</h2>

										<p>
											At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et <a href="#">quas molestias excepturi sint</a>
											occaecati cupiditate non provident, similique. Pellentesque viverra vehicula sem ut volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut non libero magna. Sed et quam
											lacus. Fusce condimentum eleifend enim a feugiat.
										</p>

										<p>
											Lunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio lorem ipsum dolor sit amet, consectetur
											adipiscing elit. Ut non libero consectetur adipiscing elit magna. Sed et <a href="#">quam lacus eusce condimentum </a> eleifend enim a feugiat.
										</p>

									</div>

								</div>

								<hr>

								<div class="row-fluid">

									<div class="span3">

										<h3>
											<a href="#">Consectetur adipiscing</a>
										</h3>

										<p>Pellentesque viverra vehicula sem ut volutpat dosum molor sit amet, consectetur adipiscing elit</p>

									</div>

									<div class="span3">

										<h3>
											<a href="#">Ut volutpat dosum</a>
										</h3>

										<p>Lunt in lpa qui officia deserunt mollitia mo animi, asdid leoff iscia est labor le harum quidem rerum facilis</p>

									</div>

									<div class="span3">

										<h3>
											<a href="#">Viverra de esque</a>
										</h3>

										<p>Volutpat dosum esque viverra ved et quam lacusehicula sem ut molorviverra sit amet, consetetur edipiscin la</p>

									</div>

									<div class="span3">

										<h3>
											<a href="#">Sem ut volutpat dum</a>
										</h3>

										<p>Deleniti atque corrupa vehicula sem ut volutpat dosum molor sit amet, consectetur adipiscing praesentium</p>

									</div>

								</div>

							</div>

						</div>

						<div class="block-footer">

							<div class="container">

								<div class="row-fluid">

									<div class="span4">

										<h3>Subscribe</h3>

										<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, justo sit amet risus etiam.</p>

										<form class="form-search" action="#">

											<div class="input-append">

												<input type="text" class="m-wrap" placeholder="Email Address">
												<button type="button" class="btn blue">GO!</button>

											</div>

										</form>

									</div>

									<div class="span4">

										<h3>Photo Stream</h3>

										<ul class="unstyled blog-images">

											<li><a href="#"><img src="${root}/resources/admin/image/1.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/2.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/3.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/4.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/5.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/6.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/8.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/10.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/11.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/1.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/2.jpg" alt=""></a></li>

											<li><a href="#"><img src="${root}/resources/admin/image/7.jpg" alt=""></a></li>

										</ul>

									</div>

									<div class="span4">

										<h3>Stay Tuned</h3>

										<ul class="social-icons">

											<li><a href="#" data-original-title="amazon" class="amazon"></a></li>

											<li><a href="#" data-original-title="behance" class="behance"></a></li>

											<li><a href="#" data-original-title="blogger" class="blogger"></a></li>

											<li><a href="#" data-original-title="deviantart" class="deviantart"></a></li>

											<li><a href="#" data-original-title="dribbble" class="dribbble"></a></li>

											<li><a href="#" data-original-title="dropbox" class="dropbox"></a></li>

											<li><a href="#" data-original-title="facebook" class="facebook"></a></li>

											<li><a href="#" data-original-title="forrst" class="forrst"></a></li>

											<li><a href="#" data-original-title="github" class="github"></a></li>

											<li><a href="#" data-original-title="Goole Plus" class="googleplus"></a></li>

											<li><a href="#" data-original-title="jolicloud" class="jolicloud"></a></li>

											<li><a href="#" data-original-title="last-fm" class="last-fm"></a></li>

											<li><a href="#" data-original-title="linkedin" class="linkedin"></a></li>

											<li><a href="#" data-original-title="picasa" class="picasa"></a></li>

											<li><a href="#" data-original-title="pintrest" class="pintrest"></a></li>

											<li><a href="#" data-original-title="rss" class="rss"></a></li>

											<li><a href="#" data-original-title="skype" class="skype"></a></li>

											<li><a href="#" data-original-title="spotify" class="spotify"></a></li>

											<li><a href="#" data-original-title="stumbleupon" class="stumbleupon"></a></li>

											<li><a href="#" data-original-title="tumblr" class="tumblr"></a></li>

											<li><a href="#" data-original-title="twitter" class="twitter"></a></li>

											<li><a href="#" data-original-title="vimeo" class="vimeo"></a></li>

											<li><a href="#" data-original-title="wordpress" class="wordpress"></a></li>

											<li><a href="#" data-original-title="xing" class="xing"></a></li>

											<li><a href="#" data-original-title="yahoo" class="yahoo"></a></li>

											<li><a href="#" data-original-title="youtube" class="youtube"></a></li>

											<li><a href="#" data-original-title="vk" class="vk"></a></li>

											<li><a href="#" data-original-title="instagram" class="instagram"></a></li>

										</ul>

									</div>

								</div>

							</div>

						</div>

					</div>

				</div>

			</div>

			<!-- END PAGE CONTENT-->

		</div>

		<!-- END PAGE CONTAINER-->

	</div>

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