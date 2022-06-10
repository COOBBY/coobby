<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html dir="ltr" lang="ko">
<head>

<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="SemiColonWeb" />

<!-- Stylesheets
	============================================= -->
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Zilla+Slab:wght@400;500&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="/resources/user/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/style.css"
	type="text/css" />

<link rel="stylesheet" href="/resources/user/css/dark.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/font-icons.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/animate.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet"
	href="/resources/user/demos/medical/css/medical-icons.css"
	type="text/css">
<link rel="stylesheet" href="/resources/user/css/custom.css"
	type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css"
	type="text/css">
<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
<link rel="stylesheet"
	href="/resources/user/css/colors.php?color=193532" type="text/css" />

<!-- Furniture Demo Specific Stylesheet -->
<link rel="stylesheet"
	href="/resources/user/demos/furniture/furniture.css" type="text/css" />
<!-- Furniture Custom Css -->
<link rel="stylesheet"
	href="/resources/user/demos/furniture/css/fonts.css" type="text/css" />
<!-- Furniture Custom Fonts -->
<!-- / -->

<!-- Document Title
	============================================= -->
<title>COOBBY | Nav-Bar</title>
<style>
.menu-font {
	font-size: 16px;
}

#top-login {
	width: 50px;
}

#join {
	width: 70px;
}

#top-login:hover {
	opacity: .5;
}

#join:hover {
	opacity: .5;
}

#userimg {
	width: 55px;
	height: 55px;
	border-radius: 50%;
	cursor:pointer;
}

.header-size-sm #header-wrap #logo img {
	width: 50px;
	height: 30px;
}

.standard-logo {
	height: 35px;
	margin-left: 30px;
}

.retina-logo {
	height: 35px;
	width: 100px;
}

.btn-secondary {
	color: #fff;
	background-color: #ffffff;
	border-color: #ffffff;
}

.btn-secondary:hover {
	color: #fff;
	background-color: #ffffff;
	border-color: #ffffff;
}

.header-misc-icon>a {
	display: block;
	position: relative;
	width: 120px;
	height: 20px;
	font-size: 1.125rem;
	line-height: 20px;
	text-align: center;
	color: #333;
	-webkit-transition: color .3s ease-in-out;
	-o-transition: color .3s ease-in-out;
	transition: color .3s ease-in-out;
}



#top-cart-trigger {
	font-size: small;
	cursor:pointer;
}

.top-cart-content {
    opacity: 0;
    position: absolute;
    width: 150px;
    border: 1px solid #EEE;
    border-top: 2px solid #1ABC9C;
    top: calc( 100% + 1px );
    right: -15px;
    margin: -10000px 0 0;
    z-index: auto;
    -webkit-transition: opacity .5s ease, top .4s ease;
    -o-transition: opacity .5s ease, top .4s ease;
    transition: opacity .5s ease, top .4s ease;
    text-align: center;
}

</style>

</head>	

<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->


	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<!-- Header
		============================================= -->
		<header id="header" class="full-header">
			<div id="header-wrap">
				<div class="container">
					<div class="header-row">

						<!-- Logo
						============================================= -->
						<div id="logo">
							<a href="/user/mainpage" class="standard-logo"><img
								src="/resources/img/coobbylogo.png" /></a>
								 <a href="/user/mainpage" style="width: 120px;"
								class="retina-logo" data-dark-logo="images/logo-dark@2x.png"><img
								src="/resources/img/coobbylogo.png" /></a>
						</div>
						<!-- #logo end -->

						<div class="header-misc">

							<!-- 회원
							============================================= -->
							<c:choose>
								<c:when test="${sessionScope.user eq null}">
									<a href="/user/login/loginpage">LOGIN</a>
								</c:when>


								<c:when test="${sessionScope.user.memAuth eq 0}">

									<div id="top-cart" class="header-misc-icon  d-sm-block">
										<div id="top-cart-trigger">${sessionScope.user.memNickname} 관리자님</div>
										<div class="top-cart-content">
											<div class="top-cart-title">
												<a class="dropdown-item" href="/admin/dashboard">관리자</a>
											</div>
											<div class="top-cart-title">
												<a class="dropdown-item" href="/user/login/logout">Logout
												</a>
											</div>
										</div>
									</div>
									<!-- #top-cart end -->

								</c:when>

								<c:otherwise>
									
									
									<div id="top-cart" class="header-misc-icon d-sm-block">
										<div id="userimgcontain" style="margin-right: 15px">
											<a id="top-cart-trigger">
												<img id="userimg" src="/resources/user/images/about/1.jpg"
											alt=""  style="margin: 10px	"/>${sessionScope.user.memNickname}님
											</a>
										</div>
										<div class="top-cart-content">
											<div class="top-cart-title">
												<a class="dropdown-item" href="/user/mypage/scrap">MyPage</a>
											</div>
											<div class="top-cart-title">
												<a class="dropdown-item" href="/user/feed/MyFeed">My Feed</a>
											</div>
											<div class="top-cart-title">
												<a class="dropdown-item" href="/user/login/logout">Logout</a>
											</div>
										</div>
									</div>
									<!-- #top-cart end -->
									<div></div>
									
								</c:otherwise>
							</c:choose>

						</div>


						<div id="primary-menu-trigger">
							<svg class="svg-trigger" viewBox="0 0 100 100">
								<path
									d="m 30,33 h 40 c 3.722839,0 7.5,3.126468 7.5,8.578427 0,5.451959 -2.727029,8.421573 -7.5,8.421573 h -20"></path>
								<path d="m 30,50 h 40"></path>
								<path
									d="m 70,67 h -40 c 0,0 -7.5,-0.802118 -7.5,-8.365747 0,-7.563629 7.5,-8.634253 7.5,-8.634253 h 20"></path></svg>
						</div>

						<!-- Primary Navigation
						============================================= -->
						<nav class="primary-menu">

							<ul class="menu-container">
								<li class="menu-item"><a class="menu-link"
									href="/user/mainpage"><div class="menu-font">Home</div></a></li>
								<li class="menu-item"><a class="menu-link"
									href="/user/recipe/recipelist"><div
											class="menu-font">Recipe</div></a></li>

								<li class="menu-item"><a href="/user/feed/MainFeed"
									class="menu-link"><div class="menu-font">Community</div></a></li>

								<li class="menu-item"><a class="menu-link"
									href="/user/QnA/QnAlist"><div>
											<i class="bi-megaphone-fill"></i>
										</div></a></li>





							</ul>

						</nav>
						<!-- #primary-menu end -->

						<form class="top-search-form" action="search.html" method="get">
							<input type="text" name="q" class="form-control" value=""
								placeholder="Type &amp; Hit Enter.." autocomplete="off">
						</form>

					</div>
				</div>
			</div>
			<div class="header-wrap-clone"></div>
		</header>
		<!-- #header end -->

	</div>


	<!-- JavaScripts
	============================================= -->
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>

</body>
</html>