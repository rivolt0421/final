package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostHouseFormController {

	@GetMapping(path = "/form1")
	public String form1() {
		return "host/form1";
	}
}
