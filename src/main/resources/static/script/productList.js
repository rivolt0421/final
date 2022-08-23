
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
    
    $('.date_wrap').dateRangePicker({
		autoClose: true,
		format: 'M.DD',
		separator: ' ~ ',
		language: 'ko',
		startOfWeek: 'sunday',// or monday
		getValue: function()
		{
			return $('#datepicker').text();
		},
		setValue: function(s)
		{
			if(!$('#datepicker').attr('readonly') && !$('#datepicker').is(':disabled') && s != $('#datepicker').text())
			{
				$('#datepicker').text(s);
			}
		},
		startDate: moment().format('M.DD'),
		endDate: false,
		time: {
			enabled: false
		},
		minDays: 0,
		maxDays: 7,
		showShortcuts: false,
		shortcuts:
		{
			//'prev-days': [1,3,5,7],
			//'next-days': [3,5,7],
			//'prev' : ['week','month','year'],
			//'next' : ['week','month','year']
		},
		customShortcuts : [],
		inline:false,
		container:'body',
		alwaysOpen:false,
		singleDate:false,
		lookBehind: false,
		batchMode: false,
		duration: 200,
		stickyMonths: false,
		dayDivAttrs: [],
		dayTdAttrs: [],
		applyBtnClass: '',
		singleMonth: 'true',
		hoveringTooltip: function(days, startTime, hoveringTime)
		{
			return days > 1 ? days + ' ' + '일' : '';
		},
		showTopbar: true,
		swapTime: false,
		selectForward: false,
		selectBackward: false,
		showWeekNumbers: false,
		getWeekNumber: function(date) //date will be the first day of a week
		{
			return moment(date).format('w');
		},
		monthSelect: false,
		yearSelect: false,
		
	}).bind('datepicker-change',function(event,obj)
	{
		/* This event will be triggered when second date is selected */
		// obj will be something like this:
		// {
		// 		date1: (Date object of the earlier date),
		// 		date2: (Date object of the later date),
		//	 	value: "2013-06-05 to 2013-06-07"
		// }
		let dDate1 = obj['date1'];
		let dDate2 = obj['date2'];
		let date1 = moment(dDate1.getFullYear() + '-' + (dDate1.getMonth() + 1) + '-' + dDate1.getDate(), 'YYYY-M-DD');
		let date2 = moment(dDate2.getFullYear() + '-' + (dDate2.getMonth() + 1) + '-' + dDate2.getDate(), 'YYYY-M-DD');
		let days = date2.diff(date1, 'days');
		
		$('#date_days').text(' · ' + days + '박');
		$('input[name="sel_date"]').val(date1.format('YYYY-MM-DD'));
		$('input[name="sel_date2"]').val(date2.format('YYYY-MM-DD'));
	});

	$('.cnt_people button').on('click', function () {
        var per = parseInt($('#persons').val());
        var def = parseInt($('.cnt_people').data('def'));
        var min = parseInt($('.cnt_people').data('min'));
        var max = parseInt($('.cnt_people').data('max'));

        if (per == 0)
            per = def;

        if ($(this).hasClass('dn')) {
            if (min < per) {
                per--;
            }
        }

        if ($(this).hasClass('up')) {
            if (max > per) {
                per++;
            }
        }

        if (max <= per) {
            $('.cnt_people button.up').addClass('disable');
        } else if (min < per) {
            $('.cnt_people button.up').removeClass('disable');
        }

        if (min >= per) {
            $('.cnt_people button.dn').addClass('disable');
        } else if (max > per) {
            $('.cnt_people button.dn').removeClass('disable');
        }

        $('.cnt_people span').html(per);
        $('#persons').val(per);
    });
    
});

function location_layer_open(e, m) {
    var win_w = $(window).width();
    if (win_w < 1024){
        e.preventDefault();
        if (m == 'mo') {
            $('.city_child').eq($('.city li .fix').parent().index()).show(); // 첫 노출 지역 다시 보임
            $('.area_pop').fadeIn(150);
            $('.fix_title').bind('touchmove',function(i){i.preventDefault()}); // 타이틀 터치 방지
        }
    }else{
        e.preventDefault();
        if (m == 'pc') {
            $('.city_child').eq($('.city li .fix').parent().index()).show(); // 첫 노출 지역 다시 보임
            $('.area_pop').fadeIn(150);
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