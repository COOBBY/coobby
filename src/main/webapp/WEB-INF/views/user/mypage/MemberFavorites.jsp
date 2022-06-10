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
                       <h4 style="text-align:center">마이페이지</h4>
                       <hr/>
                     </li>
                     <li class="list">
                       <a href="#" class="btn btn-solid-border w-100" >내피드</a>
                     </li>
                    <li class="list">
                       <a href="MemberFavorites" class="btn btn-solid-border w-100">즐겨찾기</a>
                    </li>
                     <li class="list">
                      <a href="Memberupdate" class="btn btn-solid-border w-100">회원정보수정</a>
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
  <div class="col-md-9" style="padding-left: 30px;">
		<h2>자신이 좋아하는 레시피 및 재료</h2>
	   <hr style="margin-top: -32px;"/>
	<!-- </div> -->

	<!-- Shop
	============================================= -->
	<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">

	   <!-- Product 1 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 2 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 3 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 4 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 5 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 6 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 7 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 8 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>
	</div>
	<div style="text-align: center"><br/>
		<button type="button" class="btn btn-main" id="morebtn3" style="background-color: black; color: aliceblue;">더보기</button>
	</div>
	<hr/>

	<h2>유사한 레시피</h2>
	   <hr/>
	<!-- </div> -->

	<!-- Shop
	============================================= -->
	<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">

	   <!-- Product 1 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 2 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 3 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 4 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 5 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 6 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 7 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>

	   <!-- Product 8 -->
	   <div class="product col-lg-3 col-md-4 col-sm-6 col-12">
		  <div class="grid-inner">
			 <div class="product-image">
				<a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
				<!-- <a href="demo-furniture-single.html"><img src="demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
				<div class="bg-overlay">
				   <div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
					  <a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
							<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
						   </svg></a>
					   <a href="demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
						 <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star" viewBox="0 0 16 16">
							<path d="M2.866 14.85c-.078.444.36.791.746.593l4.39-2.256 4.389 2.256c.386.198.824-.149.746-.592l-.83-4.73 3.522-3.356c.33-.314.16-.888-.282-.95l-4.898-.696L8.465.792a.513.513 0 0 0-.927 0L5.354 5.12l-4.898.696c-.441.062-.612.636-.283.95l3.523 3.356-.83 4.73zm4.905-2.767-3.686 1.894.694-3.957a.565.565 0 0 0-.163-.505L1.71 6.745l4.052-.576a.525.525 0 0 0 .393-.288L8 2.223l1.847 3.658a.525.525 0 0 0 .393.288l4.052.575-2.906 2.77a.565.565 0 0 0-.163.506l.694 3.957-3.686-1.894a.503.503 0 0 0-.461 0z"/>
						   </svg></a>
				   </div>
				</div>
			 </div>
			 <div class="product-desc">
				<div class="product-title mb-0"><h4 class="mb-0"><a class="fw-medium" href="demo-furniture-single.html"> 음식명1 </a></h4></div>
				<h5 class="product-price fw-normal">쉐프명1</h5>
			 </div>
		  </div>
	   </div>
	</div>
	<div style="text-align: center"><br/>
		<button type="button" class="btn btn-main" id="morebtn3" style="background-color: black; color: aliceblue;">더보기</button>
	</div>
   </div>
  </div>
</div>

  <!--================End Checkout Area =================-->


		<!-- Footer
		============================================= -->
		<footer id="footer" class="border-0 bg-white">
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
	</div>

	<!-- Go To Top
	============================================= -->
	<div id="gotoTop" class="bg-color op-07 h-op-1">
		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><polygon points="48 208 128 128 208 208 48 208" opacity="0.2"></polygon><polygon points="48 208 128 128 208 208 48 208" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polygon><polyline points="48 128 128 48 208 128" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg>
	</div>

	<!-- JavaScripts
	============================================= -->
	<script src="js/jquery.js"></script>
	<script src="js/plugins.min.js"></script>

	<!-- Footer Scripts
	============================================= -->
	<script src="js/functions.js"></script>

</body>
</html>