package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CancelDetailController {

	@GetMapping(path = "/canceldetail")
	public String canceldetail() {
		return "reservation/canceldetail";
	}
}
