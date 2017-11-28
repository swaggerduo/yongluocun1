<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
<!--[if gt IE 8]><!-->
<html lang="en-US">
<!--<![endif]-->
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>东软bbs论坛</title>

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
<link rel='stylesheet' id='blue-skin-css'
	href='css/blue-skin5152.css?ver=1.0' type='text/css' media='all' />
<link rel='stylesheet' id='custom-css-css'
	href='css/custom5152.html?ver=1.0' type='text/css' media='all' />


<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
            <script src="js/html5.js"></script></script>
                <![endif]-->

</head>

<body>

	<!-- Start of Header -->
	<div class="header-wrapper">
		<header>
			<div class="container">


				<div class="logo-container">
					<!-- Website Logo -->
					<a href="index-2.html" title="Knowledge Base Theme"> <img
						src="images/logo.png" alt="Knowledge Base Theme">
					</a> <span class="tag-line">本组持有</span>
				</div>


				<!-- Start of Main Navigation -->
				<nav class="main-nav">
					<div class="menu-top-menu-container">
						<ul id="menu-top-menu" class="clearfix">
							<li><a href="index-2.html">首页</a></li>
							<li><a href="home-categories-description.html">Home 2</a></li>
							<li><a href="home-categories-articles.html">Home 3</a></li>
							<li><a href="articles-list.html">Articles List</a></li>
							<li><a href="faq.html">FAQs</a></li>
							<li><a href="#">Skins</a>
								<ul class="sub-menu">
									<li class="current-menu-item"><a href="blue-skin.html">Blue
											Skin</a></li>
									<li><a href="green-skin.html">Green Skin</a></li>
									<li><a href="red-skin.html">Red Skin</a></li>
									<li><a href="index-2.html">Default Skin</a></li>
								</ul></li>
							<li><a href="#">More</a>
								<ul class="sub-menu">
									<li><a href="full-width.html">Full Width</a></li>
									<li><a href="elements.html">Elements</a></li>
									<li><a href="page.html">Sample Page</a></li>
								</ul></li>
							<li><a href="contact.html">Contact</a></li>
						</ul>
					</div>
				</nav>
				<!-- End of Main Navigation -->

			</div>
		</header>
	</div>
	<!-- End of Header -->


	<!-- Start of Page Container -->
	<form action="CateGory" method="post">
		<!-- start of page content -->
		<div class="span8 page-content">

			<!-- Basic Home Page Template -->
			<div class="row separator">
				<section class="span4 articles-list">

					<h3>所有分区</h3>

					<c:forEach items="${PageUtil.list }" var="category">
						<ul class="articles">
							<li class="article-entry standard">
								<h3>
									<a href="PostList?pocid=${category.pocid }">${category.pocname }</a>
								</h3>
							</li>
						</ul>
					</c:forEach>
					总共有${PageUtil.totalRecord}个分区，共有${PageUtil.totalPage }页 
					<a href="CateGory?pageNum=1">首页</a>
					<c:if test="${PageUtil.pageNum != PageUtil.start }">
						<a href="CateGory?pageNum=${PageUtil.pageNum -1}">上一页</a>
					</c:if>
					<c:if test="${PageUtil.pageNum == PageUtil.start }">
						<c:forEach begin="${PageUtil.start }" end="${PageUtil.end }"
							step="1" var="num">
							<c:if test="${PageUtil.pageNum == num }">
				${num }
			</c:if>
							<c:if test="${PageUtil.pageNum != num }">
								<a href="CateGory?pageNum=${num }">${num }</a>
							</c:if>
						</c:forEach>
					</c:if>
					<c:if test="${PageUtil.pageNum != PageUtil.end}">
						<a href="CateGory?pageNum=${PageUtil.pageNum +1}">下一页</a>
					</c:if>
					<a href="CateGory?pageNum=${PageUtil.end }">尾页</a>
				</section>
			</div>
		</div>
	</form>
	<!-- end of page content -->


	<!-- start of sidebar -->
	<aside class="span4 page-sidebar">

		<section class="widget">
			<div class="support-widget">
				<h3 class="title">帮助</h3>
				<p class="intro">遇到问题？如果需要请联系我们：123456</p>
			</div>
		</section>

		<section class="widget">
			<div class="quick-links-widget">
				<h3 class="title">快捷通道</h3>
				<ul id="menu-quick-links" class="menu clearfix">
					<li><a href="index-2.html">首页</a></li>
					<li><a href="articles-list.html">Articles List</a></li>
					<li><a href="faq.html">FAQs</a></li>
					<li><a href="contact.html">Contact</a></li>
				</ul>
			</div>
		</section>



	</aside>
	<!-- end of sidebar -->

	<!-- End of Page Container -->

	<!-- Start of Footer -->



	<script
		src="http://twitterjs.googlecode.com/svn/trunk/src/twitter.min.js"
		type="text/javascript"></script>
	<script type="text/javascript">
		getTwitters("twitter_update_list", {
			id : "960development",
			count : 3,
			enableLinks : true,
			ignoreReplies : true,
			clearContents : true,
			template : "%text% <span>%time%</span>"
		});
	</script>

	<!-- end of #footer -->

	<!-- Footer Bottom -->
	
	<!-- End of Footer Bottom -->


	<!-- End of Footer -->

	<a href="#top" id="scroll-top"></a>

	<!-- script -->
	<script type='text/javascript' src='js/jquery-1.8.3.min.js'></script>
	<script type='text/javascript'
		src='js/jquery.easing.1.34e44.js?ver=1.3'></script>
	<script type='text/javascript'
		src='js/prettyphoto/jquery.prettyPhotoaeb9.js?ver=3.1.4'></script>
	<script type='text/javascript'
		src='js/jquery.liveSearchd5f7.js?ver=2.0'></script>
	<script type='text/javascript' src='js/jflickrfeed.js'></script>
	<script type='text/javascript' src='js/jquery.formd471.js?ver=3.18'></script>
	<script type='text/javascript'
		src='js/jquery.validate.minfc6b.js?ver=1.10.0'></script>
	<script type='text/javascript' src='js/custom5152.js?ver=1.0'></script>

</body>
</html>



