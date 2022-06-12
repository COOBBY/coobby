<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" trimDirectiveWhitespaces="true"
	import="com.coobby.session.SessionUserCounter"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>AdminLTE 3 | Dashboard</title>

<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="/resources/admin/plugins/fontawesome-free/css/all.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

<!-- Theme style -->
<link rel="stylesheet"
	href="/resources/admin/dist//css/adminlte.min.css">
<!-- overlayScrollbars -->
<link rel="stylesheet"
	href="/resources/admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
<!-- Daterange picker -->
<link rel="stylesheet"
	href="/resources/admin/plugins/daterangepicker/daterangepicker.css">
<!-- summernote -->

<link rel="stylesheet"
	href="/resources/admin/plugins/daterangepicker/daterangepicker.css">
</head>
<body class="hold-transition sidebar-mini layout-fixed">
	<div class="wrapper">

		<!-- Preloader -->
		<div
			class="preloader flex-column justify-content-center align-items-center">
			<img class="animation__shake"
				src="/resources/admin/dist//img/AdminLTELogo.png" alt="AdminLTELogo"
				height="60" width="60">
		</div>

		<!-- Navbar -->
		<jsp:include page="navbar/admin-nav.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<div class="content-header">
				<div class="container-fluid">
					<div class="row mb-2">
						<div class="col-sm-6">
							<h1 class="m-0">Dashboard</h1>
						</div>
						<!-- /.col -->
						<div class="col-sm-6">
							<ol class="breadcrumb float-sm-right">
								<li class="breadcrumb-item"><a href="#">Home</a></li>
								<li class="breadcrumb-item active">Dashboard v1</li>
							</ol>
						</div>
						<!-- /.col -->
					</div>
					<!-- /.row -->
				</div>
				<!-- /.container-fluid -->
			</div>
			<!-- /.content-header -->

			<!-- Main content -->
			<section class="content">
				<div class="container-fluid">
					<!-- Small boxes (Stat box) -->
					<div class="row">
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-info">
								<div class="inner">
									<h3>
										${todayRecipeCnt }<sup style="font-size: 20px">개</sup>
									</h3>

									<p>당일 레시피 등록 수</p>
								</div>
								<div class="icon">
									<i class="ion ion-bag"></i>
								</div>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-success">
								<div class="inner">
									<h3>
										${todaySingUpCnt }<sup style="font-size: 20px">명</sup>
									</h3>

									<p>당일 회원 가입 수</p>
								</div>
								<div class="icon">
									<i class="ion ion-person-add"></i>
								</div>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-warning">
								<div class="inner">
									<h3>${todayFeedCnt }<sup style="font-size: 20px">개</sup>
									</h3>

									<p>당일 피드 등록 수</p>
								</div>
								<div class="icon">
									<i class="ion ion-stats-bars"></i>
								</div>
							</div>
						</div>
						<!-- ./col -->
						<div class="col-lg-3 col-6">
							<!-- small box -->
							<div class="small-box bg-danger">
								<div class="inner">
									<h3><%=SessionUserCounter.getCount()%><sup
											style="font-size: 20px">명</sup>
									</h3>

									<p>현재 접속 회원 수</p>
								</div>
								<div class="icon">
									<i class="ion ion-pie-graph"></i>
								</div>
							</div>
						</div>
						<!-- ./col -->
					</div>
					<!-- /.row -->
					<!-- Main row -->
					<section class="content">
						<div class="col-md-12">
							<div class="row">

								<!-- AREA CHART -->
								<div class="col-md-6">
									<div class="card card-primary">
										<div class="card-header">
											<h3 class="card-title">연령대 남녀 성비</h3>

											<div class="card-tools">
												<button type="button" class="btn btn-tool"
													data-card-widget="collapse">
													<i class="fas fa-minus"></i>
												</button>
											</div>
										</div>
										<div class="card-body">
											<div class="chart">
												<canvas id="sexRate"
													style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
											</div>
										</div>
										<!-- /.card-body -->
									</div>
								</div>
								<!-- /.card -->

								<!-- DONUT CHART -->
								<div class="col-md-6">
									<div class="card card-danger">
										<div class="card-header">
											<h3 class="card-title">가입 유형</h3>

											<div class="card-tools">
												<button type="button" class="btn btn-tool"
													data-card-widget="collapse">
													<i class="fas fa-minus"></i>
												</button>
											</div>
										</div>
										<div class="card-body">
											<canvas id="kktWeb"
												style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
										</div>
										<!-- /.card-body -->
									</div>
								</div>
							</div>
							<!-- /.card -->

							<!-- PIE CHART -->

							<div class="col-md-12">
								<div class="card card-danger">
									<div class="card-header">
										<h3 class="card-title">레시피·피드 등록 수</h3>
											<!-- /.input group -->
										<div class="card-tools">
											<button type="button" class="btn btn-tool"
												data-card-widget="collapse">
												<i class="fas fa-minus"></i>
											</button>
										</div>
									</div>
									<div class="card-body">
										<div class="input-group col-md-12 ajax">
												<div class="input-group-prepend">
													<span class="input-group-text"> <i
														class="far fa-calendar-alt"></i>
													</span>
												</div>
												<input type="text" class="form-control float-right"
													id="reservation">
											</div>
										<canvas id="reFeedCnt"
											style="min-height: 350px; height: 350px; max-height: 350px; max-width: 100%;"></canvas>
									</div>
									<!-- /.card-body -->
								</div>
							</div>
						</div>
					</section>
				</div>
			</section>
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
	<script src="/resources/admin/plugins/moment/moment.min.js"></script>
	<!-- Bootstrap 4 -->
	<script
		src="/resources/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<!-- ChartJS -->
	<script
		src="https://cdn.jsdelivr.net/npm/chart.js@3.8.0/dist/chart.min.js"></script>
	<!-- AdminLTE App -->
	<script src="/resources/admin/dist/js/adminlte.min.js"></script>
	<script
		src="/resources/admin/plugins/daterangepicker/daterangepicker.js"></script>
	<script>
// 차트를 그럴 영역을 dom요소로 가져온다.
	$(function(){
		 $('#reservation').daterangepicker()
		 
		document.getElementById('sexRate').getContext('2d');
		document.getElementById('kktWeb').getContext('2d');
		
		menData=[]
		womenData=[]
		agelabels= ['10대','20대','30대','40대','50대','60대','70대'];			//라벨
		for(var i =0; i<agelabels.length ; i++){							//men과 women에 값을 넣음
			<c:forEach items="${ageGroup}" var="items" varStatus="status">	//jstl을 사용해 model에 있는 ageGroup을 가져옴
				men = menData.length										//men 에 menData의 길이를
				women = womenData.length									//women에 womenData의 길이를 할당
				if('${items[0]}'== agelabels[i]){	//연령대 index값이 같다면 데이터 입력
					menData.push(${items[1]});		//menData에 값 입력
					womenData.push(${items[2]});	//womenData에 값 입력
					continue;
				}
			</c:forEach>
			if(men == menData.length){				//미리 넣어둔 menData의 길이와 if문을 거친 후의 길이가 같다면 데이터가 들어가지 않은것이니
				menData.push(0)						//menData에 0 push
			}
			if(women == womenData.length){			//미리 넣어둔 womenData의 길이와 if문을 거친 후의 길이가 같다면 데이터가 들어가지 않은것이니
				womenData.push(0)					//womenData에 0 push
			}
		}
		
		var myChart = new Chart(sexRate, {			//bar Chart 생성
		    // ①차트의 종류(String)
		    type: 'bar',
		    // ②차트의 데이터(Object)
		    data: {
		    
		        labels: agelabels,					//label에 미리 선언한 agelabels 입력 
		        // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
		      datasets: [{
            label: '남자',
            backgroundColor : 'rgba(54,162,235,0.2)',
			borderColor : 'rgba(54,162,235,1)',
			borderWidth : 2,
            data: menData
        }, {
            label: '여자',
            backgroundColor : 'rgba(255,99,132,0.2)',
			borderColor : 'rgba(255,99,132,1)',
			borderWidth : 2,
            data: womenData
        }]
		    },
		    // ⑩차트의 설정(Object)
		    options: {
		        // ⑪축에 관한 설정(Object)
		        scales: {
		            // ⑫y축에 대한 설정(Object)
		            y: {
		                // ⑬시작을 0부터 하게끔 설정(최소값이 0보다 크더라도)(boolean)
		                beginAtZero: true
		            }
		        }
		    }
		});
		
		const kktLabel=[]
		const webLabel=[]
		const signLabel=[]
		<c:forEach items="${kktWebCnt}" var="kktWeb">		//model에 있는 kktWebCnt를 불러옴
		signLabel.push("${kktWeb[0]}")						//0번째 값을 signLabel에 기입
		kktLabel.push(${kktWeb[1]})							//1번째값을 kktLabel에 기입
		webLabel.push(${kktWeb[2]})							//2번째 값을 webLabel에 기입
		</c:forEach>
		var myChart = new Chart(kktWeb, {					//stacked bar chart 생성
		    // ①차트의 종류(String)
		    type: 'bar',
		    // ②차트의 데이터(Object)
		    data: {
		        // ③x축에 들어갈 이름들(Array)
		        labels: signLabel,
		        // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
		      datasets: [{
            label: '카카오인증',
            backgroundColor : 'rgba(54,162,235,1)',
            data: kktLabel
        }, {
            label: '웹인증',
            backgroundColor : 'rgba(255,99,132,1)',
            data: webLabel
        }]
		    },
		    // ⑩차트의 설정(Object)
		    options: {
		        // ⑪축에 관한 설정(Object)
		        responsive : true,
		        scales: {
		            x: {
		              stacked: true,		//stack bar를 사용하기 위한 stacked : true 선언
		            },
		            y: {
		              stacked: true
		            }
		          }
		    }
		});
	});
 		const recipeCnt=[]
		const feedCnt=[]
		const dateLabel=[]
		<c:forEach items="${feedDate}" var="date">
			dateLabel.push("${date[0]}");
			feedCnt.push(${date[1]});
		</c:forEach>
		<c:forEach items="${recipeDate}" var="recipe">
			recipeCnt.push(${recipe[1]});
		</c:forEach>
	
	
    var myChart = new Chart(reFeedCnt, {		//선 그래프 차트 생성
	    // ①차트의 종류(String)
	    type: 'line',
	    // ②차트의 데이터(Object)
	    data: {
	        // ③x축에 들어갈 이름들(Array)
	        labels: dateLabel,
	        // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
			datasets: [{
	            label: '피드',
				backgroundColor : 'rgba(255,99,132,0.2)',
				borderColor : 'rgba(255,99,132,1)',
	            data: feedCnt
	        }, {
	            label: '레시피',
				backgroundColor : 'rgba(54,162,235,0.2)',
				borderColor : 'rgba(54,162,235,1)',
	            data: recipeCnt
	        }],
		options:{
			scales:{
				yAxes:[{
					ticks :{

						beginAtZero : true
					}
					}]
				}
			}
	 	   }
		}); 
		 
		
		$(document).on('click','.applyBtn',function(){		//datepicker의 날짜를 선택 후 class applyBtn을 눌렀을때 동작하는 함수
			const recipeAjax=[]
			const feedAjax=[]
			const dateAjaxLabel=[]
			let range=""	
			range = $('.drp-selected').text().split(" ~ ");	//range에 클래스 drp_selected의 텍스트를 ~를 기준으로 split
			range_s = range[0].split("/");					//startdate를 /기준으로 split
			range_e = range[1].split("/");					//enddate를 / 기준으로 spit
			startDate = range_s[2]+"-"+range_s[0]+"-"+range_s[1]	//06/13/2022 형식의 날짜를 2022-06-13 형식으로 데이트 날짜 포맷
			endDate = range_e[2]+"-"+range_e[0]+"-"+range_e[1]
			$.ajax({
				type : 'GET',
				url : 'ajaxChart',
				data : {"startDate" : startDate,
						"endDate" : endDate},
				success : function(result){					//ajax 성공 시 받아온 result를 각 라벨에 맞게끔 재설정
					for(var i =0; i<result.length; i++){
						dateAjaxLabel.push(result[i][0])
						feedAjax.push(result[i][1])
						recipeAjax.push(result[i][2])
					}
					initChart(feedAjax, recipeAjax, dateAjaxLabel);	//initChart 호출
					
				},
				error : function(err){
					console.log(err);
				}
			});
		 })
		
		 function initChart(fe,re,label){		//ajax성공시 실행되는 차트 함수
			$("canvas#reFeedCnt").remove();		//기존 canvas#reFeedCnt 태그를 삭제
			$("div.ajax").append('<canvas id="reFeedCnt" style="min-height: 350px; height: 350px; max-height: 350px; max-width: 100%;"></canvas>');
			//이후 같은 태그를 생성(truncated나 udpate를 이용한 함수가 적용이 안되어 이 방식으로 진행함)
			
			
			
			var ChartName = document.getElementById('reFeedCnt').getContext('2d');		//새로운 차트 생성
				 ChartName = new Chart(reFeedCnt, {
			    // ①차트의 종류(String)
			    type: 'line',
			    // ②차트의 데이터(Object)
			    data: {
			        // ③x축에 들어갈 이름들(Array)
			        labels: label,
			        // ④실제 차트에 표시할 데이터들(Array), dataset객체들을 담고 있다.
					datasets: [{
			            label: '피드',
						backgroundColor : 'rgba(255,99,132,0.2)',
						borderColor : 'rgba(255,99,132,1)',
			            data: fe
			        }, {
			            label: '레시피',
						backgroundColor : 'rgba(54,162,235,0.2)',
						borderColor : 'rgba(54,162,235,1)',
			            data: re
			        }],
				options:{
					scales:{
						yAxes:[{
							ticks :{
		
								beginAtZero : true
							}
							}]
						}
					}
			 	   }
				}); 
			}
		
		
	</script>
</body>
</html>
