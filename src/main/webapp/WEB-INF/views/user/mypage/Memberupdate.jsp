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
	
	<style>
		.list:hover {
			opacity: 0.8;
			background-color:#F2F2F2;
		}
		.page-wrapper {
		margin-top: 150px;
		}
		#footer {
		margin-top: 100px;
		}
		#connect{
		border : 3px solid #e2d9d9;
		padding-top : 5%;
		border-radius : 5% 5% 3% 3%;
		}
	</style>
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
  <section class="page-header">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        </div>
      </div>
    </div>
  </section>
  <div class="page-wrapper">
    <div class="container">
      <div class="row" style="margin-top: 20px;" id="connect">
        <!--사이드 -->
        <div class="col-md-3" style="border-right: 2px solid; height:100%">
          <aside class="sidebar" >
            <div class="navigation">
              <div class="menuToggle"></div>
			  <ul style="list-style-type: none;">
                     <li>
                       <h4 style="text-align:center;">마이페이지</h4>
                       <hr/>
                     </li>
                     <li class="list">
                       <a href="#" class="btn btn-solid-border w-100" >내피드</a>
                     </li>
                    <li class="list">
                       <a href="MemberFavorites" class="btn btn-solid-border w-100">즐겨찾기</a>
                    </li>
                     <li class="list">
                      <a href="Memberpasswordcheck" class="btn btn-solid-border w-100">회원정보수정</a>
                    </li>
                    <li class="list">
                      <a href="inquery" class="btn btn-solid-border w-100">1:1 문의글</a>
                    </li>
                    <li class="list">
                      <a href="Membersignout" class="btn btn-main w-100">회원탈퇴</a>
                    </li>
                 </ul>
              </div>
            </aside>
            </div>
                    <!-- 사이드 닫음 -->
                    <div class="col-md-9" style="display: flex; justify-content: center; margin-top: 40px;">
                      <div class="block text-center w-50">
                        <h2 class="text-center">회원정보 수정</h2><br/>
                        <form class="text-left clearfix" id='from' method="post" action="ModifyMember">
                        <div class="col-md-12" style="text-align:left;">
                          <div class="form-group col-md-12">
                            <label>이메일아이디 (수정불가)</label>
                            <input type="text" id="memId" name="memId" class="form-control" value="${memInfo.memId }"readonly="readonly"/>
                          </div>
                          <div class="form-group col-md-12">
                            <label>비밀번호</label>
                            <input type="password" id="password" name="memPass" class="form-control">
                          </div>
                          <div class="form-group col-md-12">
                            <label>비밀번호 확인</label>
                            <input type="password" id="password_check" name="passwordcheck" class="form-control">
                          </div>
                            <div class="alert alert-success alert-common passCorrect" role="alert" id="alert-success" style= "width:100%"><i class="tf-ion-thumbsup"></i>비밀번호가 일치합니다.</div>
              				<div class="alert alert-danger alert-common passDiff" role="alert" id="alert-danger" style= "width:100%"><i class="tf-ion-close-circled"></i>비밀번호가 일치하지 않습니다.</div>
                          <div class="form-group col-md-12">
                            <label>이름</label>
                            <input type="text" id="name" name="memName" class="form-control" value="${memInfo.memName }" readonly="readonly"/>
                          </div>
                          <div class="form-group col-md-12">
                            <label>닉네임</label>
                            <input type="text" id="nickname" name="memNickname" class="form-control" value="${memInfo.memNickname }">
                             <button type="button" style="border: #92b5db" id='joongbokBtn'>중복확인</button>
                                <div class="alert alert-success alert-common nickCorrect" role="alert" id="success" style="width:100%"><i class="tf-ion-thumbsup"></i>사용 가능한 닉네임입니다.</div>
                				<div class="alert alert-danger alert-common nickDiff" role="alert" id="danger" style="width:100%"><i class="tf-ion-close-circled"></i>중복된 닉네임입니다.</div>
                          </div>
                          <div class="form-group col-md-12">
                            <label>휴대전화</label>
                            <input type="text" id="tel" name="memTel" class="form-control" value="${memInfo.memTel }">
                          </div>
                        </div>
                        <div style="text-align: center">
                        <button type="button" class="btn btn-main" id="updatebtn" style="background-color: black; color: aliceblue;">수정하기</button>
                        <button type="button" class="btn btn-main" id="cancelbtn" style="background-color: blue; color: aliceblue;">취소</button>
                        </div>
                        </form>
                      </div>
                    </div>
              	</div>
              </div>
  <!--================End Checkout Area =================-->


	</div><!-- #wrapper end -->
	</div>

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

<script type="text/javascript">
	$(function(){
			$('.alert').hide();
		  $("#updatebtn").click(function(){
		      if(checks()){
		    	 alert('회원정보가 수정되었습니다.');
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
	
	
	   $(function(){
	          $('#joongbokBtn').on('click',function(){
	            /*   console.log($('#nickname').val()) */ 
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
	    $('.form-control').focusout(function() {
	        var pwd1 = $("#password").val();
	        var pwd2 = $("#password_check").val();
	  		console.log(pwd1 + " | " + pwd2)
	        if ( pwd1 != '' && pwd2 == '' ) {
	            null;
	        } else if (pwd1 != "" || pwd2 != "") {
	            if (pwd1 == pwd2) {
	                $("#alert-success").show();
	                $("#alert-danger").hide();
	            } else {
	                $("#alert-success").hide();
	                $("#alert-danger").show();
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