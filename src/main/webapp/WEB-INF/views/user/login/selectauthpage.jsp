<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
	<script>
		Kakao.init('6f96c431fe2e9b04848644515ab3b04f');
		console.log(Kakao.isInitilized());

		//카카오로그인
		function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }

  		//카카오로그아웃
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>

<style>

	.loginmove:hover {
		cursor:pointer;
		text-decoration: underline;
		color: blue;	
	}
	
	#form1 {
	padding-right:0%;
	padding-left:0%;
	}

</style>
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
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="/resources/user/vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/user/vendors/fontawesome/css/all.min.css">
      <link rel="stylesheet" href="/resources/user/vendors/themify-icons/themify-icons.css">
      <link rel="stylesheet" href="/resources/user/vendors/linericon/style.css">
    <link rel="stylesheet" href="/resources/user/vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/resources/user/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/resources/user/vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="/resources/user/vendors/nouislider/nouislider.min.css">

	<!-- Document Title
	============================================= -->
	<title>Furniture | Canvas</title>

</head>



<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>

	
		<jsp:include page="../user-nav.jsp"/>
		
		
        <div class="loginbackground" style="background-image: url('/resources/user/images/my/LoginPage2.jpg');">
            <br/><br/><br/>
           <span style="text-align: center;"> <h1 style="font-size: 300%"><b>Select Authentication </b></h1></span> 
          <!--================Login Box Area =================-->
             <section class="login_box_area section-margin" style="padding: 100px;">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6" style= "border-radius: 5em;" >
                             <div class="login_form_inner" style="justify-content: center;  background-color: #F5ECCE; border-radius: 1em; object-fit: cover; margin: 10px; padding: 50px; object-fit: cover; height: 100%; margin-left:0; margin-roght:0;"> 
                                 <div class="hover" style="margin: auto; display:block; text-align: center;">
                                 <div id="form1" class="input-form col-md-12 mx-auto" style="text-align: center; ">
				<h4 style="text-align: center;" class="mb-3">
					<b>Email authentication</b>
				</h4>
				<span> 회원가입을 위하여 이메일 인증을 진행합니다.</span>
				<br/><br/>
				<form class="validation-form" novalidate>
					<!-- <div class="row">  -->

					<div class="col-md-12 mb-3"
						style="padding: 0; text-align: center; margin: auto; width: 50%">
						<label for="name" style="text-align: center;">E-mail ID</label>
						<input
							type="text" class="form-control" id="name"
							placeholder="Example@ex.com" style='font-style: ltalic'
							value="" required><br/>
							<button class="btn btn-warning btn-lg btn-block" type="submit"
							style="width: 80%; height: 20%; margin: auto;">인증번호 전송</button>
							 인증번호가 전송되었습니다.
						<div class="invalid-feedback">ID를 입력해주세요.
						
						
						
</div>

						
						<!-- <input name="email1" type="text"> @ <input name="email2" type="text">
    <select name="select_email" onChange="selectEmail(this)">
        <option value="" selected>선택하세요</option>
        <option value="naver.com">naver.com</option>
        <option value="gmail.com">gmail.com</option>
        <option value="hanmail.com">hanmail.com</option>
        <option value="1">직접입력</option>
    </select> -->
					</div><br/>


					<!-- <div class="col-md-12 mb-3" style="padding: 0;"> <label for="nickname">별명(닉네임)</label> <input type="text"
                                        class="form-control" id="nickname" placeholder="" value="" style="width: 100%;" required>
                                        <button type="button" style="border: #92b5db;">중복확인</button>
                                        <input type="text" style="display:none">이미 사용중인 닉네임입니다.
                                        <input type="text" style="display:none">사용 가능한 닉네임입니다.
                                    <div class="invalid-feedback"> 별명을 입력해주세요. </div>
                                </div> -->
					
					<div class="form-group"
						style="padding: 0; text-align: center; margin: auto; width: 50%">
						<label for="name" style="text-align: center;">인증번호 입력</label>
						<input type="password" name="user_pass" id="password"
							class="form-control" placeholder="인증번호를 입력해주세요." /> <span class="pass"></span>
					</div>
					<br/><br/>

					<!--                                   <div class="form-group" style="padding: 0; text-align:center; margin:auto; width:35%">
                                    <input
                                      type="password"
                                      name="password_check"
                                      id="password_check"
                                      class="form-control"
                                      placeholder="비밀번호 확인."
                                    /><br/></div> -->
					<div class="mb-4" style='text-align: center; margin: auto;'>
						<a href='/user/login/joinmember'><button class="btn btn-primary btn-lg btn-block" type="submit" 
							style="width: 50%; height: 50%; margin: auto;">인증완료</button></a>
					</div>
					<a href="loginpage"><span type="button" class="yu"
						style="color: #FFBF00; height: 47px; text-align: center;"><b
							class="yu" style="font-size: 125%;">이미 계정이 있으신가요?(로그인 화면)</b></span></a>
					<!-- </div> -->
					<!-- <div class="mb-3"> <label for="address">비밀번호</label> <input type="text" class="form-control"
                                    id="address" placeholder="서울특별시 강남구" required>
                                <div class="invalid-feedback"> 주소를 입력해주세요. </div>
                            </div>
                            <div class="mb-3"> <label for="address2">비밀번호 확인<span class="text-muted"></span></label>
                                <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요."> </div>
                            <div class="row">
                            </div> -->

					<br /> <br />



				
			</div>
									<!-- <img src="/resources/user/images/my/emaillogo.png" style="width: 300px; height: 200px;"><br/><br/> -->
                                    <h4 class="loginmove" style="text-align: center" onclick="location.href='emailauthpage.jsp'"><b>이메일 인증</b></h4><br/>
                                    <!-- <p class='emailpage' style="text-align: center;" >이메일 인증 후<br/> 회원가입 하실 수 있습니다.</p><br/> -->
									<!-- <span class="loginmove" style="font-size: 150%; text-align: center;" ><h2> 카카오 로그인 이동</h2></span> -->
                                    <!-- <form class="row login_form" action="#/" id="contactForm" >
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" style="border-radius: 5em;" id="name" name="name" placeholder="이메일아이디" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일아이디'">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" style="border-radius: 5em;" id="name" name="name" placeholder="비밀번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <div class="creat_account">
                                                <input type="checkbox" id="f-option2" name="selector">
                                                <label for="f-option2">아이디 기억하기</label>
                                            </div>
                                        </div> -->
                                        <!-- <div class="login_btn1" style="margin: auto; display:block; justify-content: center;">
                                            <button type="submit" value="submit" class="button button-login" style="display: block; border-radius: 5em; background-color: #DF7401; color: #FFBF00; border: #F5F6CE; width: 60%;"><p onclick="kakaoLogin();"> <a href="javascript:void(0)"> <b style="font-size: 20px; display: block;">☞ 카카오 로그인 이동</b></a></p></button><br/><hr style="width: 100%;"/>
                                        </div> -->
                                    
                                    <!-- <a class="button button-account" href="register1.html" style="display: block; text-align: center;" >카카오 계정 만들기</a> -->
                                <!-- </div> -->
                            </div>
                        </div>
                     </div> 
                        <div class="col-lg-6" style= "border-radius: 5em;" >
                             <div class="login_form_inner" style="justify-content: center;  background-color: #F7BE81; border-radius: 1em; object-fit: cover; margin: 10px; padding: 50px; object-fit: cover; height: 100%;"> 
                                 <div class="hover" style="margin: auto; display:block; text-align: center;">
									<img src="/resources/user/images/my/kakaologo.png"><br/><br/>
                                     <h4 class="loginmove" style="text-align: center" onclick="kakaoLogin();" ><b>카카오 계정으로 로그인</b></h4><br/>
                                     <h4 class="loginmove" style="text-align: center" onclick="kakaoLogout();" ><b>카카오 계정 로그아웃</b></h4><br/>
                                     
                                    <p style="text-align: center;">카카오 계정으로 연동하여<br/> 홈페이지에 로그인하실 수 있습니다.</p><br/>
                                    
                                    <a href='/user/login/joinmember'><button class="btn btn-primary btn-lg btn-block" type="submit" 
									style="width: 50%; height: 50%; margin: auto;">인증완료</button></a>
									
									<a href='/user/login/joinmember'>회원가입</a>
									<!-- <span class="loginmove" style="font-size: 150%; text-align: center;" ><h2> 카카오 로그인 이동</h2></span> -->
                                    <!-- <form class="row login_form" action="#/" id="contactForm" >
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" style="border-radius: 5em;" id="name" name="name" placeholder="이메일아이디" onfocus="this.placeholder = ''" onblur="this.placeholder = '이메일아이디'">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <input type="text" class="form-control" style="border-radius: 5em;" id="name" name="name" placeholder="비밀번호" onfocus="this.placeholder = ''" onblur="this.placeholder = '비밀번호'">
                                        </div>
                                        <div class="col-md-12 form-group">
                                            <div class="creat_account">
                                                <input type="checkbox" id="f-option2" name="selector">
                                                <label for="f-option2">아이디 기억하기</label>
                                            </div>
                                        </div> -->
                                        <!-- <div class="login_btn1" style="margin: auto; display:block; justify-content: center;">
                                            <button type="submit" value="submit" class="button button-login" style="display: block; border-radius: 5em; background-color: #DF7401; color: #FFBF00; border: #F5F6CE; width: 60%;"><p onclick="kakaoLogin();"> <a href="javascript:void(0)"> <b style="font-size: 20px; display: block;">☞ 카카오 로그인 이동</b></a></p></button><br/><hr style="width: 100%;"/>
                                        </div> -->
                                    
                                    <!-- <a class="button button-account" href="register1.html" style="display: block; text-align: center;" >카카오 계정 만들기</a> -->
                                <!-- </div> -->
                            </div>
                        </div>
                     </div> 
                </div>
            </div>
            </section> 
            <!--================End Login Box Area =================-->
        

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
	<script src="/resources/user/vendors/jquery/jquery-3.2.1.min.js"></script>
	<script src="/resources/user/vendors/bootstrap/bootstrap.bundle.min.js"></script>
	<script src="/resources/user/vendors/skrollr.min.js"></script>
	<script src="/resources/user/vendors/owl-carousel/owl.carousel.min.js"></script>
	<script src="/resources/user/vendors/nice-select/jquery.nice-select.min.js"></script>
	<script src="/resources/user/vendors/jquery.ajaxchimp.min.js"></script>
	<script src="/resources/user/vendors/mail-script.js"></script>
	<script src="/resources/user/js/main.js"></script>

</body>
</html>