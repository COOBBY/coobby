<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

<!-- map-css -->
<link rel="stylesheet"
	href="/resources/user/map/css/map.css" type="text/css" />

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.js"></script>



<!-- Document Title
	============================================= -->
<title>COOBBY</title>

</head>

<body class="stretched">


	<jsp:include page="../user-nav.jsp" />

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

	<!-- content
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

								<!--  지도  -->
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
									<!-- 지도를 표시할 div 입니다 -->
									<div id="mapWrapper">
										<div id="map" style="width: 100%; height: 380px"></div>
										
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


	<script src="/resources/user/map/js/map.js"></script>
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>

<!-- datatable script -->
	<script
		src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<script
		src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>

<!-- datatable script -->
	<script>
		//datatable script
		$(function() {

			$('#example2').DataTable({
				"paging" : true,
				pagingType : "numbers",
				"lengthChange" : false,
				"displayLength" : 7,
				"searching" : false,
				"ordering" : false,
				"info" : false,
				"autoWidth" : false,
				"responsive" : true
			});
		});
	</script>

</body>
</html>