<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Neusoft BBS</title>

<link rel="shortcut icon" href="images/favicon.png" />




<!-- Style Sheet-->
<link rel="stylesheet" href="style.css" />
<link rel='stylesheet' id='bootstrap-css-css'
	href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css'
	media='all' />
<link rel='stylesheet' id='main-css-css' href='css/main5152.css?ver=1.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='css/custom5152.html?ver=1.0' type='text/css' media='all' />




</head>

<body>

	<!-- Start of Header -->
	<div class="header-wrapper">

		<div class="container">


			<div class="logo-container">

				<a href="index-2.html" title="Neusoft BBS"> <img
					src="images/logo.png" alt="Neusoft BBS">
				</a> <span class="tag-line">在线教育论坛欢迎您</span>
			</div>


			<!-- Start of Main Navigation -->
			<nav class="main-nav">
			<div class="menu-top-menu-container">
				<ul id="menu-top-menu" class="clearfix">
					
				</ul>
			</div>
			</nav>
			<!-- End of Main Navigation -->

		</div>

	</div>
	<!-- End of Header -->

	<!-- Start of Search Wrapper -->
	<div class="search-area-wrapper">
		<div class="search-area container">

		</div>
	</div>
	<!-- End of Search Wrapper -->

	<!-- Start of Page Container -->
	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">


					<h1 class="post-title">
						<a href="#">注册</a>
					</h1>
					<hr>




					<form id="contact-form" class="row" action="Register" method="post">

						<div class="span2">
							<label for="name">名字<span>*</span>
							</label>
						</div>
						<div class="span6">
							<input type="text" name="username" id="name"
								class="required input-xlarge" value="" placeholder="请输入你的用户名">
						</div>

						<div class="span2">
							<label for="name">昵称 <span>*</span>
							</label>
						</div>
						<div class="span6">
							<input type="text" name="name" id="name"
								class="required input-xlarge" value="" placeholder="请输入你的用户名">
						</div>

						<div class="span2">
							<label for="email">邮箱 <span>*</span></label>
						</div>
						<div class="span6">
							<input type="text" name="email" id="email"
								class="email required input-xlarge" value=""
								title="* Please provide a valid email address">
						</div>

						<div class="span2">
							<label for="reason">密码 </label>
						</div>
						<div class="span6">
							<input type="password" name="password" id="reason"
								class="input-xlarge" value="">
						</div>
						<div class="span2">
							<label for="name">出生年月日<span>*</span>
							</label>
						</div>

						<div class="span6" style="line-height: 30px">

							<select name="year" style="width: 80px">
								<c:forEach begin="1980" end="2017" step="1" var="year">
									<option value="${year}">${year}</option>
								</c:forEach>
							</select>- <select name="month" style="width: 80px">
								<c:forEach begin="1" end="12" step="1" var="mouth">
									<option value="${mouth }">${mouth }</option>
								</c:forEach>
							</select>- <select name="day" style="width: 80px">
								<c:forEach begin="1" end="31" step="1" var="day">
									<option value="${day}">${day}</option>
								</c:forEach>
							</select>
						</div>



						<div class="span2">
							<label for="message">地址 <span>*</span>
							</label>
						</div>
						<div class="span6">
							<input type="text" name="address" id="name"
								class="required input-xlarge" value="" placeholder="请输入你的地址">
						</div>

						<div class="span2">
							<label for="reason">性别 </label>
						</div>
						<div class="span6">
							<input type="radio" id="male" name="sex" value="M" checked />男<input
								type="radio" id="female" name="sex" value="F" />女

						</div>

						<div class="span6 offset2 bm30">
							<input type="submit" name="submit" value="注册" class="btn btn-inverse"> <img src="images/loading.gif"
								id="contact-loader" alt="Loading...">
						</div>

						<div class="span6 offset2 error-container"></div>
						<div class="span8 offset2" id="message-sent"></div>

					</form>
				</div>
				<!-- end of page content -->



				<!-- end of sidebar -->
			</div>
		</div>
	</div>
	<!-- End of Page Container -->





</body>
</html>