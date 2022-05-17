<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link rel="preconnect" href="https:/fonts.gstatic.com">
	<link href="https:/fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Zilla+Slab:wght@400;500&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="/resources/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="/resources/style.css" type="text/css" />

	<link rel="stylesheet" href="/resources/css/dark.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/animate.css" type="text/css" />
	<link rel="stylesheet" href="/resources/css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="/resources/css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
	<link rel="stylesheet" href="/resources/css/colors.php?color=193532" type="text/css" />

	<!-- Furniture Demo Specific Stylesheet -->
	<link rel="stylesheet" href="/resources/demos/furniture/furniture.css" type="text/css" /> <!-- Furniture Custom Css -->
	<link rel="stylesheet" href="/resources/demos/furniture/css/fonts.css" type="text/css" /> <!-- Furniture Custom Fonts -->
	<!-- / -->
	<!-- CSS -->
	<link rel="stylesheet" href="/resources/css/Feed/Feed.css" type="text/css" />


	<!-- Document Title
	============================================= -->
	<title> COOBBY - 마이피드 수정하기 </title>
	<!-- <style>
        .dellink{
          display: none;
        }
    </style> -->
    

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

			<div class="top-cart d-flex flex-column h-100">
				<div class="top-cart-title">
					<h4>Shopping Cart <small class="bg-color-light icon-stacked text-center rounded-circle color">2</small></h4>
				</div>

				<!-- Cart Items
				============================================= -->
				<div class="top-cart-items">

					<!-- Cart Item 1
					============================================= -->
					<div class="top-cart-item">
						<div class="top-cart-item-image border-0">
							<a href="#"><img src="demos/furniture/images/cart/1.jpg" alt="Cart Image 1" /></a>
						</div>
						<div class="top-cart-item-desc">
							<div class="top-cart-item-desc-title">
								<a href="#" class="fw-medium">Blue Sofa for Dining Room</a>
								<span class="top-cart-item-price d-block"><del>$29.99</del> $19.99</span>
								<div class="d-flex mt-2">
									<a href="#" class="fw-normal text-black-50 text-smaller"><u>Edit</u></a>
									<a href="#" class="fw-normal text-black-50 text-smaller ms-3"><u>Remove</u></a>
								</div>
							</div>
							<div class="top-cart-item-quantity">x 1</div>
						</div>
					</div>

					<!-- Cart Item 2
					============================================= -->
					<div class="top-cart-item">
						<div class="top-cart-item-image border-0">
							<a href="#"><img src="demos/furniture/images/cart/2.jpg" alt="Cart Image 2" /></a>
						</div>
						<div class="top-cart-item-desc">
							<div class="top-cart-item-desc-title">
								<a href="#" class="fw-medium">Ceilling Light for Office</a>
								<span class="top-cart-item-price d-block">$24.99</span>
								<div class="d-flex mt-2">
									<a href="#" class="fw-normal text-black-50 text-smaller"><u>Edit</u></a>
									<a href="#" class="fw-normal text-black-50 text-smaller ms-3"><u>Remove</u></a>
								</div>
							</div>
							<div class="top-cart-item-quantity">x 2</div>
						</div>
					</div>
				</div>

				<!-- Cart Saved Text
				============================================= -->
				<div class="py-2 px-3 mt-auto text-black-50 text-smaller bg-color-light">
					<span><svg xmlns="http:/www.w3.org/2000/svg" width="16" height="16" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><path d="M54.46089,201.53911c-9.204-9.204-3.09935-28.52745-7.78412-39.85C41.82037,149.95168,24,140.50492,24,127.99963,24,115.4945,41.82047,106.048,46.67683,94.31079c4.68477-11.32253-1.41993-30.6459,7.78406-39.8499s28.52746-3.09935,39.85-7.78412C106.04832,41.82037,115.49508,24,128.00037,24c12.50513,0,21.95163,17.82047,33.68884,22.67683,11.32253,4.68477,30.6459-1.41993,39.8499,7.78406s3.09935,28.52746,7.78412,39.85C214.17963,106.04832,232,115.49508,232,128.00037c0,12.50513-17.82047,21.95163-22.67683,33.68884-4.68477,11.32253,1.41993,30.6459-7.78406,39.8499s-28.52745,3.09935-39.85,7.78412C149.95168,214.17963,140.50492,232,127.99963,232c-12.50513,0-21.95163-17.82047-33.68884-22.67683C82.98826,204.6384,63.66489,210.7431,54.46089,201.53911Z" opacity="0.2"></path><path d="M54.46089,201.53911c-9.204-9.204-3.09935-28.52745-7.78412-39.85C41.82037,149.95168,24,140.50492,24,127.99963,24,115.4945,41.82047,106.048,46.67683,94.31079c4.68477-11.32253-1.41993-30.6459,7.78406-39.8499s28.52746-3.09935,39.85-7.78412C106.04832,41.82037,115.49508,24,128.00037,24c12.50513,0,21.95163,17.82047,33.68884,22.67683,11.32253,4.68477,30.6459-1.41993,39.8499,7.78406s3.09935,28.52746,7.78412,39.85C214.17963,106.04832,232,115.49508,232,128.00037c0,12.50513-17.82047,21.95163-22.67683,33.68884-4.68477,11.32253,1.41993,30.6459-7.78406,39.8499s-28.52745,3.09935-39.85,7.78412C149.95168,214.17963,140.50492,232,127.99963,232c-12.50513,0-21.95163-17.82047-33.68884-22.67683C82.98826,204.6384,63.66489,210.7431,54.46089,201.53911Z" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></path><polyline points="172 104 113.333 160 84 132" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg> You save $10.00 on this order.</span>
				</div>

				<!-- Cart Price and Button
				============================================= -->
				<div class="top-cart-action flex-column align-items-stretch">
					<div class="d-flex justify-content-between align-items-center mb-2">
						<small class="text-uppercase ls1">Total</small>
						<h4 class="fw-medium font-body mb-0">$69.97</h4>
					</div>
					<a href="#" class="button btn-block text-center m-0 fw-normal"><i style="position: relative; top: -2px;"><svg xmlns="http:/www.w3.org/2000/svg" width="18" height="18" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><path d="M40,192a16,16,0,0,0,16,16H216a8,8,0,0,0,8-8V88a8,8,0,0,0-8-8H56A16,16,0,0,1,40,64Z" opacity="0.2"></path><path d="M40,64V192a16,16,0,0,0,16,16H216a8,8,0,0,0,8-8V88a8,8,0,0,0-8-8H56A16,16,0,0,1,40,64v0A16,16,0,0,1,56,48H192" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="10"></path><circle cx="180" cy="144" r="12"></circle></svg></i> Checkout</a>
				</div>
			</div>

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
							<a href="demo-furniture.html" class="standard-logo"><img src="/resources/images/coobbylogo.png" alt="coobby Logo"></a>
							<a href="demo-furniture.html" class="retina-logo"><img src="/resources/images/coobbylogo.png" alt="Coobby Logo"></a>
						</div><!-- #logo end -->

						<div class="header-misc col-auto col-lg-3 order-3 justify-content-lg-end ms-0 ms-sm-3 px-0">

							<!-- Top Search
							============================================= -->
							<div id="top-search" class="header-misc-icon">
								<a href="#" id="top-search-trigger">
									<i><svg xmlns="http:/www.w3.org/2000/svg" width="20" height="20" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="115.99512" cy="116" r="84" opacity="0.2"></circle><circle cx="115.99512" cy="116" r="84" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></circle><line x1="175.38868" y1="175.40039" x2="223.98926" y2="224.00098" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg></i>
									<i><svg xmlns="http:/www.w3.org/2000/svg" width="20" height="20" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="128" cy="128" r="96" opacity="0.2"></circle><circle cx="128" cy="128" r="96" fill="none" stroke="var(--themecolor)" stroke-miterlimit="10" stroke-width="16"></circle><line x1="160" y1="96" x2="96" y2="160" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line><line x1="160" y1="160" x2="96" y2="96" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg></i>
								</a>
							</div><!-- #top-search end -->

							<!-- Top Cart
							============================================= -->
							<div id="top-cart" class="header-misc-icon">
								<a href="#" class="side-panel-trigger"><svg xmlns="http:/www.w3.org/2000/svg" width="20" height="20" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><path d="M62.54543,144H188.10132a16,16,0,0,0,15.74192-13.13783L216,64H48Z" opacity="0.2"></path><path d="M184,184H69.81818L41.92162,30.56892A8,8,0,0,0,34.05066,24H16" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></path><circle cx="80" cy="204" r="20" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></circle><circle cx="184" cy="204" r="20" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></circle><path d="M62.54543,144H188.10132a16,16,0,0,0,15.74192-13.13783L216,64H48" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></path></svg><span class="top-cart-number">3</span></a>
							</div><!-- #top-cart end -->

						</div>

						<!-- Mobile Menu Icon
						============================================= -->
						<div id="primary-menu-trigger">
							<svg xmlns="http:/www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 256 256"><defs><style>.a,.c{fill:none;}.b{fill:var(--themecolor);opacity:0.2;}.c,.d{stroke:var(--themecolor);}.c{stroke-miterlimit:10;stroke-width:14px;}.d{stroke-linecap:round;stroke-linejoin:round;stroke-width:13px;}</style></defs><rect class="a" width="24" height="24"/><circle class="b" cx="96" cy="96" r="96" transform="translate(32 32)"/><circle class="c" cx="96" cy="96" r="96" transform="translate(32 32)"/><line class="d" x2="85" transform="translate(86 127)"/><line class="d" x2="85" transform="translate(86 97)"/><line class="d" x2="85" transform="translate(86 159)"/></svg>
							<svg xmlns="http:/www.w3.org/2000/svg" width="24" height="24" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><circle cx="128" cy="128" r="96" opacity="0.2"></circle><circle cx="128" cy="128" r="96" fill="none" stroke="var(--themecolor)" stroke-miterlimit="10" stroke-width="16"></circle><line x1="160" y1="96" x2="96" y2="160" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line><line x1="160" y1="160" x2="96" y2="96" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></line></svg>
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

		<!-- 수정하기
		============================================= -->
		<div id="updatecon">
			<div class="content-wrap">
				<div class="container">
					<div class="row">
					<div class="col-md-6">
						<input type="file" class="hidden_input" id="uploadFile" name="uploadFile" accept="image/jpeg, image/jpg, image/png" multiple />
						<div id="preview"></div>
						<!-- <img src="" class="thumb"/>
						<a href="javascript:void(0);" class="dellink">사진삭제</a>  -->
					</div>
					<div class="col-md-6">
						<textarea id="write_content" class="form-control" maxlength="1000" style="resize: none; height: 120px;" ></textarea><table class="table">
							  <tr>
								<td>제목</td>
								<td><textarea id="write_content" class="form-control" maxlength="1000" style="resize: none; height: 30px;" ></textarea></td>
							  </tr>
							  <tr>
								<td>작성자</td>
								<td>USERID</td>
							  </tr>
							  <tr>
								<td>내용</td>
								<td><textarea id="write_content" class="form-control" maxlength="1000" style="resize: none; height: 150px;" ></textarea></td>
							  </tr>

						  </table>
					</div>
					</div>
				</div>
			</div>
			<!-- 사진 업로드 끝 -->
			<div class="updatebtn">
				<a href="#" class="button button-3d button-rounded button-pink"><i class="icon-line-edit-3"></i>수정하기</a>
				<a href="1_myfeed.html" class="button button-3d button-rounded button-blue"><i class="icon-line-arrow-left"></i>뒤로가기</a>
			</div>
		</div><!-- #content end -->

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
									<li><a href="https:/facebook.com/semicolonweb" target="_blank"><i class="icon-facebook"></i> Facebook</a></li>
									<li><a href="https:/instagram.com/semicolonweb" target="_blank"><i class="icon-instagram"></i> Instagram</a></li>
									<li><a href="https:/twitter.com/__semicolon" target="_blank"><i class="icon-twitter"></i> Twitter</a></li>
									<li><a href="https:/youtube.com/c/SemiColonweb/videos" target="_blank"><i class="icon-youtube"></i> YouTube</a></li>
									<li><a href="https:/wa.me/00112233344"><i class="icon-whatsapp"></i> WhatsApp</a></li>
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
		<svg xmlns="http:/www.w3.org/2000/svg" width="24" height="24" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon><polygon points="48 208 128 128 208 208 48 208" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polygon><polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="/resources/js/jquery.js"></script>
	<script src="/resources/js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/js/functions.js"></script>
	<script src="/resources/js/Feed/myfeed.js"></script>
	<script type="text/javascript" src="/resources/js/Feed/UploadMyFeed.js"></script>

</body>
</html>