<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Simple Tables</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Theme style -->
<link rel="stylesheet" href="/resources/admin/dist/css/adminlte.min.css">

<style>
	th{
		text-align:center;
	}
	
	.smallCate{margin-right : 1%;}
	
	.smallCateAdd{ margin-left : 2%;}
	
	.smallCateDel{ 
		margin-bottom : 5%;
		margin-left : 5px;
		}
	.tableLine {
		border-left: 1px solid gray;
	}
	.inputText{
		margin-bottom : 1%;
	}
	
</style>
</head>
<body class="hold-transition sidebar-mini">
	<div class="wrapper">
		<!-- Navbar -->
		<jsp:include page="navbar/admin-nav.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1>카테고리 관리</h1>
						</div>
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Simple Tables</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /.container-fluid -->
			</section>
			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- /.col -->
					<div class="row">
					
					<div class="col-md-8">
						<div class="card">
							<!-- /.card-header -->
							<div class="card-body p-0">
							<form action="cateSave" method="post">
								<table class="table">
									<thead>
										<tr>
											<th style="width: 18%">대분류</th>
											<th class="tableLine">소분류</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="btn btn-default btn-block 1">종류별</div>
											</td>
											<td class="tableLine">
											<c:if test="${kindList ne null }">
												<c:forEach items="${kindList}" var="kind">
													<span class="smallCate btn btn-default inputText" name="cateName">${kind.kindName }
														<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="red" class="bi bi-dash-circle smallCateDel" viewBox="0 0 16 16">
														  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
														  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
														</svg>
														<input type="hidden" name="cateName" class="hiddenName" value="${kind.kindCode }"/>
													</span>
												</c:forEach>
											</c:if>
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="blue" class="bi bi-plus-circle smallCateAdd" viewBox="0 0 16 16">
		  											<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  											<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
												</svg>
											</td>
										</tr>
										<tr>
											<td>
												<div class="btn btn-default btn-block 1">상황별</div>
											</td>
											<td class="tableLine">
											<c:if test="${situList ne null }">
												<c:forEach items="${situList}" var="situ">
													<span class="smallCate btn btn-default inputText" name="cateName">${situ.situName }
														<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="red" class="bi bi-dash-circle smallCateDel" viewBox="0 0 16 16">
														  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
														  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
														</svg>
														<input type="hidden" name="cateName" class="hiddenName" value="${situ.situCode }"/>
													</span>
												</c:forEach>
											</c:if>
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="blue" class="bi bi-plus-circle smallCateAdd" viewBox="0 0 16 16">
		  											<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  											<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
												</svg>
											</td>
										</tr>
										<tr>
											<td>
												<div class="btn btn-default btn-block 1">재료별</div>
											</td>
											<td class="tableLine">
											<c:if test="${ingrList ne null }">
												<c:forEach items="${ingrList}" var="ingr">
													<span class="smallCate btn btn-default inputText" name="cateName">${ingr.ingrName }
														<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="red" class="bi bi-dash-circle smallCateDel" viewBox="0 0 16 16">
														  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
														  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
														</svg>
														<input type="hidden" name="cateName" class="hiddenName" value="${ingr.ingrCode }"/>
													</span>
												</c:forEach>
											</c:if>
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="blue" class="bi bi-plus-circle smallCateAdd" viewBox="0 0 16 16">
		  											<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  											<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
												</svg>
											</td>
										</tr>
										<tr>
											<td>
												<div class="btn btn-default btn-block 1">방법별</div>
											</td>
											<td class="tableLine">
											<c:if test="${howList ne null }">
												<c:forEach items="${howList}" var="how">
													<span class="smallCate btn btn-default inputText" name="cateName">${how.howName }
														<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="red" class="bi bi-dash-circle smallCateDel" viewBox="0 0 16 16">
														  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
														  <path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>
														</svg>
														<input type="hidden" name="cateName" class="hiddenName" value="${how.howCode }"/>
													</span>
												</c:forEach>
											</c:if>
												<svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="blue" class="bi bi-plus-circle smallCateAdd" viewBox="0 0 16 16">
		  											<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
		  											<path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
												</svg>
											</td>
										</tr>
									</tbody>
								</table>
								</form>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					<div class="col-md-4">
						<div class="card">
							<!-- /.card-header -->
							<div class="card-body p-0">
								<table class="table">
									<thead>
										<tr>
											<th colspan="2" >수 정</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td colspan="2" class="bCateParent"></td>
										</tr>
										<tr>
											<td><span class="btn btn-default cateType">소분류</span></td>
											<td><input type="text" class="form-control cateModify"/></td>
										</tr>
										<tr>
											<td colspan="2"><button type="button" class="btn btn-default modify">등록 / 수정</button></td>
										</tr>
									</tbody>
								</table>
							</div>
							<!-- /.card-body -->
						</div>
						<!-- /.card -->
					</div>
					</div>
					<!-- /.col -->
				</div>
				<!-- /.row -->
			</section>
			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->
		

		<!-- Control Sidebar -->
		<aside class="control-sidebar control-sidebar-dark">
			<!-- Control sidebar content goes here -->
		</aside>
		<!-- /.control-sidebar -->
	</div>
	<!-- ./wrapper -->

	<!-- jQuery -->
	<script src="/resources/admin/plugins/jquery/jquery.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/admin/dist/js/adminlte.min.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="http://code.jquery.com/jquery-latest.js"></script>
	<script>
		$(function(){
			let smallChoose;	//소분류를 클릭했을때 어떤 소분류를 클릭한건지 알 수 있게하기 위한 변수
			let bigCate;		//입력,수정,삭제를 하기위한 소분류의 대분류를 지정하기 위한 변수
			let smallCateCode;	//수정 혹은 삭제를 할때 그 소분류의 primary key값인 code를 저장하는 변수
			
			//소분류를 클릭했을때 수정 혹은 등록을 할 수 있게
			$(document).on('click','.inputText', function(){
				$('.cateModify').val($(this).text().trim());	
				smallChoose = $(this);	//smallChoose 전역변수에 클릭한 현재 태그 저장
				$('.bCateParent').html('<div class="btn btn-default btn-block BigCate">'+ $(this).closest('tr').find('div').text()+'</div>')	// 대분류가 무엇인지 찾고 삽입
				$('span').removeAttr('id');		//span태그에 id 속성 해제
				$('span').removeAttr('style');	//span태그에 style 속성 해제
				$(this).attr('id','clickCate');	//현재 태그에 id 속성으로 clickCate 추가
				$('#clickCate').css({'background-color' : '#cbcbcb', 'color' : 'white'}); //id값 clickCate에 css 적용
				bigCate = $(this).closest('tr').find('div').text();		//bigCate에 현재의 대분류를 저장
			});
			
			//+버튼을 눌러 소분류를 추가하는 과정
			$(document).on('click','.smallCateAdd', function(){
				$(this).before('<span class="smallCate btn btn-default inputText" name="">'+
						'<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="red" class="bi bi-dash-circle smallCateDel" viewBox="0 0 16 16">'+
						  '<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>'+
						  '<path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>'+
						'</svg>'+
						'</span>');	// 클릭한 + 버튼 이전에 input 태그 추가
			});
			
			//빨간색 -버튼을 눌러 소븐류를 삭제
			$(document).on('click','.smallCateDel', function(){
				if($(this).closest('span').text().trim() != ''){					//값이 있던 것이므로 ajax로 delete
					bigCate = $(this).closest('tr').find('div').text();				//biCate에 -버튼을 기준으로 지우고자하는 소분류의 대분류 텍스트 검색 후 저장
					let CateCode = $(this).next('input').val();						//CateCode 변수에 지우고자하는 카테고리의 코드 입력
					$.ajax({														//ajax실행
						type : 'DELETE',
						url : 'deleteCate',
						data : {"cateType" : bigCate, "cateCode" : CateCode},
						success : function() {
							console.log('Ajax성공');
							
						},
						error : function(err) {
							alert('실패');
							console.log(err);
						}
					}); 
				}
				$(this).closest('span').remove();	//원래 값이 없던 ajax연동이 됐던 삭제
			});
			
			//수정 버튼을 눌렀을때 진행되는 과정
			$(document).on('click','.modify',function(){
				smallCateCode = smallChoose.find('input').val(); 	//smallCateCode에 클릭한 소분류의 input태그의 value확인
				if(smallChoose.text().trim() != ''){	// smallChoose의 값이 있음을 체크하고 ajax로 update
					$.ajax({
						type : 'PUT',
						url : 'updateCate',
						data : {"cateName" : $('.cateModify').val(),
								"cateCode" : smallCateCode,
								"cateType" : bigCate},
						success : function() {
							console.log('Ajax성공');
						},
						error : function(err) {
							console.log(err);
						}
					}); 
				
				}
				else{							//원래 값이 없음을 체크하고 ajax로 insert
					$.ajax({
						type : 'POST',
						url : 'insertCate',
						async : false,			//ajax를 완전히 실행 한 후 다음 코드를 실행하기 위해 async : false 입력
						data :{"cateType" : bigCate, "cateName" : $('.cateModify').val()},
						success : function(data) {
							smallCateCode = data;	//ajax가 성공했으면 새로 입력된 cateCode를 smallCateCode에 입력
						},
						error : function(err) {
							alert('실패');
							console.log(err);
						}
					});
				}
				
				smallChoose.html('')			//smallChoose를 빈값으로 설정
				smallChoose.append($('.cateModify').val()+
						'<svg xmlns="http://www.w3.org/2000/svg" width="15" height="15" fill="red" class="bi bi-dash-circle smallCateDel" viewBox="0 0 16 16">'+
				  		'<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>'+
				  		'<path d="M4 8a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 0 1h-7A.5.5 0 0 1 4 8z"/>'+
						'</svg>'+
						'<input type="hidden" name="cateCode" class="hiddenName" value="'+smallCateCode+'"/>');
				$('.cateModify').val('');		//cateModify 클래스의 값 제거
				$('span').removeAttr('id');		//span태그 id와 
				$('span').removeAttr('style');	//style 속성 제거
			});
		});
	</script>
</body>
</html>
