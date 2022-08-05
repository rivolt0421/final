package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostHouseFormController {

	@GetMapping(path = "/form1")
	public String form1() {
		return "host/form1";
	}
	
	@GetMapping(path = "/form2")
	public String form2() {
		return "host/form2";
	}
	
	@GetMapping(path = "/form3")
	public String form3() {
		return "host/form3";
	}
	
	@GetMapping(path = "/hostReview")
	public String hostReview() {
		return "host/hostReview";
	}
}
