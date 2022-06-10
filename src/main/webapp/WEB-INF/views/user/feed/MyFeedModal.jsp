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
									<h3 class="userId mb-4 fw-semibold">${sessionScope.user.memId }</h3>
								<!-- 유저가 이미 좋아요를 클릭하면 DB에 저장 저장되어있으면 하트가 채워짐 모달 껐다가 켜도 유지해야함 -->
								<c:if test="${likeCheck eq 0}" >
									<a type="button" id="heartlike" class="heartlike"><img src="/resources/img/heart-fill.png" alt="test"></a>				
								</c:if>
								<c:if test="${likeCheck eq 1}" >
									<a type="button" id="heartlike" class="heartlike"><img src="/resources/img/heart.png" alt="test"></a>				
								</c:if>
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
				<script src="/resources/user/Feed/js/myfeed.js"></script>
				<!-- <script src="http://code.jquery.com/jquery-latest.js"></script>-->
				