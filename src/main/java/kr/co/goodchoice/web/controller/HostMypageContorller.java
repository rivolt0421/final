package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodchoice.web.form.HostUpdateForm;

@Controller
public class HostMypageContorller {

	
	
	// 호스트 마이페이지
	@GetMapping(path = "/mypage")
	public String mypage() {
		return "host/mypage";
	}

	@PostMapping("/updateMyInfo")
	public String updateMyInfo(HostUpdateForm hostUpdateForm) {
		
		System.out.println(hostUpdateForm);
		
		return "redirect:/host/mypage";
	}
}
