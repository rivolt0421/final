package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationListController2 {

	@GetMapping(path = "/reservationlist2")
	public String reservationform() {
		return "reservation/reservationlist2";
	}
}
