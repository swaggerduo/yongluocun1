<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>东软学术论坛</title>

<link rel="shortcut icon" href="images/favicon.png" />

<!-- Style Sheet-->
<link rel="stylesheet" href="style.css" />
<link rel='stylesheet' css-css'  href='css/bootstrap5152.css?ver=1.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='responsive-css-css'
	href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='pretty-photo-css-css'
	href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css'
	media='all' />
<link rel='stylesheet' id='main-css-css' href='css/main5152.css?ver=1.0'
	type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='css/custom5152.html?ver=1.0' type='text/css' media='all' />

<link rel="stylesheet" href="css/test.css" type='text/css' />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script>
                <![endif]-->

</head>

<body>

	<!-- Start of Header -->
	<div class="header-wrapper">
		<header>
		<div class="container">


			<div class="logo-container">
				<!-- Website Logo -->
				<a href="#" title="东软学术论坛"> <img src="images/logo.png"
					alt="Knowledge Base Theme">
				</a> <span class="tag-line">欢迎您</span>
			</div>


			<!-- Start of Main Navigation -->
			<nav class="main-nav">
			<div class="menu-top-menu-container">
				<ul id="menu-top-menu" class="clearfix">
					<li class="current-menu-item"><a href="show">首页</a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					<li><a href="#"></a></li>
					
					<c:choose>
						<c:when test="${user==null}">
							<li><a href="loginn.jsp">登陆</a></li>
							<li><a href="Resgister.jsp">注册</a></li>
						</c:when>
						<c:otherwise> 
							<li><a href="showUserMain?uid=${user.uid}">用户：${user.uname}</a></li>
							<li><a href="getUserinfo">查看个人信息</a></li>
							<li><a href="loginn.jsp">exit</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
			</nav>
			<!-- End of Main Navigation -->

		</div>
		</header>
	</div>
	<!-- End of Header -->

	<!-- Start of Search Wrapper -->
	<div class="search-area-wrapper">
		<div class="search-area container">
			<h3 class="search-header">Have a Question?</h3>
			<p class="search-tag-line">如果你有任何问题，可以在下面询问，或者输入你要找的东西。</p>
			<form id="search-form" class="search-form clearfix" method="get" action="search" autocomplete="off">
                                        <input class="search-term required" type="text" id="s" name="searchKeyword" placeholder="请输入关键词" title="* 请输入查找内容!" />
                                        <input class="search-btn" type="submit" value="Search" />
                                        <div id="search-error-container"></div>
                                </form>
		</div>
	</div>

	<!-- Start of Page Container -->
	<div class="page-container">

		<div class="container">

			<div class="row">

				<!-- start of page content -->
				<div class="span8 page-content">

					<!-- Basic Home Page Template -->
					<form action="publish" method="post">
					<a href="#">发表帖子</a>
					<div>
							<select name="pocid" id="pocid" width="80">
							
								<option value="0">选择主题分类</option>
								<option value="1">c++</option>
								<option value="2">c</option>
								<option value="3">java</option>
								<option value="4">.net</option>
								<option value="5">JavaScript</option>
								<option value="6">HTML</option>
								<option value="7">CSS</option>
								<option value="8">python</option>
								<option value="9">PHP</option>
							</select> 請輸入帖子標題 <input name="potitle" type="text">
							<div>

								<textarea id="text" name="pocontent" class="textarea" rows="15"
									cols="60"></textarea>


							</div>
					</div>

					<div class="mtm mbm pnpost">
						<button type="submit" name="upload">
							<span>发表帖子</span>
						</button>
						<input type="hidden" id="postsave" name="save" value="" />
						<button type="button">
							<em>保存草稿</em>
						</button>
					</div>
					</form>

				</div>
			</div>
		</div>
	</div>
	<!-- End of Page Container -->

	<!-- Start of Footer -->
	<footer id="footer-wrapper">
	<div id="footer" class="container">
		<div class="row">
             <div class="span3">
				<section class="widget">
				<form action="show?action=showjava" method="post">
				<h3 class="title">java帖子区</h3>
				<ul >
				<c:forEach items="${postName}" var="item">
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>
			<div class="span3">
				<section class="widget">
				<form action="show?cyuy=showc" method="post">
				<h3 class="title">c帖子区</h3>
				<ul >
				<c:forEach items="${clist}" var="item">
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>

			<div class="span3">
				<section class="widget">
				<form action="show?cjiajia=showc++" method="post">
				<h3 class="title">c++帖子区</h3>
				<ul >
				<c:forEach items="${cjiajialist}" var="item">
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>

			<div class="span3">
				<section class="widget">
				<h3 class="title">其他</h3>

				<ul>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet, ">帖子名</a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,">帖子名</a></li>、
				</ul>
				</section>
			</div>

		</div>
	</div>
	<!-- end of #footer --> <!-- Footer Bottom -->
	<div id="footer-bottom-wrapper">
		<div id="footer-bottom" class="container">
			<div class="row">
				<div class="span6">
					<p class="copyright">
						Copyright © 2013. All Rights Reserved by KnowledgeBase.Collect
						from <a href="http://www.cssmoban.com/" title="网页模板"
							target="_blank">网页模板</a>
					</p>
				</div>
				<div class="span6">
					<!-- Social Navigation -->
					<ul class="social-nav clearfix">
						<li class="linkedin"><a target="_blank" href="#"></a></li>
						<li class="stumble"><a target="_blank" href="#"></a></li>
						<li class="google"><a target="_blank" href="#"></a></li>
						<li class="deviantart"><a target="_blank" href="#"></a></li>
						<li class="flickr"><a target="_blank" href="#"></a></li>
						<li class="skype"><a target="_blank" href="skype:#?call"></a></li>
						<li class="rss"><a target="_blank" href="#"></a></li>
						<li class="twitter"><a target="_blank" href="#"></a></li>
						<li class="facebook"><a target="_blank" href="#"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Footer Bottom --> </footer>
	<!-- 结束的页脚 -->

	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript' src='js/jquery.easing.1.3.js'></script>
	<script type='text/javascript'
		src='js/prettyphoto/jquery.prettyPhoto.js'></script>
	<script type='text/javascript' src='js/jflickrfeed.js'></script>
	<script type='text/javascript' src='js/jquery.liveSearch.js'></script>
	<script type='text/javascript' src='js/jquery.form.js'></script>
	<script type='text/javascript' src='js/jquery.validate.min.js'></script>
	<script type='text/javascript' src='js/custom.js'></script>

</body>
</html>