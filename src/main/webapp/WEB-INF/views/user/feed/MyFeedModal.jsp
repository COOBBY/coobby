<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
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
                                                <div class="slide"><img src="/resources/user/feedimages/${fimg.feStoredImage}" alt="feedimg"></div>
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
								<input type="text" name="feTitle" class="modifyinput aftermodify" value="${myfeedmodal.feTitle }" style="width:100%;"/>
								
								<!-- 내용 -->
								<!-- 유저정보 -->
								<input type="hidden" name="feNo" value="${myfeedmodal.feNo }"/> 
								<div id="feeduser">
									<h3 class="userId mb-4 fw-semibold">${myfeedmodal.memId }</h3>
									<a href="#"><img src="/resources/img/heart.png" alt="test" id="heartlike"></a>
									<a href="#">
									</a>						
								</div>
								<div class="line my-5"></div>
								<div class="feedcon beforemodify inputcontent">${myfeedmodal.feContent }</div>
								<input type="text" name="feContent" class="modifyinput aftermodify" maxlength="1000" style="resize: none; height: 150px; width:100%;" value="${myfeedmodal.feContent }"/>
								<div class="line my-5"></div>
								<!-- 댓글 시작 -->
								<div class="Feedcomment">
								<c:set var='commListVar'  value="${ feedcomm}"/>
								<c:forEach items="${ feedcomm}" var="feedcomm" varStatus="status">
								<c:if test="${ feedcomm.feParent eq 0}">
									<div class="memberId">${feedcomm.member.memId } 님 </div>
									<span class="fecommview">${feedcomm.feContent }</span>
									<span class="commtime">${feedcomm.feCommUpdatetime }</span>
									<span class="recomm${ status.count }">답글</span>
									<div class="reCommentInput${ status.count }" id="reCommentInput">
										<textarea id="reComment" placeholder="답글을 입력해주세요" class="form-control" maxlength="1000" style="resize: none; height: 35px;" name="commentContent"></textarea>
										<button id="reCommBtn" name="insertFeComm" class="btn btn-dark px-3 input-group-text" type="button"><i class="icon-line-corner-down-left"></i></button>
									</div>
								</c:if>
									<!-- 대댓글 -->
										<c:forEach items="${commListVar}" var="feedcommchild">
										<c:if test="${ feedcommchild.feParent eq feedcomm.feCommNo}">
											<div class="memberId">${feedcommchild.member.memId } 님 </div>
											<span class="fecommview">${feedcommchild.feContent }</span>
											<span class="commtime">${feedcommchild.feCommUpdatetime }</span>
										</c:if>
										</c:forEach>
								</c:forEach>
								</div>
								<div class="inputfeedcomment">
									<div class="feedcomment input-group">
										<input type="hidden" id="commentmem" value="${myfeedmodal.memId }"/>
										<textarea id="write_comment" placeholder="댓글을 입력해주세요" class="form-control" maxlength="1000" style="resize: none; height: 35px;" name="commentContent"></textarea>
										<button id="com_btn" name="insertFeComm" class="btn btn-dark px-3 input-group-text" type="button"><i class="icon-line-corner-down-left"></i></button>	
									</div>
								</div>
								<!-- 댓글 끝 -->
								
								<button type="button" class="button button-3d button-rounded button-pink beforemodify beforebtn"><i class="icon-line-edit-3"></i>수정하기</button>
								<button type="button" class="button button-3d button-rounded button-pink modifyinput afterbtn aftermodify"><i class="icon-line-edit-3"></i>수정완료</button>
								<a href="deleteFeed?feNo=${myfeedmodal.feNo }" class="button button-3d button-rounded button-red delbtn"><i class="icon-line-trash-2"></i>삭제하기</a>
							</div>
							</form>
							
						</div>

					</div>

				</div>
				<!-- <script src="http://code.jquery.com/jquery-latest.js"></script>-->
				<script>
				$(function(){
//						
//						// 수정 페이지 처음에는 숨겨야됨
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
						
						// 댓글 등록 ajax
						
						$('#com_btn').click(function(){
							const feNum = $('input[name="feNo"]').val();
							const member = $('#commentmem').val();
							const commcontent = $('#write_comment').val();
							
							$.ajax({
								url:"insertFeComm",
								type:"post",
								contentType : 'application/x-www-form-urlencoded;charset=utf-8',
								data:{
									feed : feNum,
									member : member,
									feContent : commcontent
									},
								success : function(data){					
									alert('댓글 등록 성공')
									$('#write_comment').val("");
									$('.Feedcomment').empty();
									$.each(data, function(k, v){
										console.log(k, v);
										console.log(v["feContent"])
										const commList = 	'<div class="memberId">'+v["member"] + '님</div>'
														+	'<span class="fecommview">'+v["feContent"]+'</span>'
														+	'<span class="commtime">'+v["feCommCreatetime"]+'</span>';
									$('.Feedcomment').append(commList);
									})
								},
								error : function(err) {
									alert("댓글 에러")
									console.log(err);
								}
							})
						})
						
					 }); 
				</script>