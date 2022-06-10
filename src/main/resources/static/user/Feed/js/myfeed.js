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
			
			$('.reCommentInput'+i).toggle('slow');	
		});
	}

	



})