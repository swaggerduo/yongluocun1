<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- META TAGS -->
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>在线教育论坛</title>

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

</head>

<body>

	<!-- Start of Header -->
	<div class="header-wrapper">
		<header>
		<div class="container">


			<div class="logo-container">
				<!-- Website Logo -->
				<a href="#" title="在线教育论坛"> <img src="images/logo.png"
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
							<li><a href="Register.jsp">注册</a></li>
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

	<!-- 页面容器的开始 -->
	<div class="page-container">
		<div class="container">
			<div class="row">

				<!-- 页面内容的开始 -->
				<div class="span8 page-content">

					<!-- 基本主页模板 -->
					<div class="row separator">
						<section class="span4 articles-list">
						<h3>关于教育热帖</h3>
						<ul class="articles">
						<c:forEach items="${hotPageUtil.list}" var="item">
							<li class="article-entry standard">
								<h4>
									<a href="showContent?poid=${item.poid}">${item.potitle}</a>
								</h4> <span class="article-meta">${item.potime }</span> <span class="like-count">点击数${item.poclicknum}</span>
							</li>
						</c:forEach>
						
						</ul>
						<div id="pagination">
							总共有${hotPageUtil.totalRecord }个熱帖，共有${hotPageUtil.totalPage }页<br/>
	<a href="show?hotpageNum=1" class="btn">首页</a>
	<!--如果hotPageUtil.pageNum == 1&&hotPageUtil.pageNum == totalPage，就没有上一页 ,也沒有下一頁 -->
	<c:if test="${hotPageUtil.pageNum == 1 && hotPageUtil.pageNum == hotPageUtil.totalPage}">
		<c:forEach begin="${hotPageUtil.start }" end="${hotPageUtil.end }" step="1"
			var="num">
			<c:if test="${hotPageUtil.pageNum == num }">
				<a href="show?hotpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${hotPageUtil.pageNum != num }">
					<a href="show?hotpageNum=${num } " class="btn">${num }</a>
			</c:if>
		</c:forEach>
	</c:if>
	<!--如果hotPageUtil.pageNum == 1 && hotPageUtil.pageNum != totalPage，就没有上一页  -->
	<c:if test="${hotPageUtil.pageNum == 1 && hotPageUtil.pageNum != hotPageUtil.totalPage}">
		<c:forEach begin="${hotPageUtil.start }" end="${hotPageUtil.end }" step="1"
			var="num">
			<c:if test="${hotPageUtil.pageNum == num }">
				<a href="show?hotpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${hotPageUtil.pageNum != num }">
					<a href="show?hotpageNum=${num } " class="btn">${num }</a>
			</c:if>
		</c:forEach>
		<a href="show?hotpageNum=${hotPageUtil.pageNum+1 }" class="btn">下一页</a>
	</c:if>
	
	<!--如果hotPageUtil.pageNum > 1 && hotPageUtil.pageNum< hotPageUtil.totalPage，有上一页 ，也有下一页 -->
	<c:if test="${hotPageUtil.pageNum > 1 && hotPageUtil.pageNum< hotPageUtil.totalPage}">
	    <a href="show?hotpageNum=${hotPageUtil.pageNum-1 }" class="btn">上一页</a>
		<c:forEach begin="${hotPageUtil.start }" end="${hotPageUtil.end }" step="1"
			var="num">
			<c:if test="${hotPageUtil.pageNum == num }">
					<a href="show?hotpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${hotPageUtil.pageNum != num }">
				<a href="show?hotpageNum=${num }" class="btn">${num }</a>
			</c:if>
		</c:forEach>
		<a href="show?hotpageNum=${hotPageUtil.pageNum+1 }" class="btn">下一页</a>
	</c:if>
	
	<!--如果hotPageUtil.pageNum== hotPageUtil.totalPage没有下一页 -->
	<c:if test="${hotPageUtil.pageNum != 1 && hotPageUtil.pageNum== hotPageUtil.totalPage}">
	    <a href="show?hotpageNum=${hotPageUtil.pageNum-1 }" class="btn">上一页</a>
		<c:forEach begin="${hotPageUtil.start }" end="${hotPageUtil.end }" step="1"
			var="num">
			<c:if test="${hotPageUtil.pageNum == num }">
				<a href="show?hotpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${hotPageUtil.pageNum != num }">
				<a href="show?hotpageNum=${num }" class="btn">${num }</a>
			</c:if>
		</c:forEach>
	</c:if>
	<a href="show?hotpageNum=${ hotPageUtil.totalPage}" class="btn">尾页</a>		
						</div>
						</section>

						<section class="span4 articles-list">
						<h3>新帖排行</h3>
						<ul class="articles">
						<c:forEach items="${recentPageUtil.list}" var="item">
							<li class="article-entry standard">
								<h4>
									<a href="showContent?poid=${item.poid}">${item.potitle}</a>
								</h4> <span class="article-meta">${item.potime }</span> <span class="like-count">点击数${item.poclicknum}</span>
							</li>
						</c:forEach>
						
						</ul>
						<div id="pagination">
							总共有${recentPageUtil.totalRecord }个新帖，共有${recentPageUtil.totalPage }页<br/>
	<a href="show?recentpageNum=1" class="btn">首页</a>
	<!--如果recentPageUtil.pageNum == 1&&recentPageUtil.pageNum == totalPage，就没有上一页 ,也沒有下一頁 -->
	<c:if test="${recentPageUtil.pageNum == 1 && recentPageUtil.pageNum == recentPageUtil.totalPage}">
		<c:forEach begin="${recentPageUtil.start }" end="${recentPageUtil.end }" step="1"
			var="num">
			<c:if test="${recentPageUtil.pageNum == num }">
				<a href="show?recentpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${recentPageUtil.pageNum != num }">
					<a href="show?recentpageNum=${num } " class="btn">${num }</a>
			</c:if>
		</c:forEach>
	</c:if>
	<!--如果recentPageUtil.pageNum == 1 && recentPageUtil.pageNum != totalPage，就没有上一页  -->
	<c:if test="${recentPageUtil.pageNum == 1 && recentPageUtil.pageNum != recentPageUtil.totalPage}">
		<c:forEach begin="${recentPageUtil.start }" end="${recentPageUtil.end }" step="1"
			var="num">
			<c:if test="${recentPageUtil.pageNum == num }">
				<a href="show?recentpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${recentPageUtil.pageNum != num }">
					<a href="show?recentpageNum=${num } " class="btn">${num }</a>
			</c:if>
		</c:forEach>
		<a href="show?recentpageNum=${recentPageUtil.pageNum+1 }" class="btn">下一页</a>
	</c:if>
	
	<!--如果recentPageUtil.pageNum > 1 && recentPageUtil.pageNum< recentPageUtil.totalPage，有上一页 ，也有下一页 -->
	<c:if test="${recentPageUtil.pageNum > 1 && recentPageUtil.pageNum< recentPageUtil.totalPage}">
	    <a href="show?recentpageNum=${recentPageUtil.pageNum-1 }" class="btn">上一页</a>
		<c:forEach begin="${recentPageUtil.start }" end="${recentPageUtil.end }" step="1"
			var="num">
			<c:if test="${recentPageUtil.pageNum == num }">
					<a href="show?recentpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${recentPageUtil.pageNum != num }">
				<a href="show?recentpageNum=${num }" class="btn">${num }</a>
			</c:if>
		</c:forEach>
		<a href="show?recentpageNum=${recentPageUtil.pageNum+1 }" class="btn">下一页</a>
	</c:if>
	
	<!--如果recentPageUtil.pageNum== recentPageUtil.totalPage没有下一页 -->
	<c:if test="${recentPageUtil.pageNum != 1 && recentPageUtil.pageNum== recentPageUtil.totalPage}">
	    <a href="show?recentpageNum=${recentPageUtil.pageNum-1 }" class="btn">上一页</a>
		<c:forEach begin="${recentPageUtil.start }" end="${recentPageUtil.end }" step="1"
			var="num">
			<c:if test="${recentPageUtil.pageNum == num }">
				<a href="show?recentpageNum=${num } " class="btn active">${num }</a>
			</c:if>
			<c:if test="${recentPageUtil.pageNum != num }">
				<a href="show?recentpageNum=${num }" class="btn">${num }</a>
			</c:if>
		</c:forEach>
	</c:if>
	<a href="show?recentpageNum=${ recentPageUtil.totalPage}" class="btn">尾页</a>		
						</div>
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
				<form action="show?usersRanking=showuser" method="post">
					<a href="#"><h3 class="title">高積分用戶</h3></a>
					<ul id="menu-quick-links" class="menu clearfix">
					<c:forEach items="${usersRank}" var="item">
							<li><a href="showUserMain?uid=${item.uid}">${item.uname}</a></li>
						</c:forEach>
					</ul>
				</form>
				</div>
				</section> </aside>
				<!-- end of sidebar -->
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
				<h3 class="title">老师</h3>
				<ul >
				<c:forEach items="${postName}" var="item">
					<li><a href="showContent?poid=${item.poid}" title="Lorem ipsum dolor sit amet,">${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>
			<div class="span3">
				<section class="widget">
				<form action="show?cyuy=showc" method="post">
				<h3 class="title">学生</h3>
				<ul >
				<c:forEach items="${clist}" var="item">
					<li><a href="showContent?poid=${item.poid}" title="Lorem ipsum dolor sit amet,">${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>

			<div class="span3">
				<section class="widget">
				<form action="show?cjiajia=showc++" method="post">
				<h3 class="title">宿管</h3>
				<ul >
				<c:forEach items="${cjiajialist}" var="item">
					<li><a href="showContent?poid=${item.poid}" title="Lorem ipsum dolor sit amet,">${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>

			<div class="span3">
				<section class="widget">
				<h3 class="title"><a href = "CateGory">查看更多分区</a></h3>

				
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