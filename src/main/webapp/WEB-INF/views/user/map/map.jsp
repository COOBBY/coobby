<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<!-- Furniture Custom Fonts -->

<!-- datatable css -->
<link rel="stylesheet"
	href="/resources/admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css">
<link rel="stylesheet"
	href="/resources/admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css">


<!-- / -->


<style>
/*지도 css*/
#container {
	overflow: hidden;
	height: 300px;
	position: relative;
}

#mapWrapper {
	width: 100%;
	height: 300px;
	z-index: 1;
}

#rvWrapper {
	width: 50%;
	height: 300px;
	top: 0;
	right: 0;
	position: absolute;
	z-index: 0;
}

#container.view_roadview #mapWrapper {
	width: 50%;
}

#getCurrentPosBtn {
	position: absolute;
	top: 5px;
	width: 42px;
	height: 42px;
	z-index: 1;
	cursor: pointer;
	background: white 0 -450px no-repeat;
	border-radius: 10%;
	border-color: #EEEEEE;
	
	margin-top: 115px;
	margin-left: 10px;
}

#getCurrentPosBtn.active {
	background-position: 0 -350px;
}

#close {
	position: absolute;
	padding: 4px;
	top: 5px;
	left: 5px;
	cursor: pointer;
	background: #fff;
	border-radius: 4px;
	border: 1px solid #c8c8c8;
	box-shadow: 0px 1px #888;
}

#close .img {
	display: block;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/rv_close.png)
		no-repeat;
	width: 14px;
	height: 14px;
}

.input-group.filter-bar-search {
	margin: 15px;
}

.input-group {
	position: relative;
	display: flex;
	flex-wrap: wrap;
	align-items: stretch;
	width: 60%;
	margin-bottom: 5px;
}

.icon-map-marked-alt {
	margin: 10px;
}

#addressinput {
	background-color: white;
	border: solid 1px;
}

#searchBtn {
	background-color: white;
	border: solid 1px;
}

.icon-line-search {
	color: white;
}

.storetable {
	margin-top: 10px;
}

.button-dirtygreen:not(.button-border) {
	background-color: #1cbc9c !important;
}

.onofftext {
	font-size: larger;
	font-weight: bold;
	margin: 5px;
	text-align: center;
	margin-top: 5px
}

#sample5_address {
	background-color: white;
}
.productName{
overflow: hidden;
white-space: nowrap;
text-overflow: ellipsis;
max-width: 300px;
  }
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>
<!--지도 자바스크립트-->


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

		<!-- #header end -->




		<!-- 4. Section Explore your Home & Office
				============================================= -->


		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">

					<div class="form-widget">
						<div style="display: flex">
							<div class="col-lg-5 p-0"></div>
							<!--오프라인 매장, 온라인 매장 정보-->

						</div>
						<div class="row">

							<div class="bg-light border col-lg-6 p-0" id="contentbox"
								style="height: 500px;">

								<!--지도-->

								<form>

									<div class="onofftext">
										<p>오프라인 매장 위치</p>
									</div>

									<!--주소검색 창-->

									<div class="input-group col-3">

										<input type="email" id="sample5_address"
											name="widget-subscribe-form-email"
											class="form-control required email" placeholder="주소를 입력하세요"
											onclick="sample5_execDaumPostcode()" readonly>
										<button class="btn btn-dark bg-color px-3 input-group-text"
											type="submit" id="searchBtn"
											onclick="sample5_execDaumPostcode()">
											<i class="icon-line-search"></i>
										</button>
										<input id="mylat" name="mylat" hidden="hidden" /> <input
											id="mylon" name="mylon" hidden="hidden" />
									</div>

									<!-- 카카오 지도 -->
									<div id="mapWrapper">
										<div id="map" style="width: 100%; height: 380px"></div>
										<!-- 지도를 표시할 div 입니다 -->
										<!-- 내 위치 찾기 버튼 -->
										<div id="getCurrentPosBtn" onclick="getCurrentPosBtn()">
											<i class="icon-map-marked-alt"></i>
										</div>
									</div>
								</form>


							</div>
							<div class="bg-light border col-lg-6 p-0" id="contentbox"
								style="height: 500px;">

								<div class="pageContainer">


									<div class="onofftext">
										<p>온라인 매장</p>
									</div>
									<!--매장 및 재료-->
									<div class="storetable" id="offlinestore">
										<div class="card-body">
											<table id="example2" class="table table-border">
												<thead>
													<tr>
														<th>매장명</th>
														<th>상품명</th>
														<th>가격</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${storeList }" var="list">
														<tr>
															<td>${list.storeName }</td>
															<td class="productName"><a href="${list.link }">${list.productName }</a></td>
															<td><fmt:formatNumber value="${list.price }"
																	pattern="#,###" />원</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>




								</div>

							</div>
						</div>
					</div>



				</div>
			</div>
		</section>
		<!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" class="border-0 bg-white">
			<div class="container">

				<!-- Footer Widgets
				============================================= -->
				<div class="footer-widgets-wrap py-lg-6">
					<div class="row col-mb-30">

						<!-- Footer Col 1 -->
						<div class="col-lg-2 col-md-3 col-6">
							<div class="widget widget_links widget-li-noicon">

								<h4 class="ls0 nott">Social</h4>

								<ul class="list-unstyled iconlist ms-0">
									<li><a href="https://facebook.com/semicolonweb"
										target="_blank"><i class="icon-facebook"></i> Facebook</a></li>
									<li><a href="https://instagram.com/semicolonweb"
										target="_blank"><i class="icon-instagram"></i> Instagram</a></li>
									<li><a href="https://twitter.com/__semicolon"
										target="_blank"><i class="icon-twitter"></i> Twitter</a></li>
									<li><a href="https://youtube.com/c/SemiColonweb/videos"
										target="_blank"><i class="icon-youtube"></i> YouTube</a></li>
									<li><a href="https://wa.me/00112233344"><i
											class="icon-whatsapp"></i> WhatsApp</a></li>
								</ul>

							</div>
						</div>

						<!-- Footer Col 2 -->
						<div class="col-lg-2 col-md-3 col-6">
							<div class="widget widget_links widget-li-noicon">

								<h4 class="ls0 nott">Support</h4>

								<ul class="list-unstyled iconlist ms-0">
									<li><a href="demo-furniture.html">Home</a></li>
									<li><a href="demo-furniture-about.html">About</a></li>
									<li><a href="demo-furniture-contact.html">Contact</a></li>
								</ul>

							</div>
						</div>

						<!-- Footer Col 3 -->
						<div class="col-lg-2 col-md-3 col-6">
							<div class="widget widget_links widget-li-noicon">

								<h4 class="ls0 nott">Trending</h4>

								<ul class="list-unstyled iconlist ms-0">
									<li><a href="demo-furniture-products.html">Shop</a></li>
									<li><a href="demo-forum-single.html">Single</a></li>
									<li><a href="demo-furniture-about.html">Who are we</a></li>
								</ul>

							</div>
						</div>

						<!-- Footer Col 4 -->
						<div class="col-lg-2 col-md-3 col-6">
							<div class="widget widget_links widget-li-noicon">

								<h4 class="ls0 nott">Get to Know us</h4>

								<ul class="list-unstyled iconlist ms-0">
									<li><a href="intro.html#section-niche">Niche Demos</a></li>
									<li><a href="intro.html#section-multipage">Home Pages</a></li>
									<li><a href="intro.html#section-onepage">One Pages</a></li>
								</ul>

							</div>
						</div>

						<!-- Footer Col 5 -->
						<div class="col-lg-4">
							<div class="widget subscribe-widget clearfix"
								data-loader="button">
								<h4>Subscribe Us</h4>
								<h5 class="font-body op-04">
									<strong>Subscribe</strong> to Our Newsletter to get Important
									News, Amazing Offers &amp; Inside Scoops:
								</h5>
								<div class="widget-subscribe-form-result"></div>
								<form id="widget-subscribe-form" action="include/subscribe.php"
									method="post" class="mb-0">
									<div class="input-group">
										<input type="email" id="widget-subscribe-form-email"
											name="widget-subscribe-form-email"
											class="form-control required email"
											placeholder="Enter your Email Address">
										<button class="btn btn-dark bg-color px-3 input-group-text"
											type="submit">Subscribe</button>
									</div>
									<input>
								</form>
							</div>
						</div>

					</div>

				</div>
				<!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights" class="py-3 bg-color-light">
				<div class="container">

					<div class="d-flex justify-content-between op-04">
						<span>&copy; 2020 All Rights Reserved by Canvas Inc.</span>
						<div class="copyright-links">
							<a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a>
						</div>
					</div>

				</div>
			</div>
			<!-- #copyrights end -->
		</footer>
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
	<!--지도 현재위치 불러서 마커 찍기-->
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f4496b4ce2cc735f6cb9bea2e2ec80e&libraries=services"></script>
		
		
	<script src="/resources/user/js/map.js"></script>
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>

<script src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- datatable script -->
<script src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="/resources/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>




	<script>
	//datatable script
  $(function () {

    $('#example2').DataTable({
      "paging": true,
      pagingType : "numbers",
     "lengthChange" : false,
      "displayLength" : 7,
      "searching" : false,
      "ordering": false,
      "info": false,
      "autoWidth": false,
      "responsive": true
    });
  });
</script>

</body>
</html>