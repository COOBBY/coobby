<%@page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css2?family=Domine:wght@400;500;700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">


	<!-- Blog Demo Specific Stylesheet -->

	
	<!-- Document Title
	============================================= -->
	<title>Single Blog Demo | Canvas</title>

</head>

<body class="stretched">

	<!-- Document Wrapper
	============================================= -->
	

					<!-- Single Page Categories
					============================================= -->
					<div class="row">
						<div class="col-lg-7 cat-widgets position-sticky h-100" style="top: 234px;">
							  
							  
							<div class="widget widget-nav mt-md-5">
								<ul class="nav">
									<li class="nav-item active">
										<a class="nav-link" href="#">나의 피드</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">즐겨찾기</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">회원정보수정</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">1:1문의글</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">회원</a>
									</li>
									
								</ul>
							</div>
						</div>

					
					<!-- Single Page Categories End -->

					<!-- Subscribe Section
					============================================= -->
			

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="icon-angle-up rounded-circle" style="left: 30px; right: auto;"></div>

	<!-- JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

	<!-- ADD-ONS JS FILES -->
	<script>
		// Current Date
		var weekday = ["Sun","Mon","Tues","Wed","Thurs","Fri","Sat"],
			month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
			a = new Date();

			jQuery('.date-today span').html( weekday[a.getDay()] + ', ' + month[a.getMonth()] + ' ' + a.getDate() );

		jQuery('.dark-mode').on( 'click', function() {
			jQuery("body").toggleClass('dark');
			SEMICOLON.header.logo();
			return false;
		});
	</script>

</body>
</html>