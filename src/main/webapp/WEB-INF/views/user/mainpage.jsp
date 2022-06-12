<%@page contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
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
<link rel="stylesheet" href="/resources/user/style.css" type="text/css" />
<link rel="stylesheet" href="/resources/user/css/swiper.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/dark.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/font-icons.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/animate.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/magnific-popup.css"
	type="text/css" />

<link rel="stylesheet" href="/resources/user/css/custom.css"
	type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
<link rel="stylesheet"
	href="/resources/user/css/colors.php?color=193532" type="text/css" />

<!-- Furniture Demo Specific Stylesheet -->
<link rel="stylesheet"
	href="/resources/user/demos/furniture/furniture.css" type="text/css" />
<!-- Furniture Custom Css -->
<link rel="stylesheet"
	href="/resources/user/demos/furniture/css/fonts.css" type="text/css" />
<style>
	.topImage{
		width : 640;
		height : 800;
	}
</style>
<title>Furniture | Canvas</title>

</head>

<body class="stretched">


	<div class="body-overlay"></div>


	<div id="wrapper" class="clearfix">

		<div id="wrapper" class="clearfix">
			<jsp:include page="user-nav.jsp" />
		</div>

		<!-- slider Section
		============================================= -->
		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap py-0">


				<!-- 2. Section Shop by Category
				============================================= -->
				<div class="container">

					<!-- Shop
						============================================= -->
					<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">
						
						
					
					<!-- Title -->
					<div class="col-xl-3 col-lg-6">
						<h3 class="mb-4 fw-normal h1">
							<b>인기</b> <span data-animate="svg-underline-animated"
								class="svg-underline nocolor"><span><b>레시피</b></span></span>
						</h3>
						<p class="op-07 mb-4">이 달의 인기 레시피</p>
						<a href="/user/recipe/recipelist"
							class="button button-border py-1 nott ls0 fw-normal button-dark border-width-1 border-color h-bg-color">
							<i class="icon-line-grid"></i> 레시피 더보기
						</a>
					</div>

					<!-- Product 1 -->
					<c:if test="${topRecipe ne null }">
						<c:forEach items="${ topRecipe}" var="recipe">

							<div class="product col-lg-3 col-md-4 col-sm-6 col-12">
								<div class="grid-inner">
									<div class="product-image">
										<a href="/user/recipe/recipeDetail?reNo=${recipe[2]}"><img
											src="/resources/user/recipeimages/${recipe[6]}"
											alt="Light Grey Sofa" class="topImage"></a>

										<div
											class="bg-overlay-content align-items-end justify-content-between"
											data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="/user/recipe/recipeDetail?reNo=${recipe[2]}"
												<%-- 레시피 링크 걸기 --%>
													class="btn btn-light">
												<i class="icon-line-expand"></i>
											</a>
										</div>

									</div>
									<div class="product-desc">
										<div class="product-title mb-0">
											<h4 class="mb-0">
												<a class="fw-medium" href="/user/recipe/recipeDetail?reNo=${recipe[2]}">
													${recipe[3] } </a>
												<h5 class="product-price fw-normal">♥ x ${recipe[1]}</h5>
											</h4>
										</div>

										<h5 class="product-price fw-normal">조회 수 [ ${recipe[4]} ]</h5>
									</div>
								</div>
							</div>
						</c:forEach>
					</c:if>
				</div>
				<!-- #shop end -->
			</div>
			<!-- Section End -->
			<hr />
			<br />

			<!-- 3. Section new Arrivals
				============================================= -->
			<div class="section custom-bg mt-3 mb-0"
				style="-custom-bg: #F3F3ED; padding: 100px 0;">

				<div class="container-fluid">
					<!-- Heading Title -->
					<div class="text-center mt-6 mb-5">
						<h2 class="h1 fw-normal mb-4">
							<b>최근</b> <span data-animate="svg-underline-animated"
								class="svg-underline nocolor"><span><b>레시피</b></span></span>
						</h2>
						<a href="/user/recipe/recipelist"
							class="button button-small button-border m-0 button-dark border-width-1 border-default px-4 h-bg-color"><i
							class="icon-line-grid"></i> 레시피 더보기</a>
					</div>
					<!-- Categories -->

					<div class="row item-categories gutter-20">
						<c:forEach items="${recentRecipe }" var="recipe">
							<div class="col-lg-4 col-md-6">
								<a href="/user/recipe/recipeDetail?reNo=${recipe[1] }" class="d-block h-op-09 op-ts"
									style="background: url('/resources/user/recipeimages/${recipe[3]}') no-repeat center center; background-size: cover; height: 340px;">
									<h5 class="text-uppercase ls1 bg-white mb-0">${recipe[2]}</h5>
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>

			<!-- 6. Section Instagram  feed변수 background url, link 설정하기
				============================================= -->
			<div class="section custom-bg my-0 py-0"
				style="-custom-bg: var(- -themecolor);">
				<div class="row align-items-center no-gutters">
					<!-- Instagram Center Col - Text -->
					<div class="col-lg-4 py-5 order-lg-2">
						${feedList[8][0] } ${feedList[8][1] } <a
							class="d-block instagram-image"
							href="/user/feed/MyFeedModal?feNo=${feedList[8][0]}" target="_blank"
							style="background: url('/resources/user/feedimages/${feedList[8][1]}') no-repeat center center; background-size: cover; min-height: 33vh;"></a>
					</div>

					<!-- Instagram Left Col - Image 2번 위치-->

					<div class="col-lg-4 col-md-6 order-lg-1">
						<div class="row gutter-4">
							<c:forEach items="${feedList }" var="feed" varStatus="status">
								<c:if test="${status.index le 3 }">
									<div class="col-6">
										<a class="d-block instagram-image"
											href="/user/feed/MyFeedModal?feNo=${feed[0]}" target="_blank"
											style="background: url('/resources/user/feedimages/${feed[1]}') no-repeat center center; background-size: cover; min-height: 33vh;"></a>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>

					<!-- Instagram Right Col - Image -->
					<div
						class="col-lg-4 col-md-6 order-lg-3 mt-1 mt-md-0 ps-md-1 ps-lg-0">
						<div class="row gutter-4">
							<c:forEach items="${feedList }" var="feed" varStatus="status">
								<c:if test="${status.index ge 4 && status.index lt 8}">
									<div class="col-6">
										<a class="d-block instagram-image"
											href="/user/feed/MyFeedModal?feNo=${feed[0]}" target="_blank"
											style="background: url('/resources/user/feedimages/${feed[1]}') no-repeat center center; background-size: cover; min-height: 33vh;"></a>
									</div>
								</c:if>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
			<!-- Section End -->
			</div>
	</section>
	<!-- #content end -->
	<br />

	<!-- #footer end -->

	</div>
	<!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="bg-color op-07 h-op-1">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
			fill="#FFF" viewBox="0 0 256 256">
			<rect width="256" height="256" fill="none"></rect>
			<polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon>
			<polygon points="48 208 128 128 208 208 48 208" fill="none"
				stroke="#FFF" stroke-linecap="round" stroke-linejoin="round"
				stroke-width="16"></polygon>
			<polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF"
				stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>
</body>
</html>