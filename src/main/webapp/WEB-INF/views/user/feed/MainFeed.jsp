<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Zilla+Slab:wght@400;500&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="/resources/user/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="/resources/user/style.css" type="text/css" />

	<link rel="stylesheet" href="/resources/user/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="/resources/user/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="/resources/user/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="/resources/user/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="/resources/user/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
	<link rel="stylesheet" href="/resources/user/css/colors.php?color=193532" type="text/css" />

	<!-- Furniture Demo Specific Stylesheet -->
	<link rel="stylesheet" href="/resources/user/demos/furniture/furniture.css" type="text/css" /> <!-- Furniture Custom Css -->
	<link rel="stylesheet" href="/resources/user/demos/furniture/css/fonts.css" type="text/css" /> <!-- Furniture Custom Fonts -->
	<!-- / -->
	<!-- CSS -->
	<link rel="stylesheet" href="/resources/user/css/user/Feed/css/Feed.css" type="text/css" />


	<!-- Document Title
	============================================= -->
	<title> COOBBY - Feed </title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<jsp:include page="../user-nav.jsp"/>

		<!-- Content
		============================================= -->
		<section>
			<div>
			<div class="content-wrap">

				<div class="container">	
					<!-- 검색 폼 시작  -->
					<form class="contact_form">
						<div class="input-group">
							<input type="text" name="widget-subscribe-form-email" class="form-control required searchform" placeholder="검색어를 입력해주세요">
							<button class="btn btn-dark px-3 input-group-text" type="submit"><i class="icon-line-search"></i></button>
						</div>

						
					</form>	
					<!-- 검색폼 끝 -->
						<!-- Shop
						============================================= -->
						<div id="myTabContent" class="shop row gutter-30 col-mb-30 mt-3">

							<!-- 피드 내용 -->
							<div id="mainfeed" role="tabpanel" aria-labelledby="home-tab">
							<div class="product">
							<c:forEach items="${ feedList}" var="feed">
								<div class="grid-inner">
									<div class="product-image">
										<img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa">
										<div>
											<a href="MainFeedModal?fe_no=${feed.feNo }" class="btn btn-light" data-lightbox="ajax">
											<div class="bg-overlay-content align-items-end justify-content-between" data-hover-animate="fadeIn" data-hover-speed="400">
											</div>
										</a>
										</div>
									</div>
									<div class="product-desc">
										<div class="product-title mb-0"><h4 class="mb-0">${feed.feTitle }</h4></div>
										<h5 class="product-price fw-normal">${feed.memId }</h5>
									</div>
									</c:forEach>
								</div>
							</div>
							</div>

						</div><!-- #shop end -->

						<div class="clear"></div>

						<nav aria-label="Page navigation">
							<ul class="pagination justify-content-center mt-4">
								<li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
								<li class="page-item"><a class="page-link" href="#">2</a></li>
								<li class="page-item"><a class="page-link" href="#">3</a></li>
								<li class="page-item"><a class="page-link" href="#">Next</a></li>
							</ul>
						</nav>
				</div>

			</div>
		</section><!-- #content end -->


	</div><!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="bg-color op-07 h-op-1">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon><polygon points="48 208 128 128 208 208 48 208" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polygon><polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>
	<script src="/resources/user/Feed/js/myfeed.js"></script>

</body>
</html>