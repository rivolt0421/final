package kr.co.goodchoice.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodchoice.service.UserService;

@Controller
public class ReservationController {

	@Autowired
	private UserService userService;
	
	@GetMapping(path = "/reservationform")
	public String reservationform() {
		return "reservation/reservationform";
	}
	
	@GetMapping(path = "user/reservation")
	public String reservationlist() {
		return "reservation/reservationlist";
	}
	
	@GetMapping(path = "user/reservation/reservationdetail")
	public String reservationdetail() {
		return "reservation/reservationdetail";
	
	}
	
	@GetMapping(path = "user/reservation/canceldetail")
	public String canceldetail() {
		return "reservation/canceldetail";
	}
}
