package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostHouseFormController {

	// 호스트 소개작성
	@GetMapping(path = "/form1")
	public String form1() {
		return "host/form1";
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
