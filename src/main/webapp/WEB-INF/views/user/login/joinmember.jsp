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
           
            .img_wrap {
           		width: 300px;
            	margin-top: 50px;
        	}
        	
        	.img_wrap img {
            max-width: 100%;
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
                        <h4 class="mb-3"><b style="text-align: center;">회원가입</b></h4>
                        <form class="validation-form" id='from' method="post" action='/userinsert' enctype="multipart/form-data" novalidate>
                           <!-- <div class="row">  -->
    							<input type="hidden" value="0" name="reportCnt">
    							<input type="hidden" value="1" name="memFilesize">
    							<input type="hidden" value="0" name="memKkt">
    							<input type="hidden" value="0" name="memAuth">
    							
                                <div class="col-md-12 mb-3" style="padding: 0;"> <label for="email">이메일</label> <input type="email" class="form-control"
                                                              
                                    id="email" name='memId' value="${email}">
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
                                        class="form-control" id="password_check" name="passwordcheck" placeholder="비밀번호 재입력" value="" style="width: 100%;" required>
                                    <div class="invalid-feedback"> 비밀번호를 재입력해주세요. </div>
                                </div>
                                
                                    <div class="alert alert-success alert-common" role="alert" id="alert-success" style= "width:100%"><i class="tf-ion-thumbsup"></i>비밀번호가 일치합니다.</div>
              						<div class="alert alert-danger alert-common" role="alert" id="alert-danger" style= "width:100%"><i class="tf-ion-close-circled"></i>비밀번호가 일치하지 않습니다.</div>
                               
                               
                                
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
                              <input type="text" name="memTel" id="tel" class="form-control" placeholder=" '-' 제외 하여 입력"  style="width: 40%;"
                              />
                              <!-- <button type="button" style="border: none;">인증번호 전송</button> -->
                            </div>
                            
    
  							<label>이미지 삽입</label><br/><br/><br/>
                            <div class="container">
                            
                                <div class="row">
                                    <div class="col-4">
                                   
                                        <img id="img" name='memOriginimage' alt='사진첨부' style="width: 300%; height:90%; text-align: left;">
                                        <br/>
                                          
                                    </div>
                                    <div class="col-8" style="height: 50%;">
                                       <!--  <button type="button" style="width: 30%; border: navajowhite;">첨부파일추가</button> -->
                                        <input type="file" id="input_img" name="file" onchange="fileTypeCheck(this)" accept="image/*">
                                        
                                    </div> 
                                </div> 
                               <button type="button" id="btn" class="btn btn-main text-center"></button> 
                               
    
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
	
	// 
	function fileTypeCheck(obj){
	pathpoint = obj.value.lastIndexOf('.');
	filepoint = obj.value.substring(pathpoint+1,obj.length);
	filetype = filepoint.toLowerCase();
	if(filetype=='gif' || filetype=='png' || filetype=='jpeg') {
		// 정상적인 이미지 확장자 파일인 경우
	} else {
		alert('이미지 파일 (*.gif, *.png, *.jpeg) 파일만 삽입할 수 있습니다.');
		parentObj  = obj.parentNode
		node = parentObj.replaceChild(obj.cloneNode(true),obj);
		return false;
	}
}
	
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
	   
	        $("#frm").remove();
	
	       // 이메일 유효성 검사
	         if(!getEmail.test($("#email").val())){
	        alert("이메일 양식에 맞지 않습니다.");
	        $("#email").val("");
	        $("#email").focus();
	        return false;
	       } 
	        
	       // 비밀번호 공백 확인
	       if($("#password").val() == "") {
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
	    
	    })
	    
	    
	    // 회원가입 화면에서 이미지 파일만 삽입 가능
	     var sel_file;  
	    $(document).ready(function() {
            $("#input_img").on("change", handleImgFileSelect);
        }); 
 
        function handleImgFileSelect(e) {
            var files = e.target.files;
            var filesArr = Array.prototype.slice.call(files);
 
            filesArr.forEach(function(f) {
                if(!f.type.match("image.*")) {
                    alert("확장자는 이미지 확장자만 가능합니다.");
                    return;
                }
 
                sel_file = f;
 
                var reader = new FileReader();
                reader.onload = function(e) {
                    $("#img").attr("src", e.target.result);
                }
                reader.readAsDataURL(f);
            });
        }
        

	</script>
</body>
</html>