<!DOCTYPE html>
<html dir="ltr" lang="en-US">
<head>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link href="https://fonts.googleapis.com/css2?family=Domine:wght@400;500;700&family=Roboto:wght@400;500&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />
	<link rel="stylesheet" href="css/dark.css" type="text/css" />

	<link rel="stylesheet" href="css/font-icons.css" type="text/css" />
	<link rel="stylesheet" href="css/animate.css" type="text/css" />
	<link rel="stylesheet" href="css/magnific-popup.css" type="text/css" />

	<link rel="stylesheet" href="css/custom.css" type="text/css" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />

	<!-- Blog Demo Specific Stylesheet -->
	<link rel="stylesheet" href="demos/blog/css/fonts.css" type="text/css" />
	<link rel="stylesheet" href="demos/blog/blog.css" type="text/css" />

	<link rel="stylesheet" href="css/colors.php?color=F39887" type="text/css" />

	<!-- Document Title
	============================================= -->
	<title>Single Blog Demo | Canvas</title>

</head>

<body class="stretched search-overlay">

	<!-- Document Wrapper
	============================================= -->
	

					<!-- Single Page Categories
					============================================= -->
					<div class="row gutter-50">
						<div class="col-lg-3 cat-widgets position-sticky h-100" style="top: 234px;">
							  
							  
							<div class="widget widget-nav mt-md-5">
								<ul class="nav">
									<li class="nav-item active">
										<a class="nav-link" href="#">All Categories</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Fashion</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Arts &amp; Culture</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Family</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Beauty</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Fitness</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Music</a>
									</li>
									<li class="nav-item">
										<a class="nav-link" href="#">Design &amp; Illustrations</a>
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