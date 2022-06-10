<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/user/css/bootstrap.css"
	type="text/css" />
<style>
img {
	width: 100px;
	height: 100px;
	border-radius: 5%;
	border: 1px solid #a9cbed;
}

.searchBar {
	position: relative;
	width: 600px;
	height: 70px;
	margin: 10px auto;
}

input {
	border: 1px solid #F1F1F1;
	border-radius: 50px;
	width: 600px;
	height: 50px;
	background-color: none;
}

input::-webkit-input-placeholder {
	background-image:
		url(https://cdn1.iconfinder.com/data/icons/hawcons/32/698627-icon-111-search-256.png);
	background-size: contain;
	background-position: 1px center;
	background-repeat: no-repeat;
	text-align: center;
	text-indent: 0;
}

.btn {
	height: 50px;
	border-radius: 25%;
}

.rightIcon {
	margin-left: -10%;
	float: left;
}

.inputBar {
	width: 350px;
	float: left;
}

.btn-primary {
	margin-left: -3%;
}

#chooseFile {
	visibility: hidden;
}
</style>
</head>
<body>
	<div class="row gutter-30 col-mb-30 mt-3">
		<form action="search" id="searchForm" method="POST"
			enctype="multipart/form-data">
			<div class="searchBar">
				<div class="inputBar">
					<input name="searchKeyword" id="searchBar" type="text"
						class="form-control rounded-pill" placeholder="    재료 혹은 음식 검색"
						aria-label="Recipient's username" aria-describedby="button-addon2"
						onfocus="this.placeholder=''"
						onblur="this.placeholder='    재료 혹은 음식 검색'" autocomplete="off">

				</div>
				<div class="rightIcon">
					<button type="button" class="btn btn-default finallySearch">
						<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
  					<path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
				</svg>
					</button>
					<button type="button" class="btn btn-warning speech">
						<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35"
							fill="currentColor" class="bi bi-mic" viewBox="0 0 16 16">
							    <path
								d="M3.5 6.5A.5.5 0 0 1 4 7v1a4 4 0 0 0 8 0V7a.5.5 0 0 1 1 0v1a5 5 0 0 1-4.5 4.975V15h3a.5.5 0 0 1 0 1h-7a.5.5 0 0 1 0-1h3v-2.025A5 5 0 0 1 3 8V7a.5.5 0 0 1 .5-.5z" />
							    <path
								d="M10 8a2 2 0 1 1-4 0V3a2 2 0 1 1 4 0v5zM8 0a3 3 0 0 0-3 3v5a3 3 0 0 0 6 0V3a3 3 0 0 0-3-3z" />
							  </svg>
					</button>
					<button type="button" class="btn btn-primary image">
						<svg xmlns="http://www.w3.org/2000/svg" width="35" height="35"
							fill="currentColor" class="bi bi-image" viewBox="0 0 16 16">
							   <path d="M6.002 5.5a1.5 1.5 0 1 1-3 0 1.5 1.5 0 0 1 3 0z" />
						 	   <path
								d="M2.002 1a2 2 0 0 0-2 2v10a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V3a2 2 0 0 0-2-2h-12zm12 1a1 1 0 0 1 1 1v6.5l-3.777-1.947a.5.5 0 0 0-.577.093l-3.71 3.71-2.66-1.772a.5.5 0 0 0-.63.062L1.002 12V3a1 1 0 0 1 1-1h12z" />
						 	 </svg>
					</button>
				</div>
				<img class="image-show" id="image-show">
				<input type="file"
					id="chooseFile" name="chooseFile" accept="image/*"
					visibility="hidden">
			</div>
		</form>
	</div>
	<script src="/resources/user/js/jquery.js"></script>
	<script>
	$(function(){
		$('.image-show').hide();
		
		$("#chooseFile").on("change", function(event) {
			$('.image-show').show();
		    var file = event.target.files[0];

		    var reader = new FileReader(); 
		    reader.onload = function(e) {
		        $("#image-show").attr("src", e.target.result);
		    }

		    reader.readAsDataURL(file);
		    $('.rounded-pill').prop('readonly', true);

		});
		
		$('.image').on("click",function(){
			$('#chooseFile').click();
			
		})
		
		$('.finallySearch').on("click",function(){
			$('#searchForm').submit();
		})
		
		
		const store = {
			texts : '',
			isRecognizing: true
		};

		(() => {
			/* Speech API start */
			let SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
			if(!("webkitSpeechRecognition" in window)){
				alert("지원 안되는 브라우저 입니다. !")
			} else {			
				const recognition = new SpeechRecognition();
				recognition.interimResults = true; // true면 음절을 연속적으로 인식하나 false면 한 음절만 기록함
				recognition.lang = 'ko-KR'; // 값이 없으면 HTML의 <html lang="en">을 참고합니다. ko-KR, en-US
				recognition.continuous = false; //각 인식에 대해 연속 결과가 반환되는지 아니면 단일 결과만 반환되는지를 제어합니다. 기본값은 단일( false.)
				recognition.maxAlternatives = 20000; // maxAlternatives가 숫자가 작을수록 발음대로 적고, 크면 문장의 적합도에 따라 알맞은 단어로 대체합니다.

				recognition.onspeechend = function() { // 음성 감지가 끝날때 실행될 이벤트
					recognition.stop();
					document.querySelector('.speech').classList.remove("on");
					store.isRecognizing = true;
				};

				recognition.onresult = function(e) { //result이벤트는 음성 인식 서비스가 결과를 반환할 때 시작됩니다.
					store.texts = Array.from(e.results)
									.map(results => results[0].transcript).join("");

					console.log(store.texts)
					document.querySelector('.rounded-pill').value = store.texts;
				};
				/* // Speech API END */

				const active = () => {
					document.querySelector('.speech').classList.add('on')
					recognition.start();
					store.isRecognizing = false;
				};

				const unactive = () => {
					document.querySelector('.speech').classList.remove('on')
					recognition.stop();
					store.isRecognizing = true;
				};

				document.querySelector('.speech').addEventListener('click', () => {
					if(store.isRecognizing){
						active();
					} else {
						unactive();
					}
				});
			}
		})();
	
})
	
		
	</script>
</body>
</html>