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
		padding-bottom : 5%;
		}

	</style>
	<!-- Document Title
	============================================= -->
	<title>Furniture | Canvas</title>

</head>

<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>
	<div id="wrapper" class="clearfix">
		<jsp:include page="../user-nav.jsp" />

  <!--================Checkout Area =================-->
  <div class="page-wrapper">
    <div class="container">
      <div class="row" id="connect">
        <!--사이드 -->
        <div class="col-md-3" style="border-right: 2px solid; height:100%">
          <aside class="sidebar">
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
  <!--================ Checkout Area =================-->                
                  <div class="col-md-9" style="display: flex; justify-content: center;">
                    <div class="block text-center w-50">
                     <h2>회원탈퇴<br/></h2>
                     <h4>탈퇴를 원하신다면</h4>
                     <h4>비밀번호를 입력합니다.</h4><hr/>
                        <form class="checkout-form" action="DeleteMember" method="post">
                        	
                          <div class="form-group" >
                            <input type="password" class="form-control" id="inputPass" name="password">
                            
                         </div>
                        <div class="form-group">
                          <button type="submit" class="form-control" id="delbtn" style="background-color: black; color: aliceblue; width: 20%; float:right">탈퇴하기</button>
                        </div>
                      </form>
                    </div>
                  </div>
          </div>
        </div>
      </div>
  <!--================End Checkout Area =================-->

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
	<script>
		// 삭제 실패시 받을 데이터
		const isDeleteSuccess = '${delete}';
		
		// 삭제 실패시
		// isDeleteSuccess에 데이터가 담김
		if(isDeleteSuccess != ''){
			alert('탈퇴에 실패하였습니다.');
		}
	</script>
	

</body>
</html>