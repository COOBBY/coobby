<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">


<style>
.loginmove:hover {
	cursor: pointer;
	text-decoration: underline;
	color: blue;
}

#form1 {
	padding-right: 0%;
	padding-left: 0%;
}
</style>
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
<link rel="stylesheet"
	href="/resources/user/demos/furniture/css/fonts.css" type="text/css" />
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

<!-- Document Title
	============================================= -->
<title>Furniture | Canvas</title>

</head>



<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>


	<jsp:include page="../user-nav.jsp" />


	<div class="loginbackground"
		style="background-image: url('/resources/user/images/my/LoginPage2.jpg');">
		<br/>
		<br/>
		<br/> <span style="text-align: center;">
			<h1 style="font-size: 300%">
				<b>Select Authentication </b></h1>
		</span>
		<!--================Login Box Area =================-->
		<section class="login_box_area section-margin" style="padding: 100px;">
			<div class="container">
				<div class="row">
					<div class="col-lg-6" style="border-radius: 5em;">
						<div class="login_form_inner"
							style="justify-content: center; background-color: #F5ECCE; border-radius: 1em; object-fit: cover; margin: 10px; padding: 50px; object-fit: cover; height: 100%; margin-left: 0; margin-roght: 0;">
							<div class="hover"
								style="margin: auto; display: block; text-align: center;">
								<div id="form1" class="input-form col-md-12 mx-auto"
									style="text-align: center;">
									<h4 style="text-align: center;" class="mb-3">
										<b>G-mail authentication</b>
									</h4>
									<span> 회원가입을 위하여 구글 이메일 인증을 진행합니다.</span><br/>
									<br/>
									<form class="validation-form" action="mailservice" novalidate>
										<!-- <div class="row">  -->

										<div class="col-md-12 mb-3"
											style="padding: 0; text-align: center; margin: auto; width: 50%">
											<label for="name" style="text-align: center;">E-mail
												ID</label> <input type="text" class="form-control" id="mail1"
												class="mail1" name='mail1'  placeholder="" style='font-style: ltalic'
												value="" required><br/>
																
											<button class="btn btn-warning btn-lg btn-block" type="button" style="width: 80%; height: 20%; margin: auto;" id="sendMail" >인증번호 전송</button>
											<!-- <span id='btn1' style='display:hidden'> 인증번호가 전송되었습니다.</span> -->
											<div class="invalid-feedback">ID를 입력해주세요.
									</form>

								</div>
								
							</div>
							<br/>


							<div class="form-group"
								style="padding: 0; text-align: center; margin: auto; width: 50%">
								<label for="name" style="text-align: center;">인증번호 입력</label> <input
									type="text" name="userEmail" id="password1"
									class="form-control" placeholder="인증번호 입력" /> <span
									class="pass"></span>
							</div>
							<br/>
							<br/>


							<div class="mb-4" style='text-align: center; margin: auto;'>
							<form action="/user/login/joinmember" method="post">
							<!-- <input type="text" value="" name="userEmail"> -->
							<a href='/user/login/joinmember'><button
										class="btn btn-primary btn-lg btn-block" type="submit" id='wan'
										style="width: 50%; height: 50%; margin: auto;">인증완료</button></a>
							</form>
							</div>
							<a href="loginpage"><span type="button" class="yu"
								style="color: #FFBF00; height: 47px; text-align: center;"><b class="yu" style="font-size: 125%;">이미 계정이 있으신가요?(로그인)</b></span></a>			

							<br/> <br/>

						</div>
						
						<br/>
					</div>
				</div>
			</div>
			<div class="col-lg-6" style="border-radius: 5em;">
				<div class="login_form_inner"
					style="justify-content: center; background-color: #F7BE81; border-radius: 1em; object-fit: cover; margin: 10px; padding: 50px; object-fit: cover; height: 100%;">
					<div class="hover"
						style="margin: auto; display: block; text-align: center;">
						<img src="/resources/user/images/my/kakaologo.png"><br />
						<br/>
						<h4 class="loginmove" style="text-align: center"
							onclick="kakaoLogin();">
							<b>카카오 계정으로 로그인</b>
						</h4>
						<br/>
						<h4 class="loginmove" style="text-align: center"
							onclick="kakaoLogout();">
							<b>카카오 계정 로그아웃</b>
						</h4>
						<br/>

						<p style="text-align: center;">
							카카오 계정으로 연동하여<br/> 본인인증 후 회원가입을 진행할 수 있습니다.
						</p>
						<br/> 
						<form action="/user/login/joinmember" method="post">
						<a href='/user/login/joinmember'><button
								class="btn btn-primary btn-lg btn-block" type="submit" id="email2"
								style="width: 50%; height: 50%; margin: auto;">인증완료</button></a>
								</form>
						
					</div>
				</div>
			</div>
	</div>
	</div>
	</section>
	<!--================End Login Box Area =================-->

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
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>
	<script src="/resources/user/js/main.js"></script>
	<script type="text/javascript">
	
		var code = ""; //추후 이메일전송 인증번호 저장을 위한 코드
		
		Kakao.init('6f96c431fe2e9b04848644515ab3b04f');
		/* console.log(Kakao.isInitilized()); */
		
		
		
		//카카오 로그인
		function kakaoLogin() {
			Kakao.Auth.login({
				success : function(response) {
					
					Kakao.API.request({
						url : '/v2/user/me',
						success : function(response) {
							console.log(response)
							console.log(response.kakao_account.email)						
						},
						fail : function(error) {
							console.log(error)
						},
					})
				},
				fail : function(error) {
					console.log(error)
				},
			})
		}

		//카카오 로그아웃
		function kakaoLogout() {
			if (Kakao.Auth.getAccessToken()) {
				Kakao.API.request({
					url : '/v1/user/unlink',
					success : function(response) {
						console.log(response)
					},
					fail : function(error) {
						console.log(error)
					},
				})
				Kakao.Auth.setAccessToken(undefined)
			}
		}
		
		$(function(){
		var message; //추후 이메일전송 인증번호 저장을 위한 코드
		
		$("#sendMail").click(function(){
			
			// 메일 입력 유효성 검사
			var email = $("#mail1").val(); // 사용자의 이메일 입력값
			console.log(email)
			if (email == "") {
				alert("메일 주소가 입력되지 않았습니다.");
			} else {
				/* mail = mail+"@"+$(".domain").val(); //셀렉트 박스에 @뒤 값들을 더함. */
				/* 메일 주소 입력 후 인증번호 전송 */
				$.ajax({
					type : 'GET',
					url : "mailCheck?email=" + email,
				/* 	data : {
						email : email
					}, */
					dataType : 'json',
					
					success : function(result) {
						message = result;
						console.log("result : " + result);
						console.log("message :  " + message);					
					},
		            error : function(err){
			                console.log(err);
			             }
				});
				alert("인증번호가 전송되었습니다.")
				isCertification = true; //추후 인증 여부를 알기 위한 값
			}
		});
		
		
		
		/* 인증번호 비교 */
		$("#password1").blur(function(){
			console.log("메세지 : " + code);
			var email = $("#mail1").val();
			var inputCode = $("#password1").val();              // 입력코드    
		   
		    if(inputCode == message){                              // 일치할 경우
		        alert('인증이 완료되었습니다. 회원가입 페이지로 이동합니다.')
		        location.href="/user/login/joinmember?userEmail="+email
		    } else {                                              // 일치하지 않을 경우
		        alert('인증코드가 맞지 않습니다. 다시 입력하여 주세요.')
		    }
		    
		});
		})
		
	</script>

</body>
</html>