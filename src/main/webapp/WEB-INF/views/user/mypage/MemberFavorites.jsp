<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
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
<link rel="stylesheet" href="/resources/user/style.css" type="text/css" />

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

<link rel="stylesheet" href="/resources/user/css/magnific-popup.css"
	type="text/css" />
<link rel="stylesheet"
	href="/resources/user/css/components/ion.rangeslider.css"
	type="text/css" />

<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
<link rel="stylesheet"
	href="/resources/user/css/colors.php?color=193532" type="text/css" />
<link rel="stylesheet" href="/resources/user/css/custom.css"
	type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Furniture Demo Specific Stylesheet -->
<link rel="stylesheet"
	href="/resources/user/demos/furniture/furniture.css" type="text/css" />
<!-- Furniture Custom Css -->
<link rel="stylesheet"
	href="/resources/user/demos/furniture/css/fonts.css" type="text/css" />
	
<!-- scrap-css -->
<link rel="stylesheet"
	href="/resources/user/scrap/css/scrap.css" type="text/css" />


<!-- Document Title
	============================================= -->
<title>COOBBY</title>

</head>

<body class="stretched">
	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">
		<jsp:include page="../user-nav.jsp" />

		<section class="page-header">
			<div class="container">
				<div class="row">
					<div class="col-md-12"></div>
				</div>
			</div>
		</section>

		<div class="page-wrapper">
			<div class="container">
				<div class="row" style="margin-top: 20px;" id="connect">
					<!--사이드 -->
					<div class="col-md-3" style="border-right: 2px solid; height: 100%">
						<aside class="sidebar">
							<div class="navigation">
								<div class="menuToggle"></div>
								<ul style="list-style-type: none;">
									<li>
										<h4 style="text-align: center">마이페이지</h4>
										<hr />
									</li>
									<li class="list"><a href="#"
										class="btn btn-solid-border w-100">내피드</a></li>
									<li class="list"><a href="MemberFavorites"
										class="btn btn-solid-border w-100">즐겨찾기</a></li>
									<li class="list"><a href="Memberupdate"
										class="btn btn-solid-border w-100">회원정보수정</a></li>
									<li class="list"><a href="inquery"
										class="btn btn-solid-border w-100">1:1 문의글</a></li>
									<li class="list"><a href="Membersignout"
										class="btn btn-main w-100">회원탈퇴</a></li>
								</ul>
							</div>
						</aside>
					</div>
					<!-- 사이드 닫음 -->
					<div class="col-md-9" style="padding-left: 30px;">
						<p class="scrapTitle">내가 찜한 레시피
						<p>
						<hr style="margin-top: -32px;" />

						<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">
							<c:if test="${scrapList.isEmpty() }">
								<p class="emptyList">즐겨찾기 목록이 없습니다.</p>
							</c:if>
							<c:forEach items="${scrapList }" var="list">
								<!-- Product -->
								<div class="product col-lg-3 col-md-4 col-sm-6 col-12 scrapList"
									id="scrapList">
									<div class="grid-inner">
										<div class="product-image">
											<a
												href="/user/recipe/recipedetail?reNo=${list.RE_NO }&memId=${ sessionScope.user.memId }"><img
												src="/resources/user/recipeimages/${list.RE_STORED_IMAGE }"
												alt="레시피 사진"></a>
										</div>
										<div class="product-desc">
											<div class="product-title mb-0">
												<p class="mb-0">
													<a class="#"
														href="/user/recipe/recipedetail?reNo=${list.RE_NO }&memId=${ sessionScope.user.memId }">
														${list.RE_TITLE } </a>
												</p>
											</div>
											<h5 class="product-price fw-normal">${list.MEM_ID}</h5>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<div style="text-align: center">
							<br />
							<button type="button" class="btn btn-main" id="morebtn3"
								style="background-color: black; color: aliceblue;">더보기</button>
						</div>
					</div>
					<!-- row 끝 -->
				</div>
				<!-- container 끝 -->
			</div>
			<!-- page-wrapper 끝 -->

			<!--================End Checkout Area =================-->

		</div>
		<!-- #wrapper end -->
	</div>

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
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>



	<script type="text/javascript">
		//즐겨찾기 제이쿼리
		$(function() {
			$('.scrapList').slice(0, 4).show();

			if ($('.scrapList').length > 4) {
				$('#morebtn3').show();
				//더보기 버튼 클릭했을 때
				$('#morebtn3').click(function() {
					$('.scrapList:hidden').slice(0, 4).show();
					if ($('.scrapList:hidden').length == 0) {
						$('#morebtn3').css('display', 'none');
					}

				}); // 버튼 클릭 끝

			}//1. if문끝
			else {
				$('#morebtn3').css('display', 'none');
			}//else 끝

		});
	</script>

</body>
</html>