package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReservationDetailController2 {

	@GetMapping(path = "/reservationdetail2")
	public String reservationdetail() {
		return "reservation/reservationdetail2";
	}
}
