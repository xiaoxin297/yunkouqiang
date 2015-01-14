<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>云口腔</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<%@ include file="/common/web/static.jsp"%>
</head>
<body class="no-sidebar">

	<!-- Header Wrapper -->
	<div id="header-wrapper">
		<div class="container">
			<!-- Header -->
			<%@ include file="/common/web/header.jsp"%>
		</div>
	</div>

	<!-- Main Wrapper -->
	<div id="main-wrapper">
		<div class="wrapper style2">
			<div class="inner">
				<div class="container">
					<div id="content">

						<!-- Content -->

						<article>
							<header class="">
								<h2>留言</h2>
								<p>亲，可以把您认为我们做的不好的地方、遇到的系统BUG反馈给我们，以便让我们更好的为您服务</p>
							</header>
							<form method="post" id = "feedbackForm" action="${root}/feedback">
								<div class="row 50%">
									<div class="6u">
										<input type="text" id="phone" name="phone" placeholder="电话" />
									</div>
									<div class="6u">
										<input type="email" id="email" name="email" placeholder="邮箱" />
									</div>
								</div>
								<div class="row 50%">
									<div class="12u">
										<textarea name="content" id="contentBox" placeholder="填写您的意见" rows="6"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="12u">
										<ul class="actions">
											<li><input id="feedbackButton" type="submit" value="提交" /></li>
										</ul>
									</div>
								</div>
							</form>
						</article>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer Wrapper -->
	<%@ include file="/common/web/footer.jsp"%>
</body>
<script type="text/javascript" src="${root}/resources/js/jquery.form.js"></script>
<script type="text/javascript">
	var inputCss = $("#contentBox").css("border");
	$(function() {
		var ajaxObj = {
			success : function(data) {
				if(data.code == "000000"){
					alert("留言成功");
				}
			}
		};
		$("#feedbackButton").click(function() {
			if(!getError("email","您的邮箱格式不正确",checkEmail("email")) ){
				return false;
			}
			if(!getError("contentBox","请填写您的意见", checkIsBlank("contentBox"))){
				return false;
			}
			$('#feedbackForm').ajaxSubmit(ajaxObj);
			return false;
		});
		$("#phone").focus(function() {
			$("#phone").css("border", inputCss);
		});

		$("#email").focus(function() {
			$("#password").css("border", inputCss);
		});

		$("#contentBox").focus(function() {
			$("#contentBox").css("border", inputCss);
		});

	});

	function getError(id, message, check) {
		if (!check) {
			$("#" + id).val("");
			$("#" + id).attr("placeholder", message);
			$("#" + id).css("border", "solid 2px rgba(239, 13, 82, 0.25)");
			return false;
		}
		return true;
	}

	function checkEmail(id) {
		var ss = $("#" + id).val();
		if(ss){
			var reg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
			return reg.test(ss);
		}else{
			return true;
		}
	}

	function checkIsBlank(id) {
		if ($("#" + id).val()) {
			return true;
		}
		return false;
	}

	function checkLength(id) {
		if ($("#" + id).val().length >= 8) {
			return true;
		}
		return false;
	}

	function checkPassword(id) {
		if ($("#password").val() == $("#rerepassword").val()) {
			return true;
		}
		return false;
	}
</script>
</html>