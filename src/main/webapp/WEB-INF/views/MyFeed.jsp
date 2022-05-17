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

	<link rel="stylesheet" href="resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="resources/style.css" type="text/css" />

	<link rel="stylesheet" href="resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="resources/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
	<link rel="stylesheet" href="resources/css/colors.php?color=193532" type="text/css" />

	<!-- Furniture Demo Specific Stylesheet -->
	<link rel="stylesheet" href="resources/demos/furniture/furniture.css" type="text/css" /> <!-- Furniture Custom Css -->
	<link rel="stylesheet" href="resources/demos/furniture/css/fonts.css" type="text/css" /> <!-- Furniture Custom Fonts -->
	<!-- / -->
	<!-- CSS -->
	<link rel="stylesheet" href="resources/css/Feed/Feed.css" type="text/css" />


	<!-- Document Title
	============================================= -->
	<title> COOBBY - MyFeed </title>

</head>

<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>

	<!-- Cart Side Panel
	============================================= -->
	<div id="side-panel" class="bg-white">

		<!-- Cart Side Panel Close Icon
		============================================= -->
		<div id="side-panel-trigger-close" class="side-panel-trigger"><a href="#"><i class="icon-line-cross"></i></a></div>

		<div class="side-panel-wrap">


		</div>

	</div>

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Header
		============================================= -->
		<header id="header" class="header-size-sm">
			<div id="header-wrap">
				<div class="container">
					<div class="header-row justify-content-lg-between">

						<!-- Logo
						============================================= -->
						<div id="logo" class="mx-auto col-auto flex-column order-2">
							<a href="demo-furniture.html" class="standard-logo"><img src="resources/images/coobbylogo.png" alt="coobby Logo"></a>
							<a href="demo-furniture.html" class="retina-logo"><img src="resources/images/coobbylogo.png" alt="Coobby Logo"></a>
						</div><!-- #logo end -->

						<div class="header-misc col-auto col-lg-3 order-3 justify-content-lg-end ms-0 ms-sm-3 px-0">

							<!-- Top Search
							============================================= -->
							<div id="top-search" class="header-misc-icon">
								<a href="feed/MyFeedModal.jsp" id="top-search-trigger">
									<i><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="115.99512" cy="116" r="84" opacity="0.2"></circle><circle cx="115.99512" cy="116" r="84" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></circle><line x1="175.38868" y1="175.40039" x2="223.98926" y2="224.00098" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg></i>
									<i><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="128" cy="128" r="96" opacity="0.2"></circle><circle cx="128" cy="128" r="96" fill="none" stroke="var(--themecolor)" stroke-miterlimit="10" stroke-width="16"></circle><line x1="160" y1="96" x2="96" y2="160" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line><line x1="160" y1="160" x2="96" y2="96" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg></i>
								</a>
							</div><!-- #top-search end -->

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
									<a class="menu-link" href="demo-furniture.html">
										<div>Home</div>
									</a>
									<ul class="sub-menu-container">
										<li class="menu-item">
											<a class="menu-link" href="demo-furniture.html"><div>Home Page 1</div></a>
										</li>
										<li class="menu-item">
											<a class="menu-link" href="demo-furniture-2.html"><div>Home Page 2</div></a>
										</li>
									</ul>
								</li>
								<li class="menu-item mega-menu mega-menu-full current">
									<a href="demo-furniture-products.html" class="menu-link"><div>Shop</div></a>

									<!-- Menu DropDown
									============================================= -->
									<div class="mega-menu-content border-bottom-0">
										<div class="container">
											<div class="row">
												<ul class="sub-menu-container mega-menu-column col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-products.html"><div>Sofa</div></a>

														<!-- Menu Sub DropDown
														============================================= -->
														<ul class="sub-menu-container mega-menu-dropdown">
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Sofa Set</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Single Seater</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Recliner</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Sofa Cum Bed</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>BeanBag</div></a>
															</li>
														</ul>
													</li>
												</ul>
												<ul class="sub-menu-container mega-menu-column col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-products.html"><div>Chairs</div></a>
													</li>
												</ul>
												<ul class="sub-menu-container mega-menu-column col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-products.html"><div>Beds</div></a>
													</li>
												</ul>
												<ul class="sub-menu-container mega-menu-column col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-products.html"><div>Wardrobe</div></a>
													</li>
												</ul>
												<ul class="sub-menu-container mega-menu-column col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-products.html"><div>Tables</div></a>
													</li>
												</ul>
												<ul class="sub-menu-container mega-menu-column col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-products.html"><div>More</div></a>
														<ul class="sub-menu-container mega-menu-dropdown">
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Kids Room</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Mattress</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Lighting</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>Pillows</div></a>
															</li>
															<li class="menu-item">
																<a class="menu-link" href="demo-furniture-products.html"><div>FlowerPot</div></a>
															</li>
														</ul>
													</li>
												</ul>
												<ul class="sub-menu-container mega-menu-column bg-color-light col-lg-auto">
													<li class="menu-item">
														<a class="menu-link" href="demo-furniture-single.html"><div><i class="icon-line-link"></i>Single Page</div></a>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</li>
								<li class="menu-item">
									<a class="menu-link" href="demo-furniture-about.html">
										<div>About Us</div>
									</a>
								</li>
								<li class="menu-item"><a class="menu-link" href="demo-furniture-contact.html">
									<div>Contact</div>
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

		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">

				<div class="container">
					<div class="tabdiv">
						<ul class="nav nav-tabs" id="myTab" role="tablist">
							<li class="nav-item">
								<a class="nav-link svg-underline nocolor fw-medium h1" data-animate="svg-underline-animated" id="feed_tab" data-toggle="tab" href="#" role="tab" aria-controls="home" aria-selected="true">My Feed</a>
							</li>
							<li class="nav-item">
								<a class="nav-link svg-underline nocolor fw-medium h1" data-animate="svg-underline-animated" id="chat_tab" data-toggle="tab" href="#" role="tab" aria-controls="profile"
								 aria-selected="false">Chatting</a>
							</li>				
						</ul>
					</div>
					<!-- Shop
					============================================= -->
					<div id="myTabContent" class="shop row gutter-30 col-mb-30 mt-3">
						<!-- 글쓰기 버튼 -->
						<div class="writefeed">
							<a href="feed/WriteFeed" class="button button-border button-rounded button-yellow"><i class="icon-pencil"></i>작성하기</a>
						</div>

						<!-- 마이 피드 내용 -->
						<div id="myfeed" role="tabpanel" aria-labelledby="home-tab">
						<div class="product col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="grid-inner">
								<div class="product-image">
									<img src="resources/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa">
									<div>
										<a href="feed/MyFeedModal" class="btn btn-light" data-lightbox="ajax">
										<div class="bg-overlay-content align-items-end justify-content-between" data-hover-animate="fadeIn" data-hover-speed="400">
										</div>
									</a>
									</div>
								</div>
								<div class="product-desc">
									<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html">title</a></h4></div>
									<h5 class="product-price fw-normal">userId</h5>
								</div>
							</div>
						</div>
						</div>
						<!-- 채팅 내용 -->
						<div id="chatting" role="tabpanel" aria-labelledby="profile-tab">
							<p>채팅</p>
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

		<!-- Footer
		============================================= -->
		<footer id="footer" class="border-width-1 border-default bg-white">
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

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="bg-color op-07 h-op-1">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon><polygon points="48 208 128 128 208 208 48 208" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polygon><polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="resources/js/jquery.js"></script>
	<script src="resources/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="resources/js/functions.js"></script>
	<script src="resources/js/Feed/myfeed.js"></script>

</body>
</html>