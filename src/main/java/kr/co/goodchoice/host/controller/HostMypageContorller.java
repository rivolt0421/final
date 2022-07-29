package kr.co.goodchoice.host.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HostMypageContorller {

	@GetMapping(path = "/mypage")
	public String mypage() {
		return "host/mypage";
	}
}
