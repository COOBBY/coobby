
for(let i = 1; i<100; i++){
		$("#childComm"+i).click(() => {
		$("#childcomm"+i).css('display','block');
	})

$(".button.button-circle.button-small.mt-3").click(() => {
		$("#childcomm"+i).css('display','none');
	})
}



$("#scrapBtn").click(()=>{
	const scrapClass = $("#scrapicon").attr("class");
	const memId = $("#userId").val();
	const recipeNo = $("#recipeNo").val();
	if(scrapClass === 'bi bi-bookmark-star'){		
		$.ajax({
			url: 'scrapSave',
			type: 'post',
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			data : {
				memId : memId,
				reNo : recipeNo
			},
			success : function(){
				$("#scrapicon").toggleClass('bi bi-bookmark-star bi bi-bookmark-star-fill');
				alert('즐겨찾기에 추가 되었습니다.')
			},
			error : function(){
				alert('즐겨찾기 등록 실패했습니다.')
			}
		})
	}
	else{
		$.ajax({
			url : 'scrapDelete',
			type : 'post',
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			data : {
				memId : memId,
				reNo : recipeNo
			},
			success : function(){
				$("#scrapicon").toggleClass('bi bi-bookmark-star-fill bi bi-bookmark-star');
				alert('삭제 완료');
			},
			error : function(){
				alert('삭제실패');
			}
		})
	}
})

$("#likeBtn").click(()=>{
	const likeClass = $("#likeicon").attr("class");
	const memId = $("#userId").val();
	const recipeNo = $("#recipeNo").val();
	if(likeClass === 'bi bi-heart'){
		$.ajax({
			url : 'loveSave',
			type : 'post',
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			data : {
				memId : memId,
				reNo : recipeNo
			},
			success : function(){
				$("#likeicon").toggleClass('bi bi-heart bi-heart-fill');
				alert('좋아요 추가 되었습니다.');
			},
			error : function(){
				alert('좋아요 추가 실패했습니다.')
			}
		})
	}
	else{
		$.ajax({
			url : 'loveDelete',
			type : 'post',
			contentType : 'application/x-www-form-urlencoded;charset=utf-8',
			data : {
				memId : memId,
				reNo : recipeNo
			},
			success : function(){
				$("#likeicon").toggleClass('bi-heart-fill bi-heart bi');
				alert('좋아요 취소됐습니다.');
			},
			error : function(){
				alert('좋아요 취소 실패했습니다.')
			}
		})
	}
})

$("#submit-button").click(() => {
	const memId = $("#userId").val();
	const recipeNo = $("#recipeNo").val();
	const reContent = $("#reContent").val();

	$.ajax({
		url : 'saveComment',
		type : 'post',
		data : {
			MemberVO : memId,
			recipeVO : recipeNo,
			reContent : reContent
		},
		success : function(){
			$("#reContent").val("");
			location.reload();
			/*$(".commentlist.clearfix").empty();
			$.each(data, function(k, v){
				console.log(k, v)
				console.log(v["reContent"])
			})*/
		},
		error : function(error){
			console.log(error);
		}
	})

})
/*
for(let i = 1; i<100; i++){
	$("#delete"+i).click(() =>{
		alert('asd');
		parentNo = $("#reCommNo"+i).val();
		$.ajax({
			url : 'commDelete',
			type : 'post',
			data : {
				reCommNo = parentNo,
			},
			success : function(){
				location.reload();
			},
			error : function(error){
				console.log(error);
			}
		})
	})	
}
*/