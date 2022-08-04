package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationFormController {

	@GetMapping(path = "/reservationform")
	public String reservationform() {
		return "reservation/reservationform";
	}
}
