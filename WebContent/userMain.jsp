<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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

	<!-- 页面容器的开始 -->
	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- 页面内容的开始 -->
				<div class="span8 page-content">

					<!-- 基本主页模板 -->
					<div class="row separator">
						<section class="span4 articles-list">
						<h3 class="title">${uinfo.uname}发的帖子</h3>
						<ul class="articles">
						    <c:forEach items="${postList}" var="item">
							<li class="article-entry standard">
								<h4>
									<a href="showContent?poid=${item.poid}">${item.potitle}</a>
								</h4> <span class="article-meta">${item.potime} </span> <span
								class="like-count">点击数：${item.poclicknum}</span>
							</li>
							
                              
                                </c:forEach>
                            
						</ul>
						<a href="publish.jsp" class="btn">发表帖子</a>
						</section>

						<section class="span4 articles-list">
						<h3 class="title">${uinfo.uname }收藏的帖子</h3>
						<ul class="articles">
							<c:forEach items="${favoritePostName}" var="item">
								<li class="article-entry standard">
									<h4>
										<a href="showContent?poid=${item.poid}">${item.potitle}</a>
									</h4> <span class="article-meta">${item.potime}</span> 
									<span class="like-count">点击数：${item.poclicknum}</span>
								</li>
							</c:forEach>
						</ul>
						</section>
					</div>
				</div>
				<!-- end of page content -->


				<!-- start of sidebar -->
				<aside class="span4 page-sidebar"> <section class="widget">
				<div class="support-widget">
					<h3 class="title">帮助</h3>
				<p class="intro">遇到问题？如果需要请联系我们：123456</p>
				</div>
				</section> <section class="widget">
				<div class="quick-links-widget">
	
				   <h3 class="title">${uinfo.uname}关注的人</h3>
				   
					<ul id="menu-quick-links" class="menu clearfix">
					<c:forEach items="${userInfo}" var="item">
						<li><a href="showUserMain?uid=${user.uid}">${item.uname}</a></li>
				    </c:forEach>
					</ul>
				</div>
				</section> </aside>
				<!-- end of sidebar -->
			</div>
		</div>
	</div>
	<!-- End of Page Container -->


	<!-- Footer Bottom -->
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
	<!-- End of Footer Bottom -->

	</footer>
	<!-- 结束的页脚 -->



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