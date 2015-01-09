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
			<%@ include file="/common/web/header.jsp"%>
		</div>
	</div>
	<!-- Main Wrapper -->
	<div id="main-wrapper">
		<div class="wrapper style2">
			<div class="inner">
				<div class="container">
					<div id="content">
						<article>
							<header class="">
								<h2>用户注册</h2>
								<p>只要输入手机号码、密码就可快速注册，注册成功后直接登录即可使用云口腔管理系统</p>
							</header>
							<form id="registerForm" method="POST" action="${root}/register">
								<div class="row 25%">
									<div class="12u">
										<input placeholder="手机号码"   name="phone" id="phone" type="text">
									</div>
								</div>
								<div class="row 25%">
									<div class="12u">
										<input placeholder="密码 长度至少8位"  id="password" name="password" type="password">
									</div>
								</div>
								<div class="row 25%">
									<div class="12u">
										<input placeholder="确认密码" id="rerepassword" name="rerepassword" type="password">
									</div>
								</div>
								<div class="row 25%">
									<div class="12u">
										<input id="registerButton"  type="submit" value="提交">
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
	var inputCss = $("#phone").css("border");
	$(function() {
		var ajaxObj = {
				success:function(data){
					if(data.code == "000000"){
						alert("注册成功");
						window.location.href="${root}/";
					}
				}
		};
		$("#registerButton").click(function(){
			if(!getError("phone","请输入手机号",checkIsBlank("phone"))){
				return false;
			}
			if(!getError("phone","输入的手机号码不正确",checkPhone("phone"))){
				return false;
			}
			if(!getError("password","请输入密码",checkIsBlank("password"))){
				return false;
			}
			if(!getError("password","密码长度最少8位",checkLength("password"))){
				return false;
			}
			if(!getError("rerepassword","请输入确认密码",checkIsBlank("rerepassword"))){
				return false;
			}
			if(!getError("rerepassword","两次输入密码不一致",checkPassword())){
				return false;
			}
			$('#registerForm').ajaxSubmit(ajaxObj);
			return false;
		});
		$("#phone").focus(function(){
			 $("#phone").css("border",inputCss);
		});
		
		$("#password").focus(function(){
			 $("#password").css("border",inputCss);
		});
		
		$("#rerepassword").focus(function(){
			 $("#rerepassword").css("border",inputCss);
		});
		
	});
	
	function getError(id,message,check){
		if(!check){
			$("#"+id).val("");
			$("#"+id).attr("placeholder",message);
			$("#"+id).css("border","solid 2px rgba(239, 13, 82, 0.25)");
			return false;
		}
		return true;
	}
	
	function checkPhone(id){
        var ss = $("#"+id).val();
        var re= /^(13[0-9]{9})|(15[0-9][0-9]{8})|(18[0-9][0-9]{8})$/
        return re.test(ss);
	}
	
	function checkIsBlank(id){
		if($("#"+id).val()){
			return true;
		}
		return false;
	}
	
	function checkLength(id){
		if($("#"+id).val().length >= 8){
			return true;
		}
		return false;
	}
	
	function checkPassword(id){
		if($("#password").val() == $("#rerepassword").val()){
			return true;
		}
		return false;
	}
	
</script>

</html>