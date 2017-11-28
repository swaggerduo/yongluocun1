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
				</a> <span class="tag-line">Premium WordPress Theme</span>
			</div>


			<!-- Start of Main Navigation -->
			<nav class="main-nav">
			<div class="menu-top-menu-container">
				<ul id="menu-top-menu" class="clearfix">
					<li><a href="index-2.html">Login</a></li>
					<li><a href="home-categories-description.html">Return main
					</a></li>
					<li class="current-menu-item"><a href="contact.html">Register</a></li>
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
			<h3 class="search-header">Welcome to neusoft BBS</h3>
			<p class="search-tag-line">If you have any question you can ask
				below or enter what you are looking for!</p>

			<form id="search-form" class="search-form clearfix" method="get"
				action="#" autocomplete="off">
				<input class="search-term required" type="text" id="s" name="s"
					placeholder="Type your search terms here"
					title="* Please enter a search term!" /> <input class="search-btn"
					type="submit" value="Search" />
				<div id="search-error-container"></div>
			</form>
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
						<a href="#">编辑个人信息</a>
						
					</h1>
					<hr>
					<form method="post" anction="">
					<img src="">
					<h3>
					id : <input type="text" name="id" id="" placeholder="请重新输入你的id">
						
					
					</h3>
						<h3>
					姓名 : <input type="text" name="username" id="" placeholder="请重新输入你的名字">
						
					
					</h3>
						<h3>
					性别 :  <input type="radio" id="male" name="sex" value="M" checked />M<input type="radio" id="female" name="sex" value="F"  />F
						
					
					</h3>
						<h3>
					地址 : <input type="text" name="" id="" placeholder="请重新输入你的地址">
						
					
					</h3>

						<h3>
					邮箱 : <input type="text" name="" id="" placeholder="请重新输入你的邮箱">
						
					
					</h3>
						<h3>
					生日 : <input type="text" name="" id="" placeholder="请重新输入你的生日">
						
					
					</h3>
					<button type="submit">确定</button>
					<button type="reset">重置</button>
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