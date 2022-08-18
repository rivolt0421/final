
$(function () {
    var win_w = $(window).width();

    $('div.wrap header').addClass('recommend_header');

    /* 지역선택 노출 */
    $('.btn_area').bind('mouseenter',function(e){	 // 마우스 엔터
		var opacity = '<div class="bg_opacity_trans">&nbsp;</div>'
		$('body .bg_opacity_trans').remove();
		$('body').append(opacity);
		
		$('.bg_opacity_trans').click(function(){
			location_layer_close();
		});       
		
		location_layer_open(e, 'pc');
    });

	$(window).resize(function(){
		location_layer_close();
	});


  // PC
    $('.area_pop .city > li > a').mouseenter(function(){
        var index = $('.area_pop .city > li > a').index($(this));

        $('.city_child').hide();
        $('.city_child').eq(index).show();
        $('.city li .fix').removeClass('fix on');
        $(this).addClass('fix on');
    });

    $('.area_pop .city > li > a').click(function(e){
        if (!$('.area_pop .area_wrap').hasClass('area_etc')) {
            e.preventDefault();
        }
    });

    $('.area_pop').mouseleave(location_layer_close); // PC 지역선택 마우스 아웃
});

function location_layer_open(e, m) {
    var win_w = $(window).width();
    if (win_w < 1024){
        e.preventDefault();
        if (m == 'mo') {
            $('.city_child').eq($('.city li .fix').parent().index()).show(); // 첫 노출 지역 다시 보임
            $('.area_pop').fadeIn(150);
            iscroll_run_01(); // 지역 카테고리 1 iscroll
            iscroll_run_02(); // 지역 카테고리 2 iscroll
            $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
        }
    }else{
        e.preventDefault();
        if (m == 'pc') {
            $('.city_child').eq($('.city li .fix').parent().index()).show(); // 첫 노출 지역 다시 보임
            $('.area_pop').fadeIn(150);
            iscroll_run_01(); // 지역 카테고리 1 iscroll
            iscroll_run_02(); // 지역 카테고리 2 iscroll
            $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
        }
    }
}
function location_layer_close() {
	$('.bg_opacity_trans').hide();
    $('.sub_top .area .btn_area').removeClass('on');
    $('.area_pop').fadeOut(150);
    $('.city_child').eq($('.city li .fix').parent().index()).show(); // 첫 노출 지역 다시 보임
}