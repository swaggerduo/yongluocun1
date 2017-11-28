<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

        <!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en-US"> <![endif]-->
        <!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en-US"> <![endif]-->
        <!--[if IE 8]>    <html class="lt-ie9" lang="en-US"> <![endif]-->
        <!--[if gt IE 8]><!--> <html lang="en-US"> <!--<![endif]-->
        <head>
                <!-- META TAGS -->
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0">

                <title>Knowledge Base Theme</title>

                <link rel="shortcut icon" href="images/favicon.png" />

                <!-- Style Sheet-->
                <link rel="stylesheet" href="style.css"/>
                <link rel='stylesheet' id='bootstrap-css-css'  href='css/bootstrap5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='responsive-css-css'  href='css/responsive5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='pretty-photo-css-css'  href='js/prettyphoto/prettyPhotoaeb9.css?ver=3.1.4' type='text/css' media='all' />
                <link rel='stylesheet' id='main-css-css'  href='css/main5152.css?ver=1.0' type='text/css' media='all' />
                <link rel='stylesheet' id='custom-css-css'  href='css/custom5152.html?ver=1.0' type='text/css' media='all' />


                <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
                <!--[if lt IE 9]>
                <script src="js/html5.js"></script></script>
                <![endif]-->

        </head>

        <body>
<form action="collect" method="post"></form>
                <!-- Start of Header -->
                <div class="header-wrapper">
                        <header>
                                <div class="container">


                                        <div class="logo-container">
                                                <!-- Website Logo -->
                                                <a href="index.html"  title="Knowledge Base Theme">s
                                                        <img src="images/logo.png" alt="Knowledge Base Theme">
                                                </a>
                                                <span class="tag-line">Premium WordPress Theme</span>
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
                <!-- End of Search Wrapper -->

                <!-- Start of Page Container -->
                <div class="page-container">
                        <div class="container">
                          <div class="row">

                                        <!-- start of page content -->
                                        <div class="span8 page-content">

                                                

                                                <article class=" type-post format-standard hentry clearfix">


                                                        <h1 class="post-title"><a href="#">${postContent.potitle}</a></h1>

                                                        <div class="post-meta clearfix">
                                                                <span class="date">${postContent.potime }</span>
                                                                <span class="category"><a href="PostList?pocid=${postcate.pocid }">${postcate.pocname }</a></span>
                                                                <span class="comments">${commentNum}</span>

																<c:if test="${postContent.uid == user.uid }">
                           										<span class="comments" align="right"><a href="delPost?poid=${postContent.poid }" title="删除帖子">删除帖子</a></span>
                           										</c:if>
                                                        </div><!-- end of post meta -->

                                                        <p>${postContent.pocontent }</p>

                                                       

                                                </article>

                                                </article>
                                                

                                          <div class="like-btn">

													<c:if test="${isFavorited}">
                                                        <form >
                                                       			<a href="likePost?action=like&poid=${postContent.poid }">
                                                                <span class="like-it ">收藏帖子</span>
                                                                </a>
                                                        </form>
                                                    </c:if>
                                                    <c:if test="${!isFavorited}">
                                                        <form >
                                                        	<a href="likePost?action=unlike&poid=${postContent.poid }">
                                                                <span class="like-it ">已收藏</span>
                                                                </a>
                                                        </form>
                                                    </c:if>
	

                                                        <span class="tags">
                                                                <strong>Tags:&nbsp;&nbsp;</strong><a href="PostList?pocid=${postcate.pocid }" rel="tag">${postcate.pocname }</a>
                                                        </span>

                                          </div>

                                                <section id="comments">

                                                        <h3 id="comments-title">评论</h3>

                                                        <ol class="commentlist">

                                                              <c:forEach items="${commentList}" var="item">
                                                                <li class="comment even thread-odd thread-alt depth-1" id="li-comment-4">
                                                                        <article id="comment-4">
                

                                                                                <div class="comment-meta">

                                                                                        <h5 class="author">
                                                                                                <cite class="fn"><a href="getUserinfo?uid=${item.uid }" rel="external nofollow" class="url">${item.uname}</a></cite>
                                                                                        </h5>

                                                                                        <p class="date">
                                                                                                        <time datetime="2013-02-26T13:27:04+00:00">${item.ctime }</time>
                                                                                        </p>

                                                                                </div><!-- end .comment-meta -->

                                                                                <div class="comment-body">
                                                                                        <p>${item.ccontent }</p>
                                                                                </div><!-- end of comment-body -->

                                                                        </article><!-- end of comment -->
                                                                </li>
                                                                </c:forEach>
                                                        </ol>

                                                        <form action="addComment?poid=${postContent.poid }" method="post">
                                                                        <div>
                                                                                <label for="comment">评论帖子</label>
                                                                               
                                                                                <textarea class="span8" name="commentContent" id="comment" cols="58" rows="10"></textarea>
                                                                                
                                                                        </div>

                                                                        <p class="allowed-tags">你可以使用html代码</p>

                                                                        <div>
                                                                                <input class="btn" name="submit" type="submit" id="submit"  value="发送评论">
                                                                        </div>

                                                                </form>

                                  </div>

                                          <!-- end of sidebar -->
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
					<li><a href="showContent?poid=${item.poid}" title="Lorem ipsum dolor sit amet,">${item.potitle}</a></li>
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
					<li><a href="showContent?poid=${item.poid}" title="Lorem ipsum dolor sit amet,">${item.potitle}</a></li>
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
					<li><a href="showContent?poid=${item.poid}" title="Lorem ipsum dolor sit amet,">${item.potitle}</a></li>
				</c:forEach>
				</ul>
				</form>
				</section>
			</div>

			<div class="span3">
				<section class="widget">
				<h3 class="title">其他</h3>

				<ul>
					<li><a href="#" title="Lorem ipsum dolor sit amet,"></a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,"></a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,"></a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet, "></a></li>
					<li><a href="#" title="Lorem ipsum dolor sit amet,"></a></li>
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
                <script type='text/javascript' src='js/prettyphoto/jquery.prettyPhoto.js'></script>
                <script type='text/javascript' src='js/jflickrfeed.js'></script>
                <script type='text/javascript' src='js/jquery.liveSearch.js'></script>
                <script type='text/javascript' src='js/jquery.form.js'></script>
                <script type='text/javascript' src='js/jquery.validate.min.js'></script>
                <script type='text/javascript' src='js/custom.js'></script>
           </body>
</html>

