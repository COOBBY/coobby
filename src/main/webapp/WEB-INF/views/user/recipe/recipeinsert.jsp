<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
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
	
	<link rel="stylesheet" href="/resources/user/css/magnific-popup.css" type="text/css" />
	<link rel="stylesheet" href="/resources/user/css/components/ion.rangeslider.css" type="text/css" />

	<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
	<link rel="stylesheet" href="/resources/user/css/colors.php?color=193532" type="text/css" />
	<link rel="stylesheet" href="/resources/user/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Furniture Demo Specific Stylesheet -->
	<link rel="stylesheet" href="/resources/user/demos/furniture/furniture.css" type="text/css" /> <!-- Furniture Custom Css -->
	<link rel="stylesheet" href="/resources/user/demos/furniture/css/fonts.css" type="text/css" /> <!-- Furniture Custom Fonts -->
	<link rel="stylesheet" href="/resources/user/recipe/css//recipeinsert.css" type="text/css"/>
	<!-- / -->

	<!-- Document Title
	============================================= -->
	<title>COOBBY</title>

</head>

<body class="stretched">

	
			
		<jsp:include page="../user-nav.jsp" />
		
		<!-- Page Title
		============================================= -->
		<section id="page-title">

			<div class="container clearfix">
				<h1>레시피 등록</h1>
				<span>Forms Recipe</span>
			</div>

		</section><!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">
				<div class="container clearfix">

 					<!--<div class="form-widget">

						<div class="form-result"></div> -->

						<div class="row shadow bg-light border">
							<div class="col-lg-12 p-5">
								<form class="row mb-0" id="fitness-form" action="recipesave" method="post" enctype="multipart/form-data">
									<input type="hidden" name="memberVO.memId" value="test1" />
									<input type="hidden" name="reViewcnt" value="0" />
									<div class="form-process">
										<div class="css3-spinner">
											<div class="css3-spinner-scaler"></div>
										</div>
									</div>
									<div id="recipecontainer">
										<div id="textcontainer">
											<div class="col-10 form-group">
												<div class="row">
													<div class="col-sm-2 col-form-label">
														<label class="labelfont" for="fitness-form-name">레시피 제목:</label>
													</div>
													<div class="col-sm-10">
														<input type="text" name="reTitle" id="fitness-form-name" class="form-control" value="" placeholder="제목을 입력해주세요">
													</div>
												</div>
											</div>
											<div class="col-10 form-group">
												<div class="row">
													<div class="col-sm-2 col-form-label">
														<label class="labelfont" for="fitness-form-email">요리 소개:</label>
													</div>
													<div class="col-sm-10">
														<textarea class="introduce" name="reContent" placeholder="내용을 입력해주세요"></textarea>
													</div>
												</div>
											</div>
											<div class="col-10 form-group">
												<div class="row">
													<div class="col-sm-2 col-form-label">
														<label class="labelfont" for="fitness-form-phone">동영상:</label>
													</div>
													<div class="col-sm-10">
														<input type="text" name="reVideoUrl" id="fitness-form-phone" class="form-control" placeholder="URL을 입력하세요">
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="col-10 form-group">
										<div class="row">
											<div class="col-sm-2 col-form-label">
												<label class="labelfont" for="fitness-form-goal">카테고리:</label>
											</div>
											<div class="col-sm-10">
												<div class="btn-group d-flex" role="group">
													<select class="form-select" name="cateKind" id="event-registration-interests">
														<option value="">종류별</option>
														<c:forEach items="${ kind }" var="catekind">
															<option value="${ catekind.kindCode }">${ catekind.kindName }</option>
														</c:forEach>
													</select>
													<select class="form-select" name="cateSitu" id="">
														<option value="">상황별</option>
														<c:forEach items="${ situ }" var="catesitu">
															<option value="${ catesitu.situCode }">${ catesitu.situName }</option>
														</c:forEach>
													</select>
													<select class="form-select" name="cateHow" id="event-registration-interests">
														<option value="">방법별</option>
														<c:forEach items="${ how }" var="catehow">
															<option value="${ catehow.howCode }">${ catehow.howName }</option>
														</c:forEach>
													</select>
													<select class="form-select" name="cateIngr" id="event-registration-interests">
														<option value="">재료별</option>
														<c:forEach items="${ ingr }" var="cateingr">
															<option value="${ cateingr.ingrCode }">${ cateingr.ingrName }</option>
														</c:forEach>
													</select>
												</div>
											</div>
										</div>
									</div>
									<hr/>
									<h4>재료추가</h4>
									<div class="col-12 form-group">
										<div id="ingrinputcontainer" class="row">
											<div id="ingrname" class="col-sm-4">
												<input type="text" name="ingrName" id="fitness-form-age" class="form-control" value="" placeholder="예) 고추장">
											</div>
											<div id="ingrcount" class="col-sm-4">
												<input type="text" name="ingrCount" id="fitness-form-age" class="form-control" value="" placeholder="예) 2스푼">
											</div>
										</div>
										<div class="plusbtncontain">
											<button id="ingrplusbtn" class="button" type="button">추가</button>
										</div>
									</div>
									<hr/>
									<h4>요리 순서</h4>
									<div>
										<ol class="list-preparation">
											<li>
												<div class="recipeinsertcontainer">
													<textarea class="recipeinsert" name="reCook" rows="7" placeholder="내용을 입력해주세요"></textarea>
													<img id="preview-image" class="recipeimg" src="/resources/user/recipe/image/noimage.png" alt="" />
												</div>
												<div class="mb-3">
												  <label for="formFile" class="form-label">조리하는 사진을 선택해주세요.</label>
												  <input id="input-image" class="form-control" type="file" id="formFile" name="file" accept="image/jpeg, image/jpg, image/png">
												</div>
											</li>
										</ol>
										<div class="plusbtncontain">
											<button id="recipeplusbtn" class="button" type="button">추가</button>
										</div>
									</div>
									<hr/>
									<h4>요리 완성 사진</h4>
									<div>
										<div class="mb-3">
											<label for="formFile" class="form-label">완성된 요리사진을 선택해주세요.</label>
											<input type="file" class="form-control " id="uploadFile"
							                  name="resultFile" accept="image/jpeg, image/jpg, image/png"
							                  multiple />
										</div>
									</div>
									<div class="row">
										<div class="col-sm-1 col-form-label">
											<label class="labelfont" for="fitness-form-email">요리 팁:</label>
										</div>
										<div class="col-sm-9">
											<textarea class="introduce" name="reTip" placeholder="내용을 입력해주세요"></textarea>
										</div>
									</div>
									<div class="col-12 d-flex justify-content-end align-items-center">
										<button type="button" id="calories-trigger" class="btn btn-secondary">목록보기</button>
										<button type="submit" name="fitness-form-submit" class="btn btn-success ms-2">등록하기</button>
									</div>
								</form>
							</div>

						</div>

					</div>

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
	<script src="/resources/user/recipe/js/recipeinsert.js"></script>

</body>
</html>