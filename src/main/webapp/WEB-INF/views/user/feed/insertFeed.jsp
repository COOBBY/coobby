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
<link
	href="https:/fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Zilla+Slab:wght@400;500&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="/resources/user/css/bootstrap.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/style.css" type="text/css" />

<link rel="stylesheet" href="/resources/user/css/dark.css" type="text/css" />
<link rel="stylesheet" href="/resources/user/css/font-icons.css"
	type="text/css" />
<link rel="stylesheet" href="/resources/user/css/animate.css" type="text/css" />
<link rel="stylesheet" href="/resources/user/css/magnific-popup.css"
	type="text/css" />

<link rel="stylesheet" href="/resources/user/css/custom.css" type="text/css" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<!-- Furniture Demo Specific Theme Stylesheet - #193532 -->
<link rel="stylesheet" href="/resources/user/css/colors.php?color=193532"
	type="text/css" />

<!-- Furniture Demo Specific Stylesheet -->
<link rel="stylesheet" href="/resources/user/demos/furniture/furniture.css"
	type="text/css" />
<!-- Furniture Custom Css -->
<link rel="stylesheet" href="/resources/user/demos/furniture/css/fonts.css"
	type="text/css" />
<!-- Furniture Custom Fonts -->
<!-- / -->
<!-- CSS -->
<link rel="stylesheet" href="/resources/user/Feed/css/Feed.css"	type="text/css" />


<!-- Document Title
	============================================= -->
<title>COOBBY - 마이피드 작성</title>
<!-- <style>
        .dellink{
          display: none;
        }
    </style> -->


</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

	<jsp:include page="../user-nav.jsp"/>

		<!-- 글 작성하기
		============================================= -->
		<form action="saveFeed" method="post" enctype="multipart/form-data">
			<div class="content-wrap">
				<div class="container">
					<input type="file" class="hidden_input " id="uploadFile"
						name="file" multiple />
					<div class="row">
					<!-- 사진 업로드 -->
						<div class="col-md-6 uploadpic">

							<div id="preview">
								<div class="row"></div>
							</div>
							<!-- <img src="" class="thumb"/>
						<a href="javascript:void(0);" class="dellink">사진삭제</a>  -->
						</div>
						<!-- 사진 업로드 끝 -->
						<div class="col-md-6">
							<table class="table">
								<tr>
									<td>제목</td>
									<td><textarea name="feTitle" id="write_content"
											class="form-control" maxlength="1000"
											style="resize: none; height: 30px;"></textarea></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea name="feContent" id="write_content"
											class="form-control" maxlength="1000"
											style="resize: none; height: 150px;"></textarea></td>
								</tr>
								<tr>
									<td>댓글 허용</td>
									<td><input type="checkbox" id="checkbox" checked /> <label
										for="checkbox"><span></span></label></td>
								</tr>

							</table>
							<input type="hidden" name="feReplycheck" value="1" id="checkval" />
						</div>
					</div>
				</div>
			</div>
			<div class="updatebtn">
				<button type="submit"
					class="savebtn button button-3d button-rounded button-pink">
					<i class="icon-line-edit-3"></i>등록하기
				</button>
				<a href="MyFeed"
					class="button button-3d button-rounded button-blue"><i
					class="icon-line-arrow-left"></i>뒤로가기</a>
			</div>
		</form>
		<!-- #content end -->

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

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>
	<script src="/resources/user/Feed/js/myfeed.js"></script>
	<script type="text/javascript" src="/resources/user/Feed/js/UploadMyFeed.js"></script>

</body>
</html>