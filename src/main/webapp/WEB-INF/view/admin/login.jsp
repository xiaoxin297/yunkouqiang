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
<title>云口腔 | 登录</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%@include file="/common/admin/static.jsp"%>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="${root}/resources/admin/css/login.css" rel="stylesheet" type="text/css" />
<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="login">
	<!-- BEGIN LOGO -->
	<div class="logo">
		<img src="${root}/resources/admin/image/logo-big.png" alt="" />
	</div>
	<!-- END LOGO -->
	<!-- BEGIN LOGIN -->
	<div class="content">
		<!-- BEGIN LOGIN FORM -->
		<form id="loginForm" method="POST" class="form-vertical login-form" action="${root}/login">
			<h3 class="form-title">登 录</h3>
			<div class="alert alert-error hide">
				<button class="close" data-dismiss="alert"></button>
				<span>输入手机号和密码.</span>
			</div>
			<div class="alert alert-error-login hide">
				<button class="close" data-dismiss="alert"></button>
				<span>手机号和密码不匹配.</span>
			</div>
			<div class="control-group">
				<!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
				<label class="control-label visible-ie8 visible-ie9">手机号码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-user"></i> <input class="m-wrap placeholder-no-fix" type="text" placeholder="电话号码" id="name" name="phone" />
					</div>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label visible-ie8 visible-ie9">密码</label>
				<div class="controls">
					<div class="input-icon left">
						<i class="icon-lock"></i> <input class="m-wrap placeholder-no-fix" type="password" placeholder="密码" id="password" name="password" />
					</div>
				</div>
			</div>
			<div class="form-actions">
				<label class="checkbox"> <input type="checkbox" name="remember" value="1" /> 记住密码
				</label>
				<button type="submit" id="loginSubmit" class="btn green pull-right">
					登录 <i class="m-icon-swapright m-icon-white"></i>
				</button>
			</div>
			<div class="forget-password">
				<h4>忘记密码 ?</h4>
				<p>
					别担心, 点击 <a href="javascript:;" class="" id="forget-password">这里</a> 重置您的密码
				</p>
			</div>
			<div class="create-account">
				<p>
					还没有新账户 ?&nbsp; <a href="${root}/forword/web/register" id="register-btn" class="">注册新用户</a>
				</p>
			</div>
		</form>
	</div>
	<div class="copyright">2015 &copy; Metronic. Admin Dashboard Template.</div>
	<form action="${root}/index" method="POST">
	
	</form>
</body>
<script src="${root}/resources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${root}/resources/admin/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
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
<script src="${root}/resources/js/jquery.form.js" type="text/javascript"></script>
<script src="${root}/resources/admin/js/jquery.validate.min.js" type="text/javascript"></script>
<script src="${root}/resources/admin/js/app.js" type="text/javascript"></script>
<script src="${root}/resources/admin/js/login.js" type="text/javascript"></script>
<script type="text/javascript">
	$(function() {
		App.init();
		Login.init();
	});
</script>
</html>