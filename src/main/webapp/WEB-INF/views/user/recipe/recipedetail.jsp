<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="author" content="SemiColonWeb" />

<!-- Stylesheets
	============================================= -->
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans:400,700|Noto+Serif:400,700&display=swap"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">

<link rel="stylesheet" href="/resources/user/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css">
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

<!--  Recipes Demo Specific Stylesheet -->
<link rel="stylesheet"
	href="/resources/user/css/colors.php?color=267DF4" type="text/css" />
<!-- Theme Color -->
<link rel="stylesheet"
	href="/resources/user/demos/recipes/css/fonts.css" type="text/css" />
<!-- Theme Font -->
<link rel="stylesheet" href="/resources/demos/recipes/recipes.css"
	type="text/css" />
<link rel="stylesheet"
	href="/resources/user/recipe/css/recipedetail.css" type="text/css" />
<!-- Theme Custom CSS -->

<!-- Document Title
	============================================= -->
<title>COOBBY</title>
</head>

<body class="stretched">
	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">
		<!-- Header
		============================================= -->
		<jsp:include page="../user-nav.jsp" />
		<!-- #header end -->
		<!-- Page Title
		============================================= -->
		<section id="slider"
			class="slider-element dark parallax include-header"
			style="background: #1ABC9C url('resources/user/demos/recipes/images/recipe-single.jpg') center center/cover; padding: 230px 0;"
			data-0="background-position:0px -200px;"
			data-400="background-position:0px -100px;">
			<div class="container clearfix">
				<div class="mx-auto center" style="max-width: 800px">
				
					<h3 class="nott fw-bold mb-5 display-4" data-animate="zoomIn">
						${ recipe.reTitle }</h3>
				</div>
			</div>
		</section>
		<!-- #page-title end -->

		<!-- Content
		============================================= -->
		<section id="content" class="bg-light">
			<div class="content-wrap pt-0" style="overflow: visible">
				<div class="container">
					<div class="card border-0 shadow-sm" style="top: -100px">
						<div class="card-body px-4">
						<button id="scrapBtn" class="btn btn-default">
							<i id="scrapicon" class="bi bi-bookmark-star"></i>
						</button>
						<button id="likeBtn" class="btn btn-default">
							<i id="likeicon" class="bi bi-heart"></i>
						</button>
							<div class="row justify-content-between mt-5 mb-4 clearfix">
								<div class="col-lg-8 mt-5 mt-lg-0">
									<div style="margin-bottom: 30px;">
										<h4>요리 소개</h4>
										<div>${ recipe.reContent }</div>
									</div>
									<h4>사진</h4>
									<div class="bxslider">
										<c:forEach items="${ reimage }" var="img">
											<div>
												<img
													src="/resources/user/recipeimages/${ img.reStoredImage }"
													alt="" style="width: 70%" />
											</div>
										</c:forEach>
									</div>
									<div id="recipeseqcontainer">
										<h4>조리 순서</h4>
										<ol class="list-unstyled list-preparation">
											<c:forEach items="${ cook }" var="seqcook">
												<c:forEach items="${ reimage }" var="img">
													<li class="recipeseq">
														<div>${ seqcook }</div> <img class="recipeimg"
														src="/resources/user/recipeimages/${ img.reStoredImage }"
														alt="" />
													</li>
												</c:forEach>
											</c:forEach>
										</ol>
									</div>
									<div></div>
									<h4>조리 영상</h4>
									<div class="rounded position-relative dark mb-5"
										style="background: url('/resources/user/demos/recipes/images/recipe-week.jpg') no-repeat center center/cover; min-height: 300px;">
										<a href="https://www.youtube.com/watch?v=P3Huse9K6Xs"
											data-lightbox="iframe" class="play-video stretched-link">
											<i class="icon-play"></i>
										</a>
									</div>
									<h4>요리 TIP</h4>
									<div>${ recipe.reTip }</div>

									<!-- Comments
									============================================= -->
									<div id="comments" class="clearfix">
										<h4 id="comments-title">Reviews</h4>

										<!-- Comments List
										============================================= -->
										<ol class="commentlist clearfix">
											<li class="comment even thread-even depth-1"
												id="li-comment-1">
												<div id="comment-1" class="comment-wrap clearfix">
													<div class="comment-meta">
														<div class="comment-author vcard">
															<span class="comment-avatar clearfix"> <img
																alt="Image"
																src="/resources/user/demos/articles/images/authors/2.jpg"
																class="avatar avatar-60 photo avatar-default"
																height="60" width="60" /></span>
														</div>
													</div>

													<div class="comment-content clearfix">
														<div class="comment-author">
															Gunther David <span>April 24, 2012 at 10:46 am</span>
														</div>

														<p>Donec sed odio dui. Nulla vitae elit libero, a
															pharetra augue. Nullam id dolor id nibh ultricies
															vehicula ut id elit. Integer posuere erat a ante
															venenatis dapibus posuere velit aliquet.</p>
														<div class="anmo">
															<span class="comm_answer" href="#"> 답글 </span> <span
																class="comm_modify" href="#"> 수정 </span>
														</div>
														<a class="comment-reply-link" href="#"> <svg
																xmlns="http://www.w3.org/2000/svg" width="16"
																height="16" fill="currentColor"
																class="bi bi-trash3-fill" viewBox="0 0 16 16">
																<path
																	d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z" />
															</svg>
														</a>
													</div>

													<div class="clear"></div>
												</div>
												<form id="childcommform" action="" method="post">
													<div class="childcomm">
														<svg class="comm_icon" xmlns="http://www.w3.org/2000/svg"
															width="16" height="16" fill="currentColor"
															class="bi bi-arrow-return-right" viewBox="0 0 16 16">
														  <path fill-rule="evenodd"
																d="M1.5 1.5A.5.5 0 0 0 1 2v4.8a2.5 2.5 0 0 0 2.5 2.5h9.793l-3.347 3.346a.5.5 0 0 0 .708.708l4.2-4.2a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708.708L13.293 8.3H3.5A1.5 1.5 0 0 1 2 6.8V2a.5.5 0 0 0-.5-.5z" />
														</svg>
														<div class="childinput">
															<div class="col-form-label">
																<label class="labelfont" for="fitness-form-name">답글:</label>
															</div>
															<div class="input_container">
																<textarea class="comm_input" name=""
																	placeholder="답글 추가..."></textarea>
															</div>
														</div>
														<div class="comm_btn">
															<button class="button button-circle button-small mt-3">취소</button>
															<button type="submit"
																class="button button-circle button-small mt-3">답글</button>
														</div>
													</div>
												</form>
												<ul class="children">
													<li
														class="comment byuser comment-author-_smcl_admin odd alt depth-2"
														id="li-comment-3">
														<div id="comment-3" class="comment-wrap clearfix">
															<div class="comment-meta">
																<div class="comment-author vcard">
																	<span class="comment-avatar clearfix"> <img
																		alt="Image"
																		src="https://1.gravatar.com/avatar/30110f1f3a4238c619bcceb10f4c4484?s=40&amp;d=http%3A%2F%2F1.gravatar.com%2Favatar%2Fad516503a11cd5ca435acc9bb6523536%3Fs%3D40&amp;r=G"
																		class="avatar avatar-40 photo" height="40" width="40" /></span>
																</div>
															</div>

															<div class="comment-content clearfix">
																<div class="comment-author">
																	<a href="#" rel="external nofollow" class="url">SemiColon</a>
																	(Author)<span><a href="#"
																		title="Permalink to this comment">April 25, 2012
																			at 1:03 am</a></span>
																</div>

																<p>Thank You so much for your Valuable Review. :)</p>

																<a class="comment-reply-link" href="#"> <svg
																		xmlns="http://www.w3.org/2000/svg" width="16"
																		height="16" fill="currentColor"
																		class="bi bi-trash3-fill" viewBox="0 0 16 16">
																	  <path
																			d="M11 1.5v1h3.5a.5.5 0 0 1 0 1h-.538l-.853 10.66A2 2 0 0 1 11.115 16h-6.23a2 2 0 0 1-1.994-1.84L2.038 3.5H1.5a.5.5 0 0 1 0-1H5v-1A1.5 1.5 0 0 1 6.5 0h3A1.5 1.5 0 0 1 11 1.5Zm-5 0v1h4v-1a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5ZM4.5 5.029l.5 8.5a.5.5 0 1 0 .998-.06l-.5-8.5a.5.5 0 1 0-.998.06Zm6.53-.528a.5.5 0 0 0-.528.47l-.5 8.5a.5.5 0 0 0 .998.058l.5-8.5a.5.5 0 0 0-.47-.528ZM8 4.5a.5.5 0 0 0-.5.5v8.5a.5.5 0 0 0 1 0V5a.5.5 0 0 0-.5-.5Z" />
																	</svg>
																</a>
															</div>

															<div class="clear"></div>
														</div>
													</li>
												</ul>
											</li>

											<li
												class="comment byuser comment-author-_smcl_admin even thread-odd thread-alt depth-1"
												id="li-comment-2">
												<div id="comment-2" class="comment-wrap clearfix">
													<div class="comment-meta">
														<div class="comment-author vcard">
															<span class="comment-avatar clearfix"> <img
																alt="Image"
																src="/resources/user/demos/articles/images/authors/1.jpg"
																class="avatar avatar-60 photo" height="60" width="60" /></span>
														</div>
													</div>

													<div class="comment-content clearfix">
														<div class="comment-author">
															<a href="https://themeforest.net/user/semicolonweb"
																rel="external nofollow" class="url">John Doe</a> <span>April
																25,2012 at 1:03 am</span>
														</div>

														<p>Integer posuere erat a ante venenatis dapibus
															posuere velit aliquet.</p>

														<a class="comment-reply-link" href="#"><i
															class="icon-reply"></i></a>
													</div>

													<div class="clear"></div>
												</div>
											</li>
										</ol>
										<!-- .commentlist end -->

										<div class="clear"></div>

										<!-- Comment Form
										============================================= -->
										<div id="respond">
											<h4>
												<span>댓글</span>
											</h4>

											<div class="w-100"></div>

											<div class="col-12 form-group">
												<label class="nott ls0 fw-normal" for="comment">댓글
													작성</label>
												<textarea name="comment" cols="58" rows="7" tabindex="4"
													class="form-control form-control-pill"></textarea>
											</div>

											<div class="col-12 form-group">
												<button name="submit" type="button" id="submit-button"
													tabindex="5" value="Submit"
													class="button button-circle button-large mt-3">작성</button>
											</div>
										</div>
										<!-- #respond end -->
									</div>
									<!-- #comments end -->
								</div>
								<div class="col-lg-4">
									<div id="writercontain"
										class="single_sidebar_widget author_widget">
										<img class="writerimg"
											src="/resources/user/images/about/${ recipe.memberVO.memStoredimage }"
											alt="" />
										<!-- 작성자 이름 -->
										<h4>${ recipe.memberVO.memName }</h4>
										<!-- 작성자 자기소개 -->
										<p>${ recipe.memberVO.memNickname }</p>
										<div class="br"></div>
									</div>
									<div class="line line-sm"></div>
									<div
										class="d-flex justify-content-between align-items-center mb-4">
										<h4 class="mb-0">레시피 재료</h4>
									</div>
									<ul class="list-unstyled list-ingredients bg-light p-4">
										<c:forEach items="${ ingr }" var="ingr" varStatus="status">
											<div class="">
												<div
													class="">
													<a href="ingrModal?ingrName=${ ingr.INGR_NAME }"
														class="detailIngr" data-lightbox="ajax">
														<li id="ingrmodal${ status.count }" class="ingrcontainer">
														<img class="ingrimg" src="/resources/user/ingrimages/${ ingr.INGR_STORED_IMAGE }" alt="" />
															<div id="ingrName${ status.count }" class="ingrcenter">${ ingr.INGR_NAME }</div>
															<div class="ingrcount">${ ingr.INGR_COUNT }</div>
														</li>
													</a>
												</div>
											</div>
										</c:forEach>
									</ul>
									<div class="line line-sm"></div>
									<div class="single_sidebar_widget author_widget">
										<div
											class="d-flex justify-content-between align-items-center mb-4">
											<h4 class="mb-0">관련 레시피</h4>
										</div>
										<div class="relrecipecontainer">
											<img class="relrecipeimg"
												src="/resources/user/images/about/1.jpg" alt="" />
											<div>레시피명</div>
										</div>
										<div class="relrecipecontainer">
											<img class="relrecipeimg"
												src="/resources/user/images/about/1.jpg" alt="" />
											<div>레시피명</div>
										</div>
									</div>

								</div>
							</div>
						</div>
						<div id="btncontainer">
							<button class="button button-circle button-large mt-3">목록보기</button>
							<button class="button button-circle button-large mt-3">수정</button>
							<button class="button button-circle button-large mt-3">삭제</button>
						</div>
					</div>

					<h4>Related Posts:</h4>

					<div class="related-posts recipe-items">
						<div class="row g-0">
							<div class="col-md-3 col-sm-6 bg-white"
								style="border-left: 1px solid #eee">
								<div class="card">
									<div class="card-body">
										<img src="/resources/demos/recipes/images/popular/7.png"
											alt="image" />
										<div
											class="d-flex justify-content-between align-items-center mt-4 mb-2">
											<p class="card-author">
												By <a href="#">Bailey Wonger</a>
											</p>
											<span class="badge bg-primary bg-color"><i
												class="icon-star3"></i> 4.5</span>
										</div>
										<h3 class="card-title">
											<a href="#" class="stretched-link">Baked Salmon with
												Sweet-Potatoes</a>
										</h3>
										<h5 class="card-date">
											<i class="icon-line2-calendar"></i>Aug 12, 2021
										</h5>
									</div>
								</div>
							</div>

							<!-- Item 8 -->
							<div class="col-md-3 col-sm-6 bg-white">
								<div class="card">
									<div class="card-body">
										<img src="/resources/demos/recipes/images/popular/8.png"
											alt="image" />
										<div
											class="d-flex justify-content-between align-items-center mt-4 mb-2">
											<p class="card-author">
												By <a href="#">Pelican Steve</a>
											</p>
											<span class="badge bg-primary bg-color"><i
												class="icon-star3"></i> 4.2</span>
										</div>
										<h3 class="card-title">
											<a href="#" class="stretched-link">A Kollam Grilled
												Cheese with Vegetables</a>
										</h3>
										<h5 class="card-date">
											<i class="icon-line2-calendar"></i>Aug 8, 2021
										</h5>
									</div>
								</div>
							</div>

							<!-- Item 5 -->
							<div class="col-md-3 col-sm-6 bg-white">
								<div class="card">
									<div class="card-body">
										<img src="/resources/demos/recipes/images/popular/5.png"
											alt="image" />
										<div
											class="d-flex justify-content-between align-items-center mt-4 mb-2">
											<p class="card-author">
												By <a href="#">Norman Gordon</a>
											</p>
											<span class="badge bg-primary bg-color"><i
												class="icon-star3"></i> 4.5</span>
										</div>
										<h3 class="card-title">
											<a href="#" class="stretched-link">Pumpkin Bars with
												Cream Cheese Frosting</a>
										</h3>
										<h5 class="card-date">
											<i class="icon-line2-calendar"></i>Sep 18, 2021
										</h5>
									</div>
								</div>
							</div>

							<!-- Item 6 -->
							<div class="col-md-3 col-sm-6 bg-white">
								<div class="card">
									<div class="card-body">
										<img src="/resources/demos/recipes/images/popular/6.png"
											alt="image" />
										<div
											class="d-flex justify-content-between align-items-center mt-4 mb-2">
											<p class="card-author">
												By <a href="#">Druid Wensleydale</a>
											</p>
											<span class="badge bg-primary bg-color"><i
												class="icon-star3"></i> 4.0</span>
										</div>
										<h3 class="card-title">
											<a href="#" class="stretched-link">The Best Homemade
												Pizza Recipes</a>
										</h3>
										<h5 class="card-date">
											<i class="icon-line2-calendar"></i>Sep 7, 2021
										</h5>
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
	<input id="userId" type="hidden" value="${ recipe.memberVO.memId }" />
	<input id="recipeNo" type="hidden" value="${ recipe.reNo }" />

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up"></div>

	<!-- JavaScripts
	============================================= -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>
	<script src="/resources/js/myjs/recipebxside.js"></script>
	<script src="/resources/user/recipe/js/recipedetail.js"
		type="text/javascript"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>
</body>
</html>
