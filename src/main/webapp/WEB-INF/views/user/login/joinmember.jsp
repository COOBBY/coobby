<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
	<link rel="stylesheet" href="style.css" type="text/css" />

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
	<link rel="stylesheet" href="/resources/user/css/fonts.css" type="text/css" /> <!-- Furniture Custom Fonts -->
	<!-- / -->
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="/resources/user/vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/user/vendors/fontawesome/css/all.min.css">
      <link rel="stylesheet" href="/resources/user/vendors/themify-icons/themify-icons.css">
      <link rel="stylesheet" href="/resources/user/vendors/linericon/style.css">
    <link rel="stylesheet" href="/resources/user/vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/user/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/user/vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="/resources/user/vendors/nouislider/nouislider.min.css">
      <!-- Bootstrap CSS --> <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1//resources/user/css/bootstrap.min.css"
  integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

	<!-- Document Title
	============================================= -->
	<title>Furniture | Canvas</title>
	        <style>
            body {
                min-height: 100vh;
                background: -webkit-gradient(linear, left bottom, right top, from(#92b5db), to(#1d466c));
                background: -webkit-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
                background: -moz-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
                background: -o-linear-gradient(bottom left, #92b5db 0%, #1d466c 100%);
                background: linear-gradient(to top right, #92b5db 0%, #1d466c 100%);
            }
        
            .input-form {
                max-width: 680px;
                margin-top: 80px;
                padding: 32px;
                background: #fff;
                -webkit-border-radius: 10px;
                -moz-border-radius: 10px;
                border-radius: 10px;
                -webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                -moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
                box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
            }
        </style>

</head>



<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>


		<!-- Header
		============================================= -->
		<div id="wrapper" class="clearfix">
	<jsp:include page="../user-nav.jsp"/>
		</div>
        
        
        <body>
            <div class="container">
                <div class="input-form-backgroud row">
                    <div class="input-form col-md-12 mx-auto">
                        <h4 class="mb-3"><b style="text-align: center;">ȸ������</b></h4>
                        <form class="validation-form" novalidate>
                           <!-- <div class="row">  -->
    
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="email">�̸���</label> <input type="email" class="form-control"
                                    id="email" placeholder="you@example.com" disabled>
                                <div class="invalid-feedback"> �̸����� �Է����ּ���. </div>
                                </div>
    
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="name">�̸�</label> <input type="text" class="form-control"
                                    id="name" placeholder="" value="" required>
                                <div class="invalid-feedback"> �̸��� �Է����ּ���. </div>
                            </div>
    
    
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="nickname">����(�г���)</label> <input type="text"
                                        class="form-control" id="nickname" placeholder="" value="" style="width: 100%;" required>
                                        <button type="button" style="border: #92b5db;">�ߺ�Ȯ��</button>
                                        <!-- <input type="text" style="display:none">�̹� ������� �г����Դϴ�.
                                        <input type="text" style="display:none">��� ������ �г����Դϴ�. -->
                                    <div class="invalid-feedback"> ������ �Է����ּ���. </div>
                                </div>
                                  ��й�ȣ
                                <div class="form-group">
                                    <input
                                      type="password"
                                      name="user_pass"
                                      id="password"
                                      class="form-control"
                                      placeholder="��й�ȣ�� �Է��ϼ���."
                                    />
                                    <span class="pass"></span>
                                  </div>
                                  ��й�ȣ Ȯ��
                                  <div class="form-group">
                                    <input
                                      type="password"
                                      name="password_check"
                                      id="password_check"
                                      class="form-control"
                                      placeholder="��й�ȣ�� ���Է��Ͻʽÿ�."
                                    /><br/>
                            <!-- </div> -->
                            <!-- <div class="mb-3"> <label for="address">��й�ȣ</label> <input type="text" class="form-control"
                                    id="address" placeholder="����Ư���� ������" required>
                                <div class="invalid-feedback"> �ּҸ� �Է����ּ���. </div>
                            </div>
                            <div class="mb-3"> <label for="address2">��й�ȣ Ȯ��<span class="text-muted"></span></label>
                                <input type="text" class="form-control" id="address2" placeholder="���ּҸ� �Է����ּ���."> </div>
                            <div class="row">
                            </div> -->
                            �������
                            <div class="form-group">
                              <input
                                type="date"
                                name="user_birth"
                                id="birth_date"
    
                            /><br/><br/>
                            ����
                            <div class="form-group">
                              
                                <input type="radio" name="gender" value="M" checked/>
                                ��  &ensp;
                                <input type="radio" name="gender" value="F" />
                                ��
                              
                            </div>
                            �޴���ȭ
                            <div class="form-group">
                              <input type="tel" name="user_tel" id="tel" class="form-control" placeholder="- ���� �� ��ȣ�� �Է�" style="width: 40%;"
                              />
                              <button type="button" style="border: none;">������ȣ ����</button>
                            </div>
                            <br/>
                            <br/>
    
                            <div class="container">
                                <div class="row">
                                    <div class="col-3">
                                        <img src="images/my/user.png" style="width: 50%; height:90%; text-align: left;">
                                        <br/> <span>�����ʻ���</span>
                                    </div>
                                    <div class="col-8" style="height: 50%;">
                                        <button type="button" style="width: 30%; border: navajowhite;">÷�������߰�</button>
                                    </div>
                                </div> 
                               <button type="button" id="btn" class="btn btn-main text-center"> 
                                <!-- <div class="col-md-12 mb-3"> <label for="root">�������</label> <select
                                        class="custom-select w-30" id="root" style="width: 1%">
                                        <option value="�� ����" selected ></option>
                                        <option>1��</option><option>2��</option><option>3��</option><option>4��</option><option>5��</option><option>6��</option><option>7��</option><option>8��</option><option>9��</option>
                                        <option>12��</option>
                                    </select> 
                                    <div class="invalid-feedback"> ���� ��θ� �������ּ���. </div>-->
                                    
                                <!-- <div class="col-md-4 mb-3"> <label for="code">��õ�� �ڵ�</label> <input type="text"
                                        class="form-control" id="code" placeholder="" required>
                                    <div class="invalid-feedback"> ��õ�� �ڵ带 �Է����ּ���. </div>
                                </div> -->
    
                                </div>
                             </div> 
                            <hr class="mb-4">
                            <div class="custom-control custom-checkbox" style='text-align:center'> <input type="checkbox" class="custom-control-input"
                                    id="aggrement" required> <label class="custom-control-label" for="aggrement">�������� ���� �� �̿뿡
                                    �����մϴ�.</label> </div>
                            <div class="mb-4" style= 'text-align:center;'> <button class="btn btn-primary btn-lg btn-block" type="submit">���ԿϷ�</button></div>
                        </form>
                    </div>
                </div>
                <footer class="my-3 text-center text-small">
                    <p class="mb-1">&copy; 2022~ing COOBBY</p>
                </footer>
            </div>
            <script> window.addEventListener('load', () => { const forms = document.getElementsByClassName('validation-form'); Array.prototype.filter.call(forms, (form) => { form.addEventListener('submit', function (event) { if (form.checkValidity() === false) { event.preventDefault(); event.stopPropagation(); } form.classList.add('was-validated'); }, false); }); }, false); </script>
        </body>


		<!-- Footer
		============================================= -->
		<footer id="footer">
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
	<script src="js/jquery.js"></script>
	<script src="js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>
	<script src="vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="vendors/skrollr.min.js"></script>
	<script src="vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="vendors/jquery.ajaxchimp.min.js"></script>
	<script src="vendors/mail-script.js"></script>
	<script src="js/main.js"></script>

</body>
</html>