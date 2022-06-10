<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
            
/*             #alert-success{
             display:none;
             }
             #alert-danger{
             display:none;
             }
             #success{
             display:none;
             }
             #danger{
             display:none;
             }  */
             
             
            
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
                        <h4 class="mb-3"><b style="text-align: center;">회원가입</b></h4>
                        <form class="validation-form" id='from' method="post" action='/userinsert' novalidate >
                           <!-- <div class="row">  -->
    
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="email">이메일</label> <input type="email" class="form-control"
                                    id="email" name='memId' placeholder="${memEmail}={$memEmail}">
                                <div class="invalid-feedback"> 이메일을 입력해주세요. </div>
                                </div>
    
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="name">이름</label> <input type="text" class="form-control"
                                    id="name" name="memName" placeholder="이름입력" value="" required>
                                    
                                <div class="invalid-feedback"> 이름을 입력해주세요. </div>
                            </div>
                            
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="userNickname">별명(닉네임)</label> <input type="text"
                                        class="form-control" id="nickname" name="memNickname" placeholder="닉네임입력" value="" style="width: 100%;" required>
                                        <button type="button" style="border: #92b5db" id='joongbokBtn'>중복확인</button>
                                        <div class="alert alert-success alert-common" role="alert" id="success" style="width:100%"><i class="tf-ion-thumbsup"></i>사용 가능한 닉네임입니다.</div>
                						<div class="alert alert-danger alert-common" role="alert" id="danger" style="width:100%"><i class="tf-ion-close-circled"></i>중복된 닉네임입니다.</div>
                                        <!-- <input type="text" style="display:none">이미 사용중인 닉네임입니다.
                                        <input type="text" style="display:none">사용 가능한 닉네임입니다. -->
                                    <div class="invalid-feedback"> 별명을 입력해주세요. </div>
                                </div>
                                
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="labelpassword">비밀번호</label> <input type="password"
                                        class="form-control" id="password" name="memPass" placeholder="비밀번호 입력" value="" style="width: 100%;" required>
                                    <div class="invalid-feedback"> 비밀번호를 입력해주세요. </div>
                                </div>
                                
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="labelpassword_check">비밀번호 확인</label> <input type="password"
                                        class="form-control" id="password_check" placeholder="비밀번호 재입력" value="" style="width: 100%;" required>
                                    <div class="invalid-feedback"> 비밀번호를 재입력해주세요. </div>
                                </div>
                                
                                    <div class="alert alert-success alert-common" role="alert" id="alert-success" style= "width:100%"><i class="tf-ion-thumbsup"></i>비밀번호가 일치합니다.</div>
              						<div class="alert alert-danger alert-common" role="alert" id="alert-danger" style= "width:100%"><i class="tf-ion-close-circled"></i>비밀번호가 일치하지 않습니다.</div>
                               
                               
                                <!-- <div>
                                  비밀번호
                                <div class="form-group">
							<input type="password" name="user_pass" id="password" class="form-control" placeholder="비밀번호 입력" />
							<span class="pass"></span>
                                  <div class="invalid-feedback"> 비밀번호를 입력해주세요. </div>
                                  </div>
                                  </div> -->
                                  
                                 
                                  <!-- 비밀번호 확인
                                  <div class="form-group">
							<input type="password" name="password_check" id="password_check"
							class="form-control" placeholder="비밀번호 재입력" /><br/>
							</div> -->
                            <!-- </div> -->
                            <!-- <div class="mb-3"> <label for="address">비밀번호</label> <input type="text" class="form-control"
                                    id="address" placeholder="서울특별시 강남구" required>
                                <div class="invalid-feedback"> 주소를 입력해주세요. </div>
                            </div>
                            <div class="mb-3"> <label for="address2">비밀번호 확인<span class="text-muted"></span></label>
                                <input type="text" class="form-control" id="address2" placeholder="상세주소를 입력해주세요."> </div>
                            <div class="row">
                            </div> -->
                            생년월일
                            <div class="form-group">
                              <input type="date" name="memBirth" id="birth_date"
                            /><br/><br/>
                            성별
                            <div class="form-group">
                              
                                <input type="radio" name="memSex" value="0" checked/>
                                남  &ensp;
                                <input type="radio" name="memSex" value="1" />
                                여
                              
                            </div>
                            휴대전화
                            <div class="form-group">
                              <input type="tel" name="user_tel" id="tel" class="form-control" placeholder=" '-' 포함하여 입력 " style="width: 40%;"
                              />
                              <!-- <button type="button" style="border: none;">인증번호 전송</button> -->
                            </div>
                            <br/>
                            <br/>
    
                            <div class="container">
                                <div class="row">
                                    <div class="col-3">
                                        <img src="/resources/user/images/my/user.png" style="width: 50%; height:90%; text-align: left;">
                                        <br/> <span>프로필사진</span>
                                    </div>
                                    <div class="col-8" style="height: 50%;">
                                       <!--  <button type="button" style="width: 30%; border: navajowhite;">첨부파일추가</button> -->
                                        <input type="file" id="file" name="file">
                                    </div>
                                </div> 
                               <button type="button" id="btn" class="btn btn-main text-center"> 
                                <!-- <div class="col-md-12 mb-3"> <label for="root">생년월일</label> <select
                                        class="custom-select w-30" id="root" style="width: 1%">
                                        <option value="월 선택" selected ></option>
                                        <option>1월</option><option>2월</option><option>3월</option><option>4월</option><option>5월</option><option>6월</option><option>7월</option><option>8월</option><option>9월</option>
                                        <option>12월</option>
                                    </select> 
                                    <div class="invalid-feedback"> 가입 경로를 선택해주세요. </div>-->
                                    
                                <!-- <div class="col-md-4 mb-3"> <label for="code">추천인 코드</label> <input type="text"
                                        class="form-control" id="code" placeholder="" required>
                                    <div class="invalid-feedback"> 추천인 코드를 입력해주세요. </div>
                                </div> -->
    
                                </div>
                             </div> 
                            <hr class="mb-4">
                            <div class="custom-control custom-checkbox" style='text-align:center'> <input type="checkbox" class="custom-control-input"
                                    id="aggrement" required> <label class="custom-control-label" for="aggrement">개인정보 수집 및 이용에
                                    동의합니다.</label><br/> </div>
                            <div class="mb-4" style= 'text-align:center;'> <button class="btn btn-primary btn-lg btn-block" type="submit" id='joincomplete'>가입완료</button></div>
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
		=============================================== -->
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
	
	<script type="text/javascript">
	$(function(){
		
		  $("#joincomplete").click(function(){
		      if(checks()){
		         $("#from").submit()
		      }
		  });
	   function checks() {
	        var getEmail =
	          /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	        var getPassword = /^[A-Za-z0-9]{4,12}$/;
	        var getName = /^[가-힣]{2,6}$/;
	        var getPhone = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
	   
	
	       //아이디 공백 확인
	       /* if ($("#email").val() == "") {
	          const err =
	            '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 이메일을 작성해주세요</div>';
	          $("#email").parent().append(err);
	          $("#email").focus();
	          return false;
	        } */
	        $("#frm").remove();
	
	       // 아이디 유효성 검사
	       /*  if(!getEmail.test($("#email").val())){
	        alert("이메일 양식에 맞지 않습니다.");
	        $("#email").val("");
	        $("#email").focus();
	        return false;
	       } */
	        
	       // 비밀번호 공백 확인
	       if ($("#password").val() == "") {
	          const err =
	          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i>영어대문자, 소문자, 숫자 중에서 4~12자로만 입력 가능합니다.</div>';
	
	          $("#password").parent().append(err);
	          $("#password").focus();
	          return false;
	        }
	        $("#frm").remove();
	
	       // 비밀번호 유효성 검사
	         if(!getPassword.test($("#password").val())){
	        alert("비밀번호가 양식에 맞지 않습니다.");
	        $("#password").val("");
	        $("#password").focus();
	        return false;
	       } 
	
	       // 비밀번호 재입력란의 공백 확인
	       if ($("#password_check").val() == "") {
	          const err =
	          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 비밀번호를 다시 한번 작성해주세요.</div>';
	          $("#password_check").parent().append(err);
	          $("#password_check").focus();
	          return false;
	        }
	        $("#frm").remove();
	       
	        
	       // 비밀번호 확인 유효성 검사
	       if(!getPassword.test($("#password_check").val())){
	        alert("비밀번호가 틀렸습니다. 다시한번 입력해주세요.");
	        $("#password_check").val("");
	        $("#password_check").focus();
	        return false;
	       }
	
	        //이름 공백 확인
	        if ($("#name").val() == "") {
	          const err =
	          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 한글로 2~6자까지 가능합니다.</div>';
	
	          $("#name").parent().append(err);
	          $("#name").focus();
	          return false;
	        }
	        $("#frm").remove();
	
	         // 이름 유효성 검사
	        if(!getName.test($("#name").val())){
	        alert("이름 양식에 맞지 않습니다.");
	        $("#name").val("");
	        $("#name").focus();
	        return false;
	       }
	         
	         // 닉네임 유효성 검사
	        if(!getName.test($("#nickname").val())){
	        alert("닉네임 양식에 맞지 않습니다.");
	        $("#nickname").val("");
	        $("#nickname").focus();
	        return false;
	       }
	
	        // 성별 공백 확인
	       if($("#gender").val() == "") {
	          const err =
	            '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 필수 입력사항입니다.</div>';
	
	          $("#gender").parent().append(err);
	          $("#gender").focus();
	          return false;
	        }
	        $("#frm").remove();
	
	         // 생년월일 공백 확인
	          if ($("#birth_date").val() == "") {
	          const err =
	          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 생년월일이 입력되지 않았습니다.</div>';
	
	          $("#birth_date").parent().append(err);
	          $("#birth_date").focus();
	          return false;
	        }
	        $("#frm").remove();
	
	        // 휴대전화 공백 확인
	          if ($("#tel").val() == "") {
	          const err =
	          '<div class="alert alert-danger alert-common" role="alert" id="frm"><i class="tf-ion-close-circled"></i> 휴대전화번호를 작성해주세요 ex)010-1234-5678</div>';
	
	          $("#tel").parent().append(err);
	          $("#tel").focus();
	          return false;
	        }
	        $("#frm").remove();
	
	         // 휴대전화 유효성 검사
	         if(!getPhone.test($("#tel").val())){
	        alert("휴대전화번호 양식에 맞게 기입해주세요.");
	        $("#tel").val("");
	        $("#tel").focus();
	        return false;
	       }
	         return true;
	      }
	
	
	    // 닉네임 중복확인 체크
	     $("#success").css('display', 'none');
	     $("#danger").css('display', 'none');
	     
	    $(function(){
	       $('#joongbokBtn').on('click',function(){
	    	    /* console.log($('#nickname').val())  */
	          $.ajax({
	             type:'POST',
	             url:'checkNickname',
	             data: {
	                "nickname" : $('#nickname').val()
	                },
	                contentType : 'application/x-www-form-urlencoded;charset=utf-8',
	             success: function(data){
	            	 alert(data)
	                if(data!=null){
	                   $('#success').css('display', 'none');
	                   $("#danger").css('display', 'none');
	                   checkNickname=true;
	                } else{
	                   $("#success").css('display', 'none');
	                   $('#danger').css('display', 'none');
	                   checkNickname=false;
	                   }
	                },
	             error : function(err){
	                console.log(err);
	             }
	          }); //end of ajax
	       }); //end on
	    });
	    // 닉네임 중복확인 체크
	/*     $("#success").css('display', 'none');
	    $("#danger").css('display', 'none');
	   $(function(){
	      $('#checkbtn').on('click',function(){
	         $.ajax({
	            type:'GET',
	            url:'checkNickname',
	            data: {
	               "user_nickname" : $('#nickname').val()
	               },
	            success: function(data){
	               if(data=='0'){
	                  $('#success').css('display', 'inline-block');
	                  $("#danger").css('display', 'none');
	               } else{
	                  $("#success").css('display', 'none');
	                  $('#danger').css('display', 'inline-block');
	                  }
	               },
	            error : function(err){
	               console.log(err);
	            }
	         }); //end of ajax
	      }); //end on
	   }); */
	    
	   
	   
	    // 비밀번호와 비밀번호 확인 일치 불일치 여부
	     $("#alert-success").css('display', 'none');
	     $("#alert-danger").css('display', 'none');
	    $('.form-control').focusout(function() {
	        var pwd1 = $("#password").val();
	        var pwd2 = $("#password_check").val();
	  
	        if ( pwd1 != '' && pwd2 == '' ) {
	            null;
	        } else if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	                $("#alert-success").css('display', 'inline-block');
	                $("#alert-danger").css('display', 'none');
	            } else {
	                $("#alert-success").css('display', 'none');
	                $("#alert-danger").css('display', 'inline-block');
	            }
	        }
	
	
	});
	    
	    //닉네임 중복확인 여부 체크
	/*      	$('#joongbokBtn').click(function(){
	    		$.ajax({
	    			url:"/api/checkNickname",
	    			data:{memNickname : $('#nickname').val()},
	    			success:function(data){
	    	                alert(data)
	    				
	    				if(data=='yes'){
	    					$('#success').css('display', 'inline-block');
	    	                $("#danger").css('display', 'none');
	    	                checkNickname=true;				
	    				}else{
	    					 $("#success").css('display', 'none');
	    	                 $('#danger').css('display', 'inline-block');
	    	                 checkNickname=false;				
	    				}
	    			}
	    		})	
	    	}) */  
	    })
	</script>
	
</body>
</html>