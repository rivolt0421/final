package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.goodchoice.web.form.HostHouseRegisterForm1;

@Controller
public class HostHouseFormController {

	// 호스트 소개작성
	@GetMapping(path = "/form1")
	public String form1() {
		return "host/form1";
	}
	
	// form1에서 저장하기 버튼을 누르면 form2로 넘어간다.
	@PostMapping("/updateHouseInfo1")
	public String updateHouseInfo1(HostHouseRegisterForm1 hostHouseRegisterForm1) {
		
		System.out.println(hostHouseRegisterForm1);
		
		return "redirect:/host/updateHouseInfo2";
	}
	
	// 호스트 이용규칙 관리
	@GetMapping(path = "/form2")
	public String form2() {
		return "host/form2";
	}
	
	// 호스트 객실 관리
	@GetMapping(path = "/form3")
	public String form3() {
		return "host/form3";
	}
	
	// 호스트 리뷰관리
	@GetMapping(path = "/hostReview")
	public String hostReview() {
		return "host/hostReview";
	}
}
