
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

      //피드 댓글 더보기 버튼
    $(function() {
         $('.mainComm').slice(0, 3).show();
         /*$('.reCommCntWriteBtn').slice(0, 3).show();

		
		
         if ($('.mainComm').length > 4) {
            $('#morebtn3').show();
            //더보기 버튼 클릭했을 때
            $('#morebtn3').click(function() {
               $('.mainComm:hidden').slice(0, 3).show();
               $('.reCommCntWriteBtn:hidden').slice(0, 3).show();

               if ($('.mainComm:hidden').length == 0) {
                  $('#morebtn3').css('display', 'none');
               }

            }); // 버튼 클릭 끝

         }//1. if문끝
         else {
            $('#morebtn3').css('display', 'none');
         }//else 끝
*/
      });
   
 

})