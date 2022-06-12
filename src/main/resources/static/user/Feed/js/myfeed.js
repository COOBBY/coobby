
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

	// 게시글 유효성 검사 완료
	$('.savebtn').click(function(){
		if($("textarea[name='feTitle']").val() == ""){
			alert("제목을 입력해주세요")
			$('#write_content').focus();
			return false;
		} else if($("textarea[name='feContent']").val() == ""){
			alert("내용을 입력해주세요")
			$('#write_content').focus();
			return false;
		} else if ($('#uploadFile').val() == "") {
			alert("사진을 최소 1개 이상 선택해주세요.")
			return false;
		}
	})
	
	// 로그인 이후 게시글 글쓰기 가능
	$('#writefeed').click(function(){
		const userId = $('#insertfebtn').val();
		
		if(userId == 'notLogin'){
		alert("로그인 후 이용 가능한 서비스입니다.");
		location.href="/user/login/loginpage";
		return;
		} else {
			location.href="insertFeed";
		}
	})

 

})