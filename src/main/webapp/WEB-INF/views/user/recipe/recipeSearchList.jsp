<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	
	<link rel="stylesheet" href="/resources/user/recipe/css/recipelist.css">

	<!-- Document Title
	============================================= -->
	<title>COOBBY</title>

</head>

<body class="stretched">
		
		<jsp:include page="../user-nav.jsp" />

		
		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">

				<div class="container">
					<div id="searchContain">
						<jsp:include page="./recipeSearch.jsp" />
					</div>
					<h3 class="fw-medium h1"><span data-animate="svg-underline-animated" class="svg-underline nocolor"><span>Category</span></span></h3>
					<table>
						<tr>
							<th id="columnLabel">
								<div class="label">종류별</div>
								<div class="label">상황별</div>
								<div class="label">재료별</div>
								<div class="label">방법별</div>
							</th>
							<td>
								<div>
									<div class="dataTd">
										<a class="cateText" href="recipelist">전체</a>
										<c:forEach items="${ kind }" var="kind"><a class="cateText" href="recipelist?page=0&cateKind=${ kind.kindCode }">${ kind.kindName }</a></c:forEach>
									</div>
									<div class="dataTd">
										<a class="cateText" href="recipelist">전체</a>
										<c:forEach items="${ situ }" var="situ"><a class="cateText" href="recipelist?page=0&cateSitu=${ situ.situCode }">${ situ.situName }</a></c:forEach>
									</div>
									<div class="dataTd">
										<a class="cateText" href="recipelist">전체</a>
										<c:forEach items="${ ingr }" var="ingr"><a class="cateText" href="recipelist?page=0&cateIngr=${ ingr.ingrCode }">${ ingr.ingrName }</a></c:forEach>
									</div>
									<div class="dataTd">
										<a class="cateText" href="recipelist">전체</a>
										<c:forEach items="${ how }" var="how"><a class="cateText" href="recipelist?page=0&cateHow=${ how.howCode }">${ how.howName }</a></c:forEach>
									</div>
								</div>
							</td>
						</tr>
					</table>

					<div class="row justify-content-between align-items-center">
						<div class="col-auto mb-4">
							<h3 class="fw-medium h1">All <span data-animate="svg-underline-animated" class="svg-underline nocolor"><span>Recipes</span></span></h3>
						</div>
					</div>

					<!-- Shop
					============================================= -->
					<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">

						<!-- Product 1 -->
						<c:forEach items="${ recipeList }" var="list">
						<div class="product col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="grid-inner">
								<div class="product-image">
									<a href="recipedetail?reNo=${ list[0] }"><img id="resultimg" src="/resources/user/recipeimages/${ list[4] }" alt=""></a>
								</div>
								<div class="product-desc">
									<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="recipedetail?reNo=${ list[0] }">${ list[1] }</a></h4></div>
									<h5 class="product-price fw-normal">${list[5]}</h5>
								</div>
							</div>
						</div>
						</c:forEach>
					</div><!-- #shop end -->
						<div id="moreBtnContain">
                        	<button id="morebtn3" class="button button-circle button-large mt-3">더보기</button>
                        </div>

					<div class="clear"></div>
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
	<script src="/resources/user/recipe/js/recipelist.js"></script>

</body>
</html>