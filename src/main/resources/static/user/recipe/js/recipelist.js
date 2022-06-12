let pageBtn = $('.apge-item');

pageBtn.find('a').click(() => {
	pageBtn.removeClass("active");
    $(this).parent().addClass("active");
})

$('.product').slice(0, 8).show();

if($('.product').length > 8) {
	$('#morebtn3').show();
	//더보기 버튼 클릭했을 때
	$('#morebtn3').click(function() {
		$('.product.col-lg-3.col-md-4.col-sm-6.col-12:hidden').slice(0, 4).show();
		if ($('.product.col-lg-3.col-md-4.col-sm-6.col-12:hidden').length == 0) {
			$('#morebtn3').css('display', 'none');
		}
	}); // 버튼 클릭 끝

}//1. if문끝
else {
	$('#morebtn3').css('display', 'none');
}//else 끝