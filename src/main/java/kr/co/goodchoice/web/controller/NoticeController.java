package kr.co.goodchoice.web.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodchoice.service.NoticeService;
import kr.co.goodchoice.vo.Notice;

@Controller
public class NoticeController {

	private NoticeService noticeService;
	
	public String notices() {
		
		List<Notice> notices = noticeService.getAllNotices();
		
		return "host/hostnoticelist";
	}
	
	
}
