$(function(){
    $('#chatting').hide();

    // 게시글과 채팅 탭 기능
    $('#feed_tab').click(function(){
        $('#myfeed2').show();
        $('#writefeed').show();
        $('#chatting').hide();
    })

    $('#chat_tab').click(function(){
        $('#myfeed2').hide();
        $('#writefeed').hide();
        $('.Feedpaging').hide();
        $('#chatting').show();
        
    })

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
	$(function(){
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
		}) // ajax 끝
	}) //#com_btn 끝
	
	// 좋아요 기능
	$('.heartlike').click(function(){
		const userId = $(this).prev().text();
		const feNo = $('input[name="feNo"]').val();
	
		$.ajax({
			url:"likeFeed",
			type:"post",
			data: {
				memberVO : userId,
				feedVO : feNo
			},
			success : function(data){
				alert('좋아요')
				location.href="MyFeed"
			},
			error : function(err) {
				alert('좋아요안됨')
				console.log(err);
			}
		})
		
	})


	
	
 });// 마이피드 기능 끝

})