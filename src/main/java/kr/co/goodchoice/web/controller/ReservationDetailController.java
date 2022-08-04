package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationDetailController {

	@GetMapping(path = "/reservationdetail")
	public String reservationform() {
		return "reservation/reservationdetail";
	}
}
