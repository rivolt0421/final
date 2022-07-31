package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostHomeController {

	@GetMapping(path = "/hosthome")
	public String hosthome() {
		return "host/hosthome";
	}
}
