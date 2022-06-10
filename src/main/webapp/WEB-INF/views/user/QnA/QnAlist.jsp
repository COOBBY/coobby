<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<br/><br/>
	<div class="text-center" style="text-align: center;">
	  <h2>Q&A</h2><br/>
	 </div>
	 <div class="container">
	 <span style="text-align: left; margin-left: 1%;">
	  <a href="/user/Announce/Boardlist"><button type="button" class="btn btn-main" id="annobtn" style="background-color: gray; color: aliceblue;">공지사항</button></a>
	  <button type="button" class="btn btn-main" id="qnabtn" style="background-color: blue; color: white;">Q&A</button>
	 <a href="../mypage/inquery"><button type="button" class="btn btn-main" id="oneqnabtn" style="background-color: gray; color: white; float:right; margin-right: 1%;">1:1문의 바로가기</button></a>
	 </span><br/><br/>
	</div> 
	<div class="container">

<div class="card">
		<div class="card-body" style="text-align: center;">
		<table id="example2" class="table table-bordered table-hover">
				<thead>
				 <tr>
				  <th style="width: 10%;">번호</th>
				  <th style="width: 40%;">제목</th>
				  <th>작성일</th>
				  <th style="width: 15%;">답변 상태</th>
				</tr>
				</thead>
				<tbody>
				<c:forEach items="${qnaList}" var="qna">
				  <tr>
				   <td>${qna.qnaNo }</td>
				   <td class="qna" style="text-align:left">
				   <c:choose>
				   	<c:when test="${qna.qcheck eq 0 }">
				  				<i class="icon-lock1"></i>
				  				<a href="QnAdetail?qnaNo=${qna.qnaNo }" class="lockQnA">${qna.qtitle }</a>
				  				<div class="passwordCheck"><form class="checkPassForm"><input type="hidden" class="qnaNo" value="${qna.qnaNo}"><label>비밀번호</label><input type="text" class="pass"><button class="btn btn-secondary">입력</button></form></div>
				  		
				  		</c:when>
				   		<c:otherwise><a href="QnAdetail?qnaNo=${qna.qnaNo }">${qna.qtitle }</a></c:otherwise>
				   		
				  		</c:choose>
				  		</td>
				   <td>${qna.qdate }</td>
		                  <td>
                    <c:choose>
							<c:when test="${empty qna.acontent}">미답변</c:when>
							<c:otherwise>답변완료</c:otherwise>											
					</c:choose>
					</td>
				  </tr>
				  </c:forEach>
				</tbody>
			  </table>
			</div>
		  </div>
		 </div>
</div>
  <!--====	========End Checkout Area =================-->


<!-- #wrapper end -->

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="bg-color op-07 h-op-1">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon><polygon points="48 208 128 128 208 208 48 208" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polygon><polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="/resources/user/js/jquery.js"></script>
	<script src="/resources/user/js/plugins.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
	<script
		src="/resources/admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="/resources/user/js/functions.js"></script>
	
	<script>
  $(function () {
	  $('#example2').DataTable({
	      "paging": true,
	      "lengthChange": false,
	      "searching": false,
	      "ordering": true,
	      "info": true,
	      "autoWidth": false,
	      "responsive": true,
	    });
		
  });
  
  
</script>
<script>
	$('.passwordCheck').hide();
	$('.lockQnA').click(function(event){
		event.preventDefault();
		const passCheckDiv = $(this).next()
		passCheckDiv.show();
				
	})
	
	$('.checkPassForm').submit(function(event){
		event.preventDefault();
		const url = $(this).parent().prev().attr('href'); // 비밀번호 전달한 데이터가 가져야할 링크 주소
		const no = $(this).find('.qnaNo').val();
		const pass = $(this).find('input.pass').val(); // 입력한 비밀번호
		
		// 서버에서 비밀번호 체크
		$.ajax({
			url: "/user/qnaPasswordCheck",
			type: "GET",
			async: false, // ajax 완료까지 대기
			data: {
				"qnaNo": no,
				"memPass": pass
			}
		}).done((result) => {
			console.log(result)
			// true false
			// 츨력 결과에 따라 이동 혹은 거절
			if(result == 'Y'){
				location.href = url;
			}else{
				alert("잘못된 비밀번호 입니다");	
			} 
			
		}).fail((err) => {console.log(err)})
		
	})
</script>

</body>
</html>