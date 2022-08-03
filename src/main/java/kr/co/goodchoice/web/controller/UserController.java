package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

	@GetMapping(path ="/myinfo")
	public String myinfo() {

		return "user/myinfo";
	}
	
	@GetMapping(path ="/point")
	public String point() {
		
		return "user/point";
	}
	
	@GetMapping(path ="/couponbox")
	public String coupon() {
		
		return "user/couponbox";
	}
	
	@GetMapping(path ="/reservations")
	public String reservation() {
		
		return "user/reservation";
	}
	
}
