<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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

<title>評論</title>

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
<link rel='stylesheet' href='css/test.css' type='text/css' />
<link rel='stylesheet' href='css/new.css' type='text/css' />
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
                <script src="js/html5.js"></script>
                <![endif]-->

<script>
function myclick(id) 
{ 
   if(document.getElementById(id).value == "") 
    { 
        alert("不能为空！"); 
        document.getElementById(id).focus(); 
        return false; 
    } 
    else 
    {
    return true;} 
 
} 


</script>


<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
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
              <h3 class="search-header">东软学生论坛</h3>
			<form id="search-form" method="get" class="search-form clearfix"
				action="LoginService" autocomplete="on">
				
				<h3>
					账号： <input type="text" class="text" name="username"
						placeholder="请输入账号" id="u" >
				</h3>

				<h3>
					密码： <input type="password" class="text" name="password"
						placeholder="请输入密码" / id="p">
				</h3>

				<input class="search-btn" type="submit" value="登录"  onclick="return myclick('u') && "return myclick('p')"/> 
				<a href="Register.jsp"><input
					class="search-btn" type="button" value="注册" /></a>
				</form>
				
				<div id="search-error-container"></div>
			

	</div>
</div>

	<div class="copyrights">
		Collect from <a href="http://www.cssmoban.com/" title="模板之家">模板之家</a>
	</div>


	<footer id="footer-wrapper">

	<!-- End of Footer Bottom --> </footer>
	<!-- End of Footer -->

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
