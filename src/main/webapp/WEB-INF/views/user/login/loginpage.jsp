<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
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
<link rel="stylesheet" href="/resources/user/css/fonts.css"
	type="text/css" />
<!-- Furniture Custom Fonts -->
<!-- / -->
<link rel="icon" href="img/Fevicon.png" type="image/png">
<link rel="stylesheet"
	href="/resources/user/vendors/bootstrap/bootstrap.min.css">
<link rel="stylesheet"
	href="/resources/user/vendors/fontawesome/css/all.min.css">
<link rel="stylesheet"
	href="/resources/user/vendors/themify-icons/themify-icons.css">
<link rel="stylesheet"
	href="/resources/user/vendors/linericon/style.css">
<link rel="stylesheet"
	href="/resources/user/vendors/owl-carousel/owl.theme.default.min.css">
<link rel="stylesheet"
	href="/resources/user/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet"
	href="/resources/user/vendors/nice-select/nice-select.css">
<link rel="stylesheet"
	href="/resources/user/vendors/nouislider/nouislider.min.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1//resources/user/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<!-- Document Title
	============================================= -->
<title>Furniture | Canvas</title>
<style>
body {
	min-height: 100vh;
	background: -webkit-gradient(linear, left bottom, right top, from(#92b5db),
		to(#1d466c));
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
#yu:hover {
color:blue;
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
		<jsp:include page="../user-nav.jsp" />
	</div>
<body>
	<div class="container" style="text-align: center;">
		<div class="input-form-backgroud row" style="text-align: center;">
			<div class="input-form col-md-12 mx-auto" style="text-align: center;">
				<h4 style="text-align: center;" class="mb-3">
					<a href='loginpage'><b>�α���</b></a>
				</h4>
				<form class="validation-form" novalidate method="post" action="checkLogin">
					<!-- <div class="row">  -->

					<div class="col-md-12 mb-3"
						style="padding: 0; text-align: center; margin: auto; width: 35%">
						<label for="name" style="text-align: center;">ID</label> <input
							type="text" class="form-control" id="name" name="memId"
							placeholder="example@naver.com" style='font-style: ltalic'
							value="test1" required>
						<div class="invalid-feedback">ID�� �Է����ּ���.</div>
					</div><br/>


					<!-- <div class="col-md-12 mb-3" style="padding: 0;"> <label for="nickname">����(�г���)</label> <input type="text"
                                        class="form-control" id="nickname" placeholder="" value="" style="width: 100%;" required>
                                        <button type="button" style="border: #92b5db;">�ߺ�Ȯ��</button>
                                        <input type="text" style="display:none">�̹� ������� �г����Դϴ�.
                                        <input type="text" style="display:none">��� ������ �г����Դϴ�.
                                    <div class="invalid-feedback"> ������ �Է����ּ���. </div>
                                </div> -->
					��й�ȣ
					<div class="form-group"
						style="padding: 0; text-align: center; margin: auto; width: 35%">
						<input type="password" name="memPass" id="password"
							class="form-control" placeholder="��й�ȣ �Է�." value="test1"/> <span class="pass"></span>
					</div>
					<div class="form-group" style=text-align:center; margin:auto;>
              		<c:if test="${fail ne null}">
              		<div class="alert alert-danger alert-common" role="alert" id="alert-danger" style= "width:35%; text-align:center; justify-content:center; margin:auto;">���̵�/�н����尡<br/> ��ġ���� �ʽ��ϴ�.<i class="tf-ion-close-circled"></i>
              		</div> </c:if>
					
					<br/><br/>

					<!--                                   <div class="form-group" style="padding: 0; text-align:center; margin:auto; width:35%">
                                    <input
                                      type="password"
                                      name="password_check"
                                      id="password_check"
                                      class="form-control"
                                      placeholder="��й�ȣ Ȯ��."
                                    /><br/></div> -->
					<div class="mb-4" style='text-align: center; margin: auto;'>
						<button class="btn btn-primary btn-lg btn-block" type="submit"
							style="width: 20%; height: 20%; margin: auto;">�α���</button>
					</div>
					<a href="selectauthpage"><span type="button" class="yu"
						style="color: #FFBF00; height: 47px; text-align: center;"><b
							class="yu" style="font-size: 125%;">������ �����Ű���?(�̸��� ����)</b></span></a>
					<!-- </div> -->
					<!-- <div class="mb-3"> <label for="address">��й�ȣ</label> <input type="text" class="form-control"
                                    id="address" placeholder="����Ư���� ������" required>
                                <div class="invalid-feedback"> �ּҸ� �Է����ּ���. </div>
                            </div>
                            <div class="mb-3"> <label for="address2">��й�ȣ Ȯ��<span class="text-muted"></span></label>
                                <input type="text" class="form-control" id="address2" placeholder="���ּҸ� �Է����ּ���."> </div>
                            <div class="row">
                            </div> -->

					<br/><br/>



				
			</div>
			<!-- <hr class="mb-4">
			<div class="custom-control custom-checkbox"
				style='text-align: center'>
				<input type="checkbox" class="custom-control-input" id="aggrement"
					required> <label class="custom-control-label"
					for="aggrement">�������� ���� �� �̿뿡 �����մϴ�.</label>
			</div> -->

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

<!-- #footer end -->

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
<script src="/resources/user/js/jquery.js"></script>
<script src="/resources/user/js/plugins.min.js"></script>

<!-- Footer Scripts
	============================================= -->
<script src="/resources/user/js/functions.js"></script>
<script src="/resources/user/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="/resources/user/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="/resources/user/vendors/skrollr.min.js"></script>
<script src="/resources/user/vendors/owl-carousel/owl.carousel.min.js"></script>
<script
	src="/resources/user/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="/resources/user/vendors/jquery.ajaxchimp.min.js"></script>
<script src="/resources/user/vendors/mail-script.js"></script>
<script src="/resources/user/js/main.js"></script>

</body>
</html>