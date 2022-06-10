let pageBtn = $('.apge-item');

pageBtn.find('a').click(() => {
	pageBtn.removeClass("active");
    $(this).parent().addClass("active");
})