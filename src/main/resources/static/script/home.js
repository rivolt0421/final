function nav_change() {
	let position_y = $(window).scrollTop();
	if (position_y == 0) {
		$('nav').removeClass('scroll');
	} else {
		$('nav').addClass('scroll');
	}
}
nav_change();

$(window).scroll(function(){nav_change()});