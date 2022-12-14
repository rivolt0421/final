package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HostHomeController {

	// 호스트 홈
	@GetMapping(path = "/hosthome")
	public String hosthome() {
		return "host/hosthome";
	}
	
	
	// 실시간 예약 관리
	@GetMapping(path = "/realtimereserve")
	public String realtimereserve( ) {
		return  "host/realtimereserve";
	}
	
	
	
	// 공지사항 디테일
	@GetMapping(path = "/noticedetail")
	public String noticedetail() {
		return "host/hostnoticedetail";
	}
	
	// 서비스 약관
	@GetMapping(path = "/serviceterms")
	public String serviceterms() {
		return "host/hostserviceterms";
	}
	
	// 매출 내역
	@GetMapping(path = "/saleshistory")
	public String saleshistory() {
		return "host/saleshistory";
	}
}
