<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html dir="ltr" lang="en-US">
	<!-- <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"> -->
		<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
	  </svg>
<head>
	<style>
		.sel1{
			height: 40px;
			width: 400px;
			border: 1px solid #1b5ac2;
			background: #ffffff;
		}

		.recipe {
			background-image: url('/resources/user/images/my/background.jpg');
			max-width: 100%;
			height: auto;
		}
	</style>

	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="author" content="SemiColonWeb" />

	<!-- Stylesheets
	============================================= -->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&family=Zilla+Slab:wght@400;500&display=swap" rel="stylesheet">

	<link rel="stylesheet" href="/resources/user/css/bootstrap.css" type="text/css" />
	<link rel="stylesheet" href="style.css" type="text/css" />

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
	<title>Shop - Furniture | Canvas</title>

</head>

<body class="stretched">

	<!-- Cart Panel Background
	============================================= -->
	<div class="body-overlay"></div>

	<!-- Cart Side Panel
	============================================= -->
	<div id="side-panel" class="bg-white">

		<!-- Cart Side Panel Close Icon
		============================================= -->
		<div id="side-panel-trigger-close" class="side-panel-trigger"><a href="#"><i class="icon-line-cross"></i></a></div>

		<div class="side-panel-wrap">

			<div class="top-cart d-flex flex-column h-100">
				<div class="top-cart-title">
					<h4>Shopping Cart <small class="bg-color-light icon-stacked text-center rounded-circle color">2</small></h4>
				</div>

				<!-- Cart Items
				============================================= -->
				<div class="top-cart-items">

					<!-- Cart Item 1
					============================================= -->
					<div class="top-cart-item">
						<div class="top-cart-item-image border-0">
							<a href="#"><img src="/resources/user/demos/furniture/images/cart/1.jpg" alt="Cart Image 1" /></a>
						</div>
						<div class="top-cart-item-desc">
							<div class="top-cart-item-desc-title">
								<a href="#" class="fw-medium">Blue Sofa for Dining Room</a>
								<span class="top-cart-item-price d-block"><del>$29.99</del> $19.99</span>
								<div class="d-flex mt-2">
									<a href="#" class="fw-normal text-black-50 text-smaller"><u>Edit</u></a>
									<a href="#" class="fw-normal text-black-50 text-smaller ms-3"><u>Remove</u></a>
								</div>
							</div>
							<div class="top-cart-item-quantity">x 1</div>
						</div>
					</div>

					<!-- Cart Item 2
					============================================= -->
					<div class="top-cart-item">
						<div class="top-cart-item-image border-0">
							<a href="#"><img src="/resources/user//resources/user/demos/furniture/images/cart/2.jpg" alt="Cart Image 2" /></a>
						</div>
						<div class="top-cart-item-desc">
							<div class="top-cart-item-desc-title">
								<a href="#" class="fw-medium">Ceilling Light for Office</a>
								<span class="top-cart-item-price d-block">$24.99</span>
								<div class="d-flex mt-2">
									<a href="#" class="fw-normal text-black-50 text-smaller"><u>Edit</u></a>
									<a href="#" class="fw-normal text-black-50 text-smaller ms-3"><u>Remove</u></a>
								</div>
							</div>
							<div class="top-cart-item-quantity">x 2</div>
						</div>
					</div>
				</div>

				<!-- Cart Saved Text
				============================================= -->
				<div class="py-2 px-3 mt-auto text-black-50 text-smaller bg-color-light">
					<span><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="var(--themecolor)" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><path d="M54.46089,201.53911c-9.204-9.204-3.09935-28.52745-7.78412-39.85C41.82037,149.95168,24,140.50492,24,127.99963,24,115.4945,41.82047,106.048,46.67683,94.31079c4.68477-11.32253-1.41993-30.6459,7.78406-39.8499s28.52746-3.09935,39.85-7.78412C106.04832,41.82037,115.49508,24,128.00037,24c12.50513,0,21.95163,17.82047,33.68884,22.67683,11.32253,4.68477,30.6459-1.41993,39.8499,7.78406s3.09935,28.52746,7.78412,39.85C214.17963,106.04832,232,115.49508,232,128.00037c0,12.50513-17.82047,21.95163-22.67683,33.68884-4.68477,11.32253,1.41993,30.6459-7.78406,39.8499s-28.52745,3.09935-39.85,7.78412C149.95168,214.17963,140.50492,232,127.99963,232c-12.50513,0-21.95163-17.82047-33.68884-22.67683C82.98826,204.6384,63.66489,210.7431,54.46089,201.53911Z" opacity="0.2"></path><path d="M54.46089,201.53911c-9.204-9.204-3.09935-28.52745-7.78412-39.85C41.82037,149.95168,24,140.50492,24,127.99963,24,115.4945,41.82047,106.048,46.67683,94.31079c4.68477-11.32253-1.41993-30.6459,7.78406-39.8499s28.52746-3.09935,39.85-7.78412C106.04832,41.82037,115.49508,24,128.00037,24c12.50513,0,21.95163,17.82047,33.68884,22.67683,11.32253,4.68477,30.6459-1.41993,39.8499,7.78406s3.09935,28.52746,7.78412,39.85C214.17963,106.04832,232,115.49508,232,128.00037c0,12.50513-17.82047,21.95163-22.67683,33.68884-4.68477,11.32253,1.41993,30.6459-7.78406,39.8499s-28.52745,3.09935-39.85,7.78412C149.95168,214.17963,140.50492,232,127.99963,232c-12.50513,0-21.95163-17.82047-33.68884-22.67683C82.98826,204.6384,63.66489,210.7431,54.46089,201.53911Z" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></path><polyline points="172 104 113.333 160 84 132" fill="none" stroke="var(--themecolor)" stroke-linecap="round" stroke-linejoin="round" stroke-width="16"></polyline></svg> You save $10.00 on this order.</span>
				</div>

				<!-- Cart Price and Button
				============================================= -->
				<div class="top-cart-action flex-column align-items-stretch">
					<div class="d-flex justify-content-between align-items-center mb-2">
						<small class="text-uppercase ls1">Total</small>
						<h4 class="fw-medium font-body mb-0">$69.97</h4>
					</div>
					<a href="#" class="button btn-block text-center m-0 fw-normal"><i style="position: relative; top: -2px;"><svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="#FFF" viewBox="0 0 256 256"><rect width="256" height="256" fill="none"></rect><path d="M40,192a16,16,0,0,0,16,16H216a8,8,0,0,0,8-8V88a8,8,0,0,0-8-8H56A16,16,0,0,1,40,64Z" opacity="0.2"></path><path d="M40,64V192a16,16,0,0,0,16,16H216a8,8,0,0,0,8-8V88a8,8,0,0,0-8-8H56A16,16,0,0,1,40,64v0A16,16,0,0,1,56,48H192" fill="none" stroke="#FFF" stroke-linecap="round" stroke-linejoin="round" stroke-width="10"></path><circle cx="180" cy="144" r="12"></circle></svg></i> Checkout</a>
				</div>
			</div>

		</div>

	</div>

	<!-- Document Wrapper
	============================================= -->
	<div id="wrapper" class="clearfix">

		<!-- Top Bar
		============================================= -->
		<!-- <div id="top-bar" class="py-3 text-center bg-color-light">
			<div class="container clearfix">
				<div class="d-md-flex justify-content-md-between align-items-md-center">
					<h4 class="mb-2 mb-md-0 h6 fw-normal">Free Shipping on every order <span class="mx-2 text-black-50">&middot;</span> 30 Days Return</h4>

					<h4 class="mb-0 h6 fw-normal">Need Help? Call us at <a class="color" href="tel:+00-11-22-7541"><u class="fw-medium">+00-11-22-7541</u></a> or <a class="color" href="mailto:noreply@canvas.com"><u class="fw-medium">email</u></a> us.</h4>
				</div>
			</div>
		</div> -->
		<!-- #top-bar end -->
		

		<!-- Header
		============================================= -->
		<header id="header" class="header-size-sm border-bottom-0">
		<div id="wrapper" class="clearfix">
	<jsp:include page="../user-nav.jsp"/>
		</div>
			
		</header><!-- #header end -->

		<section class="recipe" id="page-title" style="height: 2%;">	

			<div class="container clearfix">
				<h1>Recipe Search &ensp;&ensp;<img src="/resources/user/images/my/dot.png" style="width: 5%; height:5%;"></h1>
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="#"><b>Home</b></a></li>
					<li class="breadcrumb-item"><a href="#"><b>Pages</b></a></li>
					<li class="breadcrumb-item active" aria-current="page"><b>Recipe Search</b></li>
				</ol>
			</div>

		</section>
		<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap" style="text-align: center;">

				<div class="flex flex-column justify-center align-center">
					<!-- <a class="header__logo" href="/">
					  <img src="/static/images/logo/webisfree_logo_102.png" width="104" height="20" alt="WEBISFREE">
					</a> -->
					<form class="search-view" action="/search/" method="get">
					  <form style="display: inline; margin: 0px;"><input type="text" name="keyword" class="form-control-lg search-input" placeholder="레시피 검색..." value="">
					  <button type="button" onclick="location.href='searchresultpage.jsp'" class="btn btn-primary" style="margin-left:-5px; margin-top: -5px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="33" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
						  </svg>
					  </button>
					  <button type="button" class="btn btn-warning" style="margin-left:-5px; margin-top: -5px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="33" fill="currentColor" class="bi bi-mic-fill" viewBox="0 0 16 16">
							<path d="M5 3a3 3 0 0 1 6 0v5a3 3 0 0 1-6 0V3z"/>
							<path d="M3.5 6.5A.5.5 0 0 1 4 7v1a4 4 0 0 0 8 0V7a.5.5 0 0 1 1 0v1a5 5 0 0 1-4.5 4.975V15h3a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1h3v-2.025A5 5 0 0 1 3 8V7a.5.5 0 0 1 .5-.5z"/>
						  </svg>
					  </button>
					  <button type="button" class="btn btn-danger" style="margin-left:-5px;  margin-top: -5px;">
						<svg xmlns="http://www.w3.org/2000/svg" width="30" height="33" fill="currentColor" class="bi bi-image" viewBox="0 0 16 16">
							<path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z"/>
							<path d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z"/>
						  </svg>
					  </button>
					  </form>
					</form>
				  </div> 
				  
				
				  <!-- <form id="widget-subscribe-form" method="post" data-animate="fadeInUp">
					 <div style="text-align: center; height: 100px;">
						<input type="text" id="widget-subscribe-form-email" class="form-control-lg" placeholder="레시피 검색.." style="box-shadow: none; overflow: hidden; height: 40px; border-radius: 5px;">
						<button href="#" class="button fw-normal" type="submit" style="border-radius: 5px; height: 45px;">검색</button>
					</div>
				</form> -->
				<!-- <input type='text' value="레시피검색.." style="border-radius: 5em;"><br/><br/><br/> -->
				<dd id="contents_area_full" style="clear: both;">
					<script>
						var _IS_SEARCH_RESTRICT = false;
						$(document).ready( function() {
									ToggleCategory();
								});
					
						function goSearchRecipe(ca, val)
						{
							if (val == 'reco' && _IS_SEARCH_RESTRICT) {
								viewPremiumSearchModal();
							} else {
								$("#srRecipeFrm [name='"+ca+"']").val(val);
								$("[name='lastcate']").val(ca);
								$("#srRecipeFrm").submit();
							}
						}
					
						function doSetSearch(filters, val)
						{
							if(!filters || !val) return ;
							$("[id^=li_"+filters+"_]").removeClass("active");
							// cancel
							if($("#dsf_"+filters).val() == val)
							{
								$("#dsf_"+filters).val('');
							}
							else
							{
								$("#li_"+filters+"_"+val).addClass("active");
								$("#dsf_"+filters).val(val);
							}
						}
					
						function doDetailSearch()
						{
							$("[name=dsearch]").val("y");
							if($("#ni_resource").val()) $("[name=niresource]").val($("#ni_resource").val());
							$("#srRecipeFrm").submit();
						}
					
						function ToggleCategory()
						{
							$('#id_search_category').toggle();
							if ($('#id_search_category').is(":visible"))
							{
								$('#id_search_category_text').text('카테고리 닫기');
								$('#id_search_category_img').attr("src",'https://recipe1.ezmember.co.kr/img/icon_arrow9_up.gif');
							}
							else
							{
								$('#id_search_category_text').text('카테고리 열기');
								$('#id_search_category_img').attr("src",'https://recipe1.ezmember.co.kr/img/icon_arrow9_down.gif');
							}
					
						}
					</script>
					<div id="id_search_category" style="display:none" class="rcp_m_cate">
						 <table width="100%" cellspacing="0" cellpadding="0">
							<colgroup>
								<col width="100px">
								<col>
							</colgroup>
							<tbody>
							<tr>
								<th style="padding-top: 10px;">
									<span>종류별</span><br/>
									<span>상황별</span><br/>
									<span>재료별</span><br/>
									<span>방법별</span>
								</th>
								<td>
									<div class="rcp_cate st3">
										<div class="cate_list">
									<a href="javascript:goSearchRecipe('cat4','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat4','63')">밑반찬</a><a href="javascript:goSearchRecipe('cat4','56')">메인반찬</a><a href="javascript:goSearchRecipe('cat4','54')">국/탕</a><a href="javascript:goSearchRecipe('cat4','55')">찌개</a><a href="javascript:goSearchRecipe('cat4','60')">디저트</a><a href="javascript:goSearchRecipe('cat4','53')">면/만두</a><a href="javascript:goSearchRecipe('cat4','52')">밥/죽/떡</a><a href="javascript:goSearchRecipe('cat4','61')">퓨전</a><a href="javascript:goSearchRecipe('cat4','57')">김치/젓갈/장류</a><a href="javascript:goSearchRecipe('cat4','58')">양념/소스/잼</a><a href="javascript:goSearchRecipe('cat4','65')">양식</a><a href="javascript:goSearchRecipe('cat4','64')">샐러드</a><a href="javascript:goSearchRecipe('cat4','68')">스프</a><a href="javascript:goSearchRecipe('cat4','66')">빵</a><a href="javascript:goSearchRecipe('cat4','69')">과자</a><a href="javascript:goSearchRecipe('cat4','59')">차/음료/술</a><a href="javascript:goSearchRecipe('cat4','62')">기타</a>            </div>
											<div class="cate_list">
									<a href="javascript:goSearchRecipe('cat2','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat2','12')">일상</a><a href="javascript:goSearchRecipe('cat2','18')">초스피드</a><a href="javascript:goSearchRecipe('cat2','13')">손님접대</a><a href="javascript:goSearchRecipe('cat2','19')">술안주</a><a href="javascript:goSearchRecipe('cat2','21')">다이어트</a><a href="javascript:goSearchRecipe('cat2','15')">도시락</a><a href="javascript:goSearchRecipe('cat2','43')">영양식</a><a href="javascript:goSearchRecipe('cat2','17')">간식</a><a href="javascript:goSearchRecipe('cat2','45')">야식</a><a href="javascript:goSearchRecipe('cat2','20')">푸드스타일링</a><a href="javascript:goSearchRecipe('cat2','46')">해장</a><a href="javascript:goSearchRecipe('cat2','44')">명절</a><a href="javascript:goSearchRecipe('cat2','14')">이유식</a><a href="javascript:goSearchRecipe('cat2','22')">기타</a>            </div>
											<div class="cate_list">
									<a href="javascript:goSearchRecipe('cat3','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat3','70')">소고기</a><a href="javascript:goSearchRecipe('cat3','71')">돼지고기</a><a href="javascript:goSearchRecipe('cat3','72')">닭고기</a><a href="javascript:goSearchRecipe('cat3','23')">육류</a><a href="javascript:goSearchRecipe('cat3','28')">채소류</a><a href="javascript:goSearchRecipe('cat3','24')">해물류</a><a href="javascript:goSearchRecipe('cat3','50')">달걀/유제품</a><a href="javascript:goSearchRecipe('cat3','33')">가공식품류</a><a href="javascript:goSearchRecipe('cat3','47')">쌀</a><a href="javascript:goSearchRecipe('cat3','32')">밀가루</a><a href="javascript:goSearchRecipe('cat3','25')">건어물류</a><a href="javascript:goSearchRecipe('cat3','31')">버섯류</a><a href="javascript:goSearchRecipe('cat3','48')">과일류</a><a href="javascript:goSearchRecipe('cat3','27')">콩/견과류</a><a href="javascript:goSearchRecipe('cat3','26')">곡류</a><a href="javascript:goSearchRecipe('cat3','34')">기타</a>            </div>
											<div class="cate_list">
									<a href="javascript:goSearchRecipe('cat1','')" class="active">전체</a><a href="javascript:goSearchRecipe('cat1','6')">볶음</a><a href="javascript:goSearchRecipe('cat1','1')">끓이기</a><a href="javascript:goSearchRecipe('cat1','7')">부침</a><a href="javascript:goSearchRecipe('cat1','36')">조림</a><a href="javascript:goSearchRecipe('cat1','41')">무침</a><a href="javascript:goSearchRecipe('cat1','42')">비빔</a><a href="javascript:goSearchRecipe('cat1','8')">찜</a><a href="javascript:goSearchRecipe('cat1','10')">절임</a><a href="javascript:goSearchRecipe('cat1','9')">튀김</a><a href="javascript:goSearchRecipe('cat1','38')">삶기</a><a href="javascript:goSearchRecipe('cat1','67')">굽기</a><a href="javascript:goSearchRecipe('cat1','39')">데치기</a><a href="javascript:goSearchRecipe('cat1','37')">회</a><a href="javascript:goSearchRecipe('cat1','11')">기타</a>            </div>
												</div>
								</td>
							</tr>
							<tr>
								<th>
									<span>테마별</span>
								</th>
								<td>
									<div id="id_search_category" style="padding:6px 15px 0px 12px" class="rcp_cate st3">
										<div class="cate_list">
											<a href="/theme/list.html?t1=101012">여성/뷰티</a>
											<a href="/theme/list.html?t1=101013">엄마/아기</a>
											<a href="/theme/list.html?t1=101014">건강/질병</a>
											<a href="/theme/list.html?t1=101010">제철요리</a>
											<a href="/theme/list.html?t1=101016">추천</a>
										</div>
									</div>
								</td>
							</tr>
							</tbody>
						</table>
					</div>
					<div class="rcp_cate_btn" style="text-align: center;"><a href="javascript:ToggleCategory()"><span id="id_search_category_text">카테고리 열기</span><span><img id="id_search_category_img" src="https://recipe1.ezmember.co.kr/img/icon_arrow9_down.gif"></span></a></div>

				<div class="container">


					<div class="row justify-content-between align-items-center">
						<div class="col-auto mb-4">
							<h3 class="fw-medium h1">★BookMark <span data-animate="svg-underline-animated" class="svg-underline nocolor"><span>Recipe</span></span></h3>
						</div>

						<div class="col-auto mb-4 d-flex">

							<!-- <div class="dropdown sortbuttons">
								<button class="button button-border m-0 button-dark border-width-1 border-default nott ls0 fw-normal h-bg-color dropdown-toggle" type="button" id="catButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Choose Category</button>
								<div class="dropdown-menu py-0 border-default rounded-0" aria-labelledby="catButton">
									<a class="dropdown-item" href="#">Sofa Full Set</a>
									<a class="dropdown-item" href="#">Single Seater</a>
									<a class="dropdown-item" href="#">Recliner</a>
									<a class="dropdown-item" href="#">Sofa Cum Bed</a>
									<a class="dropdown-item" href="#">BeanBag</a>
								</div>
							</div> -->

							<div class="dropdown sortbuttons ms-2">
								<!-- <button class="button button-border m-0 button-dark border-width-1 border-default nott ls0 fw-normal h-bg-color dropdown-toggle" type="button" id="sortButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort By</button> -->
								<select name="ddd" style="width: 110%; height:120%">
									<option value="Popular">인기레시피순</option>
									<option value="Popular">레시피명순</option>
									<option value="Popular">등록날짜순</option>
								</select>
								<!-- <button type="button"></button> -->
								<div class="dropdown-menu py-0 border-default rounded-0" aria-labelledby="sortButton">
									<a class="dropdown-item" href="#">Featured</a>
									<a class="dropdown-item" href="#">Popular</a>
									<a class="dropdown-item" href="#">Price: Low to High</a>
									<a class="dropdown-item" href="#">Price: High to Low</a>
									<a class="dropdown-item" href="#">Oldest to Newest</a>
									<a class="dropdown-item" href="#">Newest to Oldest</a>
									<a class="dropdown-item" href="#">A-Z</a>
									<a class="dropdown-item" href="#">Z-A</a>
								</div>
							</div>
							

						</div>
					</div>

					<!-- Shop
					============================================= -->
					<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">

						<!-- Product 1 -->
						<div class="product col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="grid-inner">
								<div class="product-image">
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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

					</div><!-- #shop end -->

					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center mt-4">
							<!-- <li class="page-item"><a class="page-link" href="#">Prev</a></li> -->
							<li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<!-- <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
						</ul>
					</nav>
					<hr/>

					<!-- Content
		============================================= -->
		<section id="content">
			<div class="content-wrap">

				<div class="container">

					<div class="row justify-content-between align-items-center">
						<div class="col-auto mb-4">
							<h3 class="fw-medium h1">★Famous <span data-animate="svg-underline-animated" class="svg-underline nocolor"><span>Recipe</span></span></h3>
						</div>

						<div class="col-auto mb-4 d-flex">

							<div class="dropdown sortbuttons">
								<button class="button button-border m-0 button-dark border-width-1 border-default nott ls0 fw-normal h-bg-color dropdown-toggle" type="button" id="catButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Choose Category</button>
								<div class="dropdown-menu py-0 border-default rounded-0" aria-labelledby="catButton">
									<a class="dropdown-item" href="#">Sofa Full Set</a>
									<a class="dropdown-item" href="#">Single Seater</a>
									<a class="dropdown-item" href="#">Recliner</a>
									<a class="dropdown-item" href="#">Sofa Cum Bed</a>
									<a class="dropdown-item" href="#">BeanBag</a>
								</div>
							</div>

							<div class="dropdown sortbuttons ms-2">
								<button class="button button-border m-0 button-dark border-width-1 border-default nott ls0 fw-normal h-bg-color dropdown-toggle" type="button" id="sortButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Sort By</button>
								<div class="dropdown-menu py-0 border-default rounded-0" aria-labelledby="sortButton">
									<a class="dropdown-item" href="#">Featured</a>
									<a class="dropdown-item" href="#">Popular</a>
									<a class="dropdown-item" href="#">Price: Low to High</a>
									<a class="dropdown-item" href="#">Price: High to Low</a>
									<a class="dropdown-item" href="#">Oldest to Newest</a>
									<a class="dropdown-item" href="#">Newest to Oldest</a>
									<a class="dropdown-item" href="#">A-Z</a>
									<a class="dropdown-item" href="#">Z-A</a>
								</div>
							</div>

						</div>
					</div>

					<!-- Shop
					============================================= -->
					<div id="shop" class="shop row gutter-30 col-mb-30 mt-3">

						<!-- Product 1 -->
						<div class="product col-lg-3 col-md-4 col-sm-6 col-12">
							<div class="grid-inner">
								<div class="product-image">
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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
									<a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2.jpg" alt="Light Grey Sofa"></a>
									<!-- <a href="demo-furniture-single.html"><img src="/resources/user/demos/furniture/images/shop/2-1.jpg" alt="Light Grey Sofa"></a> -->
									<div class="bg-overlay">
										<div class="bg-overlay-content align-items-start justify-content-between"  data-hover-animate="fadeIn" data-hover-speed="400">
											<a href="#" class="btn btn-light me-2" data-lightbox="ajax"><i class="bi bi-star-fill"></i>
												<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-star-fill" viewBox="0 0 16 16">
													<path d="M3.612 15.443c-.386.198-.824-.149-.746-.592l.83-4.73L.173 6.765c-.329-.314-.158-.888.283-.95l4.898-.696L7.538.792c.197-.39.73-.39.927 0l2.184 4.327 4.898.696c.441.062.612.636.282.95l-3.522 3.356.83 4.73c.078.443-.36.79-.746.592L8 13.187l-4.389 2.256z"/>
												  </svg></a>
											 <a href="/resources/user/demos/furniture/ajax/quick-view.html" class="btn btn-light" data-lightbox="ajax"><i class="bi bi-star"></i>
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

					</div><!-- #shop end -->

					<div class="clear"></div>

					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center mt-4">
							<!-- <li class="page-item"><a class="page-link" href="#">Prev</a></li> -->
							<li class="page-item active" aria-current="page"><span class="page-link">1</span></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">4</a></li>
							<li class="page-item"><a class="page-link" href="#">5</a></li>
							<!-- <li class="page-item"><a class="page-link" href="#">Next</a></li> -->
						</ul>
					</nav>

				</div>

			</div>
		</section><!-- #content end -->

		<!-- Footer
		============================================= -->
		<footer id="footer" class="border-width-1 border-default bg-white">
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

</body>
</html>