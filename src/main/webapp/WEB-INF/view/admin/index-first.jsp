<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<meta charset="utf-8" />
<title>云口腔 | 首页</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<%@include file="/common/admin/static.jsp"%>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<!-- END PAGE LEVEL STYLES -->
<link rel="shortcut icon" href="media/image/favicon.ico" />
</head>
<body class="page-header-fixed">
	<!-- BEGIN HEADER -->
	<!-- END HEADER -->
	<!-- BEGIN CONTAINER -->
	<div class="page-container">
		<!-- BEGIN SIDEBAR -->
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="first-page-content">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<!-- BEGIN PAGE HEADER-->
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN SAMPLE FORM PORTLET-->
						<h3 class="first-page-title">
							添加诊所 <small>第一次使用,需要添加您的诊所</small>
						</h3>
						<div class="portlet box green">
							<div class="portlet-title">
								<div class="caption">
									<i class="icon-reorder"></i>添加
								</div>
							</div>
							<div class="portlet-body form">
								<div id="message-success" class="alert alert-success hide">
									<strong>添加成功!</strong>
								</div>
								<div id="message-error" class="alert alert-error hide">
									<strong>错误!</strong> <span id="message-error-message"></span>
								</div>
								<!-- BEGIN FORM-->
								<form id="form-add-clinic" method="POST" action="${root}/clinic/add?token=${token}" class="form-horizontal">
									<div class="control-group">
										<label class="control-label">诊所名称</label>
										<div class="controls">
											<input type="text" id="clinicName" name="name" class="span6 m-wrap"> <span class="help-inline">必填</span>
										</div>
									</div>
									<div class="control-group">
										<label class="control-label">诊所地址</label>
										<div class="controls">
											<input type="text" id="clinicAddress" name="address" class="span6 m-wrap"> <span class="help-inline">必填</span>
										</div>
									</div>
									<div class="form-actions">
										<input type="submit" id="submit-add-clinic" class="btn green" value="提交">
									</div>
								</form>
								<!-- END FORM-->
							</div>
						</div>
						<!-- END SAMPLE FORM PORTLET-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
			</div>
			<!-- END PAGE CONTAINER-->
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	<!-- BEGIN FOOTER -->
	<div class="footer">
		<div class="footer-inner">2013 &copy; Metronic by keenthemes.</div>
		<div class="footer-tools">
			<span class="go-top"> <i class="icon-angle-up"></i>
			</span>
		</div>
	</div>
	<script src="${root}/resources/admin/js/jquery-1.10.1.min.js" type="text/javascript"></script>
	<script src="${root}/resources/js/jquery.form.js" type="text/javascript"></script>
	<script type="text/javascript">
		$(function() {
			var ajaxObj = {
					success : function(data) {
						if(data.code=='000000'){
							$("#message-error").hide();
							$("#message-success").show();
						}else{
							$("#message-success").hide();
							$("#message-error-message").html(data.memo);
							$("#message-error").show();
						}
					},
					error:function(error){
						alert("网络不通或服务器错误，给您带来的不便非常抱歉！");
					}
			};
			$("#submit-add-clinic").click(function() {
				if(!$("#clinicName").val()){
					$("#message-error-message").html("诊所名称必填");
					$("#message-error").show();	
					return false;
				}
				if(!$("#clinicAddress").val()){
					$("#message-error-message").html("诊所地址必填");
					$("#message-error").show();
					return false;
				}
				$("#form-add-clinic").ajaxSubmit(ajaxObj);
				return false;
			});
		});
	</script>
</html>