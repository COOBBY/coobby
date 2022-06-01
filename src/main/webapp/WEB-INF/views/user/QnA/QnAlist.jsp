<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

	<!-- Document Title
	============================================= -->
	<title>Furniture | Canvas</title>

</head>

<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">
		<jsp:include page="../user-nav.jsp" />


		 <!--================Checkout Area =================-->
<br/><br/>
	<div class="text-center" style="text-align: center;">
	  <h2>Q&A</h2><br/>
	 </div>
	 <div class="container">
	 <span style="text-align: left; margin-left: 160px;">
	  <a href="/user/Announce/Boardlist"><button type="button" class="btn btn-main" id="annobtn" style="background-color: gray; color: aliceblue;">공지사항</button></a>
	  <button type="button" class="btn btn-main" id="qnabtn" style="background-color: blue; color: white;">Q&A</button>
	 <a href="../mypage/inquery"><button type="button" class="btn btn-main" id="oneqnabtn" style="background-color: gray; color: white; float:right; margin-right: 235px;">1:1문의 바로가기</button></a>
	 </span><br/><br/>
	</div> 
	<div class="container">
	<div class="col-md-6" style="display: flex; justify-content: center;">
	  <div class="block text-center w-50">
			<form class="text-left clearfix" action="index.html">
			  <table class="table table-bordered" style="width: 900px;">
				<thead>
				 <tr>
				  <th style="width: 16.6;">번호</th>
				  <th style="width: 40;">제목</th>
				  <th style="width: 20;">담당자</th>
				  <th>작성일</th>
				  <th style="width: 10;">답변 상태</th>
				</tr>
				</thead>
				<tbody>
				  <tr>
				   <td>1</td>
				   <td style="text-align:left"><a href="QnAdetail">제목입니다.</a></td>
				   <td>관리자</td>
				   <td>2022-05-05</td>
				   <td>답변 완료</td>
				  </tr>
				  <tr>
				   <td>2</td>
				   <td style="text-align:left">질문제목</td>
				   <td>관리자</td>
				   <td>2022-04-25</td>
				   <td>답변 대기</td>
				  <tr>
				   <td>3</td>
				   <td style="text-align:left">질문제목</td>
				   <td>관리자</td>
				   <td>2022-04-02</td>
				   <td>답변 대기</td>
				  </tr>
				  <tr>  
				   <td>4</td>
				   <td style="text-align:left">질문제목</td>
				   <td>관리자</td>
				   <td>2022-03-26</td>
				   <td>답변 완료</td>
				  </tr>
				  <tr>
				   <td>5</td>
				   <td style="text-align:left">질문제목</td>
				   <td>관리자</td>
				   <td>2022-03-11</td>
				   <td>답변 대기</td>
				  </tr>
				  <tr>
				   <td>6</td>
				   <td style="text-align:left">질문제목</td>
				   <td>관리자</td>
				   <td>2022-03-01</td>
				   <td>답변 대기</td>
				  </tr> 
				</tbody>
			  </table>
			</form>
		  </div>
		 </div>
	 <a href="/user/mypage/inqueryinsert">
     <button type="button"
         class="btn btn-main" id="btnQnAwrite" style="background-color: gray; color: white; float:right; margin-right:235px;">등록하기</button></a>	
		</div>
		<nav aria-label="Page navigation">
			<ul class="pagination justify-content-center mt-6">
			   <li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
			   <li class="page-item"><a class="page-link" href="#">2</a></li>
			   <li class="page-item"><a class="page-link" href="#">3</a></li>
			   <li class="page-item"><a class="page-link" href="#">4</a></li>
			   <li class="page-item"><a class="page-link" href="#">5</a></li>
			</ul>
		 </nav>
  <!--================End Checkout Area =================-->


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
									<li><a href="https://facebook.com/semicolonweb" target="_blank"><i class="icon-facebook"></i> Facebook</a></li>
									<li><a href="https://instagram.com/semicolonweb" target="_blank"><i class="icon-instagram"></i> Instagram</a></li>
									<li><a href="https://twitter.com/__semicolon" target="_blank"><i class="icon-twitter"></i> Twitter</a></li>
									<li><a href="https://youtube.com/c/SemiColonweb/videos" target="_blank"><i class="icon-youtube"></i> YouTube</a></li>
									<li><a href="https://wa.me/00112233344"><i class="icon-whatsapp"></i> WhatsApp</a></li>
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
							<div class="widget subscribe-widget clearfix" data-loader="button">
								<h4>Subscribe Us</h4>
								<h5 class="font-body op-04"><strong>Subscribe</strong> to Our Newsletter to get Important News, Amazing Offers &amp; Inside Scoops:</h5>
								<div class="widget-subscribe-form-result"></div>
								<form id="widget-subscribe-form" action="include/subscribe.php" method="post" class="mb-0">
									<div class="input-group">
										<input type="email" id="widget-subscribe-form-email" name="widget-subscribe-form-email" class="form-control required email" placeholder="Enter your Email Address">
										<button class="btn btn-dark bg-color px-3 input-group-text" type="submit">Subscribe</button>
									</div>
								</form>
							</div>
						</div>

					</div>

				</div><!-- .footer-widgets-wrap end -->

			</div>

			<!-- Copyrights
			============================================= -->
			<div id="copyrights" class="py-3 bg-color-light">
				<div class="container">

					<div class="d-flex justify-content-between op-04">
						<span>&copy; 2020 All Rights Reserved by Canvas Inc.</span>
						<div class="copyright-links"><a href="#">Terms of Use</a> / <a href="#">Privacy Policy</a></div>
					</div>

				</div>
			</div><!-- #copyrights end -->
		</footer><!-- #footer end -->

	</div><!-- #wrapper end -->
	</div>

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="bg-color op-07 h-op-1">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon><polygon points="48 208 128 128 208 208 48 208" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polygon><polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
</html>