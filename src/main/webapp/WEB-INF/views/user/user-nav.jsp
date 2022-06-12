<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Zilla+Slab:wght@400;500&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="/resources/style.css" type="text/css" />

	<link rel="stylesheet" href="/resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="/resources/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
	<link rel="stylesheet" href="/resources/css/colors.php?color=193532" type="text/css" />

	<!-- Furniture Demo Specific Stylesheet -->
	<link rel="stylesheet" href="/resources/demos/furniture/furniture.css" type="text/css" /> <!-- Furniture Custom Css -->
	<link rel="stylesheet" href="/resources/demos/furniture/css/fonts.css" type="text/css" /> <!-- Furniture Custom Fonts -->
	<!-- / -->

	<!-- Document Title
	============================================= -->
	<title>COOBBY | Nav-Bar </title>
	<style>
		.menu-font{
			font-size:16px;
		}
		#top-login{
			width: 50px;
		}
		#join{
			width: 70px;
		}
		#top-login:hover{
			opacity: .5;
		}
		#join:hover{
			opacity: .5;
		}
		#userimg{
			width:55px;
			height:55px;
			border-radius:50%;
		}
		#logo{
			position : absolute;
			
			right : 45%;
			
		}
		#header-wrap{
			position : relative;
			width : 100%;
		}
		#useridcontainer{
			width:auto;
			margin-right:10px;
		}
		#myfeed{
			width:auto;
			margin-right:10px; 
		}
		#wrapper{
			width : 100%;	
		}
		
		.header-size-sm #header-wrap #logo img {
		   width:150px;
		   height:30px;
		}

		
	</style>

</head>

<body class="stretched">
	
	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>
	<div id="primary-menu-trigger">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 256 256"><defs><style>.a,.c{fill:none;}.b{fill:var(--themecolor);opacity:0.2;}.c,.d{stroke:var(--themecolor);}.c{stroke-miterlimit:10;stroke-width:14px;}.d{stroke-linecap:round;stroke-linejoin:round;stroke-width:13px;}</style></defs><rect class="a" width="24" height="24"/><circle class="b" cx="96" cy="96" r="96" transform="translate(32 32)"/><circle class="c" cx="96" cy="96" r="96" transform="translate(32 32)"/><line class="d" x2="85" transform="translate(86 127)"/><line class="d" x2="85" transform="translate(86 97)"/><line class="d" x2="85" transform="translate(86 159)"/></svg>
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="128" cy="128" r="96" opacity="0.2"></circle><circle cx="128" cy="128" r="96" fill="none" stroke="var(--themecolor)" stroke-miterlimit="10" stroke-width="16"></circle><line x1="160" y1="96" x2="96" y2="160" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line><line x1="160" y1="160" x2="96" y2="96" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg>
	</div>

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="header-size-sm border-bottom-0">
			<div id="header-wrap">
				<div class="container">
					<div class="header-row justify-content-lg-between">
						
						<!-- Logo
						============================================= -->
						<div id="logo" class="mx-auto col-auto flex-column order-2">
							<a href="/user/mainpage" class="standard-logo"><img src="/resources/img/coobbylogo.png" /></a>
							<a href="/user/mainpage" class="retina-logo"><img src="/resources/img/coobbylogo.png" /></a>
						</div><!-- #logo end -->

						<div class="header-misc col-auto order-3 justify-content-lg-end ms-0 ms-sm-3 px-0">

							<!-- Top 로그인
							============================================= -->
							 <div id="userimgcontain">
								<img id="userimg"  src="/resources/user/images/my/${sessionScope.user.memOriginimage}" onerror="this.style.display='none'" />
							</div> 
							<!-- 비로그인 시 
							<div id="top-search" class="header-misc-icon">
								<a href="#" id="top-login">
									로그인
								</a>
							</div>
							-->
							<!-- #top-search end -->

							<!-- Top 회원가입
							============================================= -->
							<div id="useridcontainer">
								 <span class="dropdown" style='height: 10%'>
               
               					<c:choose>
								<c:when test="${sessionScope.user eq null}">
								<h5 style='height: 10%'>
									<a href="/user/login/loginpage">LOGIN</a>
								</h5>
								</c:when>
								<c:otherwise>
								<h5>
								
									<a href="logout">LOGOUT &ensp;${sessionScope.user.memNickname}님, 환영합니다!</a>
									<span>[ ${sessionScope.user.memId} ]</span>
								</h5>
								</c:otherwise>
							</c:choose>
              				</span>
							</div>
							
							<!-- 비로그인 시 
							<div id="top-cart" class="header-misc-icon">
								<a href="#" id="join" class="side-panel-trigger">회원가입</a>
							</div>
							-->
							<!-- #top-cart end -->
							<div id="myfeed">
								<a href="/user/feed/MyFeed" class="">나의 피드보기</a>
							</div>
							<c:choose>
								<c:when test="${session eq null}">
									<div id="usernickname">
										<a href="#" class=""></a>
									</div>
								</c:when>
								<c:otherwise>
									<div id="logout">
										<a href="#" class="">로그아웃</a>
									</div>
								</c:otherwise>
							</c:choose>
						</div>

						<!-- Mobile Menu Icon
						============================================= -->
						<div id="primary-menu-trigger">
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 256 256"><defs><style>.a,.c{fill:none;}.b{fill:var(--themecolor);opacity:0.2;}.c,.d{stroke:var(--themecolor);}.c{stroke-miterlimit:10;stroke-width:14px;}.d{stroke-linecap:round;stroke-linejoin:round;stroke-width:13px;}</style></defs><rect class="a" width="24" height="24"/><circle class="b" cx="96" cy="96" r="96" transform="translate(32 32)"/><circle class="c" cx="96" cy="96" r="96" transform="translate(32 32)"/><line class="d" x2="85" transform="translate(86 127)"/><line class="d" x2="85" transform="translate(86 97)"/><line class="d" x2="85" transform="translate(86 159)"/></svg>
							<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="128" cy="128" r="96" opacity="0.2"></circle><circle cx="128" cy="128" r="96" fill="none" stroke="var(--themecolor)" stroke-miterlimit="10" stroke-width="16"></circle><line x1="160" y1="96" x2="96" y2="160" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line><line x1="160" y1="160" x2="96" y2="96" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg>
						</div>

						<!-- Primary Navigation
						============================================= -->
						<nav class="primary-menu with-arrows order-lg-1 order-last px-0">

							<ul class="menu-container">
								<li class="menu-item">
									<!-- 추후에 레시피 목록으로 경로 바꾸기 -->
									<a class="menu-link" href="/user/recipe/recipedetail?reNo=13">
										<div class="menu-font">레시피</div>
									</a>
								</li>
								<li class="menu-item">
									<a href="/user/feed/MyFeed" class="menu-link"><div class="menu-font">피드보기</div></a>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="/user/QnA/QnAlist">
										<div class="menu-font">공지사항/Q&A</div>
									</a>
								</li>
								<!-- if문 걸 자리 -->
								<li class="menu-item"><a class="menu-link" href="/user/mypage/MemberFavorites">
									<div class="menu-font">마이페이지</div>
								</a></li>
							</ul>

						</nav><!-- #primary-menu end -->

						<!-- Top Search Form
						============================================= -->
						<form class="top-search-form" action="search.html" method="get">
							<input type="text" name="q" class="form-control" value="" placeholder="Type &amp; Hit Enter.." autocomplete="off">
						</form>

					</div>
				</div>
			</div>
			<div class="header-wrap-clone"></div>
		</header><!-- #header end -->
	</div>


	<!-- JavaScripts
	============================================= -->
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/js/functions.js"></script>

</body>
</html>