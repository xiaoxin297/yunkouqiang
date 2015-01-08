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

							<!-- 										<span class="image featured"><img src="images/pic08.jpg" alt="" /></span> -->

							<form method="post" action="#">
								<div class="row 50%">
									<div class="6u">
										<input type="text" name="name" placeholder="电话" />
									</div>
									<div class="6u">
										<input type="email" name="email" placeholder="邮箱" />
									</div>
								</div>
								<div class="row 50%">
									<div class="12u">
										<textarea name="message" placeholder="填写您的意见" rows="6"></textarea>
									</div>
								</div>
								<div class="row">
									<div class="12u">
										<ul class="actions">
											<li><input type="submit" value="提交" /></li>
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
</html>