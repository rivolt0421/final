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
	
	// 호스트 공지사항
	@GetMapping(path = "/hostnotice")
	public String hostnotice() {
		return "host/hostnoticelist";
	}
	
	// 호스트 자주묻는 질문
	@GetMapping(path = "/hostquestion")
	public String hostquestion() {
		return "host/oftenquestionlist";
	}
	
	// 실시간 예약 관리
	@GetMapping(path = "/realtimereserve")
	public String realtimereserve( ) {
		return  "host/realtimereserve";
	}
	
	// 예약 내역
	@GetMapping(path = "/reserve")
	public String reserve() {
		return "host/reservehistory";
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
}
