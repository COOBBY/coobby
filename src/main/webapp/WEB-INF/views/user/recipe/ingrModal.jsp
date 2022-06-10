<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="single-product shop-quick-view-ajax">

	<!-- Close Button
					============================================= -->
	<button title="Close (Esc)" type="button" class="mfp-close"></button>

	<!-- Product
					============================================= -->


	<div class="modal-header">
		<h4 class="modal-title" id="contactFormModalLabel">${ ingr.ingrName }</h4>
	</div>
	<div id="ingrcontainer">
		<img id="ingrimg"
			src="/resources/user/ingrimages/${ ingr.ingrStoredImage }" alt="" />
	</div>
	<div class="modal-body">

		<div class="form-widget">
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">제철</div>
				<div class="ingrcontent">${ ingr.ingrSeasonal }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">보관온도</div>
				<div class="ingrcontent">${ ingr.ingrTemp }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">100g당 열량</div>
				<div class="ingrcontent">${ ingr.ingrKcal }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">잘맞는 음식</div>
				<div class="ingrcontent">${ ingr.ingrBest }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">안맞는 음식</div>
				<div class="ingrcontent">${ ingr.ingrWost }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">손질법</div>
				<div class="ingrcontent">${ ingr.ingrTrim }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">조리법</div>
				<div class="ingrcontent">${ ingr.ingrCooking }</div>
			</div>
			<div class="line my-4"></div>
			<div class="ingrdetailcontainer">
				<div class="ingrtitle">보관법</div>
				<div class="ingrcontent">${ ingr.ingrStorage }</div>
			</div>
		</div>


	</div>
	<div id="modalbtn" class="modal-footer">
		<a href="#"><button class="btn btn-info">관련 레시피 검색</button></a>
		<a href="/user/map/map?ingrCode=${ ingr.ingrCode }"><button class="btn btn-info">매장 위치 검색</button></a>
	</div>
</div>


<!-- Modal Contact Form
							============================================= -->