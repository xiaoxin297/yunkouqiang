<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
	<meta charset="utf-8" />
	<title>Metronic | Extra - 500 Page Option 2</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<%@include file="/common/admin/static.jsp"%>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link href="${root}/resources/admin/css/error.css" rel="stylesheet" type="text/css"/>
	<!-- END PAGE LEVEL STYLES -->
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-500-full-page">
	<div class="row-fluid">
		<div class="span12 page-500">
			<div class=" number">
				403
			</div>
			<div class=" details">
				<h3>非法参数</h3>
				<p>
					请不要试图修改请求参数 ！<br />
				</p>
			</div>
		</div>
	</div>
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->

	<!-- BEGIN CORE PLUGINS -->
	<script src="${root}/resources/admin/js/jquery-1.8.3.min.js" type="text/javascript"></script>   
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->  
	<script src="${root}/resources/admin/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${root}/resources/admin/js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="${root}/resources/admin/js/excanvas.js"></script>
	<script src="${root}/resources/admin/js/respond.js"></script>  
	<![endif]-->   
	<script src="${root}/resources/admin/js/breakpoints.js" type="text/javascript"></script>  
	<!-- IMPORTANT! jquery.slimscroll.min.js depends on jquery-ui-1.10.1.custom.min.js --> 
	<script src="${root}/resources/admin/js/jquery.uniform.min.js" type="text/javascript" ></script> 
	<!-- END CORE PLUGINS -->
	<script src="${root}/resources/admin/js/app.js"></script>  
	<script>
		jQuery(document).ready(function() {    
		   App.init();
		});
	</script>
</html>