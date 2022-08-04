package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationListController {

	@GetMapping(path = "/reservationlist")
	public String reservationform() {
		return "reservation/reservationlist";
	}
}
