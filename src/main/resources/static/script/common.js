function nav_change() {
	let position_y = $(window).scrollTop();
	if (position_y == 0) {
		$('nav').removeClass('scroll');
	} else {
		$('nav').addClass('scroll');
	}
}
nav_change();

function srch_open(){

	if ($('nav .srch_bar').css('display') == 'block') {
		if ($('#keyword').val().length > 0)
			window.location.href = "/product/result?keyword="+encodeURI($('#keyword').val());
		else
			alert('검색어가 없습니다. 검색어를 입력하세요.');

		return false;
	} else {
		$('nav .btn_srch').stop().animate({right:600},'150',function(){
			$('nav .srch_bar').fadeIn(150).focus();
			$('nav .btn_cancel').fadeIn(150);
		});
	}
}
function srch_close() {
	$('nav .srch_bar').hide();
	$('nav .btn_cancel').fadeOut(150);
	$('nav .btn_srch').stop().animate({right:150},'150');
	$('nav .srch_bar').val("");
}

$(function(){
	$(window).scroll(function(){
		nav_change()
	});
	
	$('.srch_open').click(function(){ // 검색 오픈
		srch_open();
	});
	
	$('nav .btn_cancel').click(function(){
		srch_close();
	});
	$('nav .srch_bar').blur(function(){
		srch_close();
	});
});