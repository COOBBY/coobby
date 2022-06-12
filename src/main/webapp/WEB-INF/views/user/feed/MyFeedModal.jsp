<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>



			<div class="single-product shop-quick-view-ajax">
			

<div class="single-product shop-quick-view-ajax">


	<!-- Close Button
					============================================= -->
	<button title="Close (Esc)" type="button" class="mfp-close"></button>

	<!-- Product
					============================================= -->
	<div class="product modal-padding">

		<div class="row">

			<!-- Product Image
							============================================= -->
			<div class="col-md-6">

				<div class="product-image">
					<div class="fslider" data-pagi="false">
						<div class="flexslider">
							<div class="slider-wrap">
								<c:forEach items="${feedimg}" var="fimg">
									<div class="slide">
										<img src="/resources/user/feedimages/${fimg.feStoredImage}"
											alt="feedimg">
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Product Description
							============================================= -->

			<form action="UpdateMyFeed" method="post" class="col-md-6">
				<div class="row product-desc content-sticky">
					<h2 class="mb-3 fw-normal beforemodify inputtitle">${myfeedmodal.feTitle }</h2>
					<input type="text" name="feTitle" class="modifyinput aftermodify"
						value="${myfeedmodal.feTitle }" style="width: 100%;" />

					<!-- 내용 -->
					<!-- 유저정보 -->
					<input type="hidden" name="feNo" value="${myfeedmodal.feNo }" />
					<div id="feeduser">
						<h3 class="userId mb-4 fw-semibold">${myfeedmodal.memId }</h3>
						<c:if test="${likeCheck eq 0 || sessionScope.user eq null}" >
							<a type="button" id="heartlike" class="heartlike"><img src="/resources/img/heart.png" alt="test"></a>				
						</c:if>
						<c:if test="${likeCheck eq 1}" >
							<a type="button" id="heartlike" class="heartlike"><img src="/resources/img/heart-fill.png" alt="test"></a>				
						</c:if>
					</div>
					<div class="line my-5"></div>
					<div class="feedcon beforemodify inputcontent">${myfeedmodal.feContent }</div>
					<input type="text" name="feContent" class="modifyinput aftermodify"
						maxlength="1000" style="resize: none; height: 150px; width: 100%;"
						value="${myfeedmodal.feContent }" />
					<div class="line my-5"></div>
					<!-- 댓글 시작 -->
					
					<div class="Feedcomment">
						<c:set var='commListVar' value="${ feedcomm}" />
						<c:set var="idx" value="0" />
						<c:set var="parentIdx" value="0" />
						<c:forEach items="${ feedcomm}" var="feedcomm" varStatus="status">
							<c:if test="${ feedcomm.feParent eq 0}">

								<c:set var="parentIdx" value="${parentIdx +1 }"/>
								<c:set var="idx" value="0"/>
								<!-- 댓글  -->
								<div class="row lineComm">
									<div class="col-md-10 memberId ">${feedcomm.member.memId }

										님 | ${feedcomm.feContent }</div>
									<div class="col-md-3 commtime">${feedcomm.feCommCreatetime }</div>
									<c:if test="${feedcomm.member.memId eq sessionScope.user.memId}">
										<div class="col-md-2 modify">
											<button type="button" class="mdfBtn btn btn-default">수정</button>
										</div>
									</c:if>
									<input type="hidden" name="feCommNo"
										class="parentIdx${parentIdx}" value="${feedcomm.feCommNo }">
								</div>
							</c:if>
							<!-- 대댓글 -->
							<c:forEach items="${commListVar}" var="feedcommchild"
								varStatus="childStatus">
								<c:if test="${ feedcommchild.feParent eq feedcomm.feCommNo}">
									<div class="row childComm">
										<div class="col-md-6 memberId">${feedcommchild.member.memId }
											님 | ${ feedcommchild.feContent}</div>
										<input type="hidden" name="feCommNo"
											value="${feedcommchild.feCommNo }">
										<div class="col-md-3 commtime">${feedcommchild.feCommCreatetime }</div>
										<c:if test="${feedcommchild.member.memId eq sessionScope.user.memId}">
											<div class="col-md-2 modify">
												<button type="button" class="mdfBtn btn btn-default">수정</button>
											</div>
										</c:if>
									</div>
								</c:if>
								<c:if
									test="${idx  eq 0 && childStatus.count eq commListVar.size()}">
									<c:set var="idx" value="1" />
									<div class="col-md-4 col-md-offset-4 recomm${ status.count } openReComm">
										-> 답글 달기</div>
									<div class="reCommentInput${ status.count } row"
										id="reCommentInput">
										<textarea placeholder="답글을 입력해주세요"
											class="form-control reComment col-md-6" maxlength="1000"
											style="resize: none; height: 35px;" name="commentContent"></textarea>
										<button name="insertFeComm"
											class="btn btn-dark px-3 input-group-text reCommBtn col-md-2"
											type="button">
											<i class="icon-line-corner-down-left"></i>
										</button>
									</div>
								</c:if>
							</c:forEach>
						</c:forEach>
					
						<div class="inputComm"></div>
					</div>
					<div class="inputfeedcomment">
						<div class="feedcomment input-group">
							<c:choose>
								<c:when test="${sessionScope.user eq null}">
									<input type="hidden" id="commentmem"
								value="notLogin" />
								</c:when>
								<c:otherwise>
									<input type="hidden" id="commentmem"
								value="${sessionScope.user.memId }" />
								</c:otherwise>
							</c:choose>
							<textarea id="write_comment" placeholder="댓글을 입력해주세요"
								class="form-control" maxlength="1000"
								style="resize: none; height: 35px;" name="commentContent"></textarea>
							<button id="com_btn" name="insertFeComm"
								class="btn btn-dark px-3 input-group-text" type="button">
								<i class="icon-line-corner-down-left"></i>
							</button>
						</div>
					</div>
					<button type="button" class="btn btn-main" id="morebtn3"
                        style="background-color: black; color: aliceblue;">더보기</button>
					</div>

					<!-- 댓글 끝 -->
					<c:if test="${sessionScope.user ne null }">
						<c:if test="${sessionScope.user.memId eq myfeedmodal.memId }">
							<button type="button"
								class="button button-3d button-rounded button-pink beforemodify beforebtn">
								<i class="icon-line-edit-3"></i>수정하기
							</button>
							<button type="button"
								class="button button-3d button-rounded button-pink modifyinput afterbtn aftermodify">
								<i class="icon-line-edit-3"></i>수정완료
							</button>
							<a href="deleteFeed?feNo=${myfeedmodal.feNo }"
								class="button button-3d button-rounded button-red delbtn"><i
								class="icon-line-trash-2"></i>삭제하기</a>
						</c:if>
					</c:if>
				</form>
				</div>

				<script src="/resources/user/Feed/js/myfeed.js"></script>
				<!-- <script src="http://code.jquery.com/jquery-latest.js"></script>-->
				

			

		</div>

	</div>

</div>
<!-- <script src="http://code.jquery.com/jquery-latest.js"></script>-->
<script>
$(function(){
// 모달 뷰 사진 슬라이더 옵션
$('.flexslider').flexslider({
    animation: "fade"
})

// 게시글 댓글 허용 및 submit
$('#checkbox').change(function(){
	 
    if($("#checkbox").is(":checked")){
        $('#checkval').val('1')
    }else{
        $('#checkval').val('0')
    }
    console.log($('#checkval').val())

})


// 게시글 답글 toggle

for(let i=1;i<100;i++){
	$(document).on('click','.recomm'+i,function(){
		$('.reComm'+i).toggle('slow');
		$('.reCommentInput'+i).toggle('slow');	
	});
}



// 마이피드 기능들 *********************

// 수정 페이지 처음에는 숨겨야됨
$('.modifyinput').hide();
$('.beforebtn').click(function(){
	$('.beforemodify').hide();
	$('.aftermodify').show();
});

// 수정 페이지로 변경 후 ajax로 수정한 내용 보내기
$('.afterbtn').click(function(){
	const input_title = $('input[name="feTitle"]').val();
	const input_content = $('input[name="feContent"]').val();
	const input_feNo = $('input[name="feNo"]').val();
	$.ajax({
		url:'/user/feed/modifyModal',	// url로 변경 ( 홈페이지 주소로 뒤에는 RequestMapping의 값을)
		type:'post',
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		data : { 
			feTitle : input_title,
			feContent : input_content,
			feNo : input_feNo
				}, 
		success : function(data) {
			if(data=='yes') {
				alert('수정 되었습니다');	// hide,show 적어주면됨
				$('.inputtitle').html(input_title);		// html(값)  => 불러오는 것 , 값을 넣으면 setter 
				$('.inputcontent').html(input_content);
				$('.aftermodify').hide();
				$('.beforemodify').show();
			}
			else {
				alert('안됨');
			}
			
		},
		error : function(err) {
			alert('수정되지 않았습니다.');
			console.log(err);
		}
		
	});
});

// 삭제 ajax
$('.delbtn').click(function(){
	const delfeNo = $('input[name="feNo"]').val();
	$.ajax({
		url:'/user/feed/deleteFeed',
		type:'post',
		contentType : 'application/x-www-form-urlencoded;charset=utf-8',
		data : { 
			feNo : delfeNo
				}, 
		success : function(data) {
			if(data=='yes') {
				alert('삭제 되었습니다');	
				location.href="MyFeed"
			}
			else {
				alert('안됨');
			}
			
		},
		error : function(err) {
			alert('삭제되지 않았습니다.');
			console.log(err);
		}
		
	});
});




// 좋아요 기능
$('.heartlike').click(function(){
	const userId = $('#commentmem').val();
	const feNo = $('input[name="feNo"]').val();
	
	if(userId == 'notLogin'){
		alert("로그인 후 이용 가능한 서비스입니다.");
		location.href="/user/login/loginpage";
		return;
	}
	console.log(userId);
	$.ajax({
		url:"likeFeed",
		type:"post",
		data: {
			userId : userId,
			feNo : feNo
		},
		success : function(data){
			if(data == 'true'){
				$('#heartlike').children().attr("src","/resources/img/heart-fill.png");
			}
			else{
				$('#heartlike').children().attr("src","/resources/img/heart.png");
			}
		},
		error : function(err) {
			alert('좋아요안됨')
			console.log(err);
		}
	})
	
})


// 댓글 등록 ajax
	$(document).on('click','#com_btn',function(){
			const lastPlace = $('.inputComm').last()
			const feNum = $('input[name="feNo"]').val();
			const member = $('#commentmem').val();
			const commcontent = $('#write_comment').val();
			const count = $('.memberId').length+1;
			$.ajax({
				url : "insertFeComm",
				type : "post",
				contentType : 'application/x-www-form-urlencoded;charset=utf-8',
				data : {
					feed : feNum,
					member : member,
					feContent : commcontent
				},
				success : function(data) {
					alert('댓글 등록 성공')
					$('#write_comment').val("");
					const text ='<div class="row lineComm">' +
								'<div class="col-md-10 memberId">'+data.member.memId+
								'님 | '+data.feContent+'</div>'+
								'<div class="col-md-2 commtime">'+data.feCommCreatetime+'</div>'+
								'<input type="hidden" name="feCommNo"'+
								'value="'+data.feCommNo+'">'+
								'</div>'+
								'<div class="col-md-4 col-md-offset-4 recomm'+count+'">'+
								'-> 답글 달기</div>'+
							    '<div class="reCommentInput'+count+'"'+
								'id="reCommentInput">'+
								'<textarea id="reComment" placeholder="답글을 입력해주세요"'+
									'class="form-control" maxlength="1000"'+
									'style="resize: none; height: 35px;" name="commentContent"></textarea>'+
								'<button name="insertFeComm"'+
									'class="btn btn-dark px-3 input-group-text reCommBtn" type="button">'+
									'<i class="icon-line-corner-down-left"></i>'+
								'</button>'+
							    '</div>';
					lastPlace.before(text);
				},
				error : function(err) {
					alert("댓글 에러")
					console.log(err);
				}
			})
		});
		//답글등록
		
		$(document).on('click','.reCommBtn',function(){
			if($(this).prev().val()==""){
				alert("답글을 입력해주세요");
			}
			else{
				const feNum = $('input[name="feNo"]').val();
				const childText = $(this).prev().val();
				const idx = $(this).parent().prevAll('.lineComm').length;
				const parentIdx = $(".parentIdx"+idx).val();
				const member = $('#commentmem').val();
				const inputPlace = $(this).parent().prev().prev();
				$(this).prev().val('')
				 
				$.ajax({
				url : "insertChildFeComm",
				type : "post",
				contentType : 'application/x-www-form-urlencoded;charset=utf-8',
				data : {
					feed : feNum,
					feParent : parentIdx,
					feContent : childText,
					member : member
				},
				success : function(data){
						
						const text = '<div class="row childComm">'+
						'<div class="col-md-10 memberId">'+data.member.memId+''+
						'님 | '+data.feContent+'</div>'+
						'<input type="hidden" name="feCommNo"'+
						'value="'+data.feCommNo+'">'+
						'<div class="col-md-2 commtime">'+data.feCommCreatetime+'</div>'+
						'</div>';
						inputPlace.after(text);
						
				},
				error : function(err){
					alert(err);
					console.log(err);
				}
			});
			}
		});
})
</script>
