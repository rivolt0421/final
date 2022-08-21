package kr.co.goodchoice.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.goodchoice.annotation.LoginUser;
import kr.co.goodchoice.service.HostFormService;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.HostHouseRegisterForm1;
import kr.co.goodchoice.web.form.HostHouseRegisterForm2;
import kr.co.goodchoice.web.form.HostHouseRegisterForm3;

@Controller
public class HostHouseFormController {
	
	@Autowired
	HostFormService hostFormService;

	// 호스트 소개작성
	@GetMapping(path = "/form1")
	public String form1(Model model) {
		//hostFormService.select * from facilities
		return "host/form1";
	}
	
	// form1에서 저장하기 버튼을 누르면 form1로 남아있는다.
	@PostMapping("/updateHouseInfo1")
	public String updateHouseInfo1(@LoginUser User loginUser,
			HostHouseRegisterForm1 hostHouseRegisterForm1, 
			RedirectAttributes redirectAttributes) {
		
		redirectAttributes.addFlashAttribute("f", hostHouseRegisterForm1);
		
		System.out.println(hostHouseRegisterForm1);
		
		hostFormService.insertForm1(hostHouseRegisterForm1, loginUser);
		
		return "redirect:/form1";
	}
	
	// 호스트 이용규칙 관리
	@GetMapping(path = "/form2")
	public String form2(Model model) {
		return "host/form2";
	}
	
	// form2에서 저장하기 버튼을 누르면 form2로 남아있는다.
	@PostMapping("/updateHouseInfo2")
	public String updateHouseInfo2(HostHouseRegisterForm2 hostHouseRegisterForm2, RedirectAttributes redirectAttributes) {
		
		System.out.println(hostHouseRegisterForm2);
		redirectAttributes.addFlashAttribute("hostHouseRegisterForm2", hostHouseRegisterForm2);
		
		return "redirect:host/form2";
	}
	
	// 호스트 객실 관리
	@GetMapping(path = "/form3")
	public String form3(Model model) {
		return "host/form3";
	}
	
	@PostMapping("/updateHouseInfo3")
	public String updateHouseInfo3(HostHouseRegisterForm3 hostHouseRegisterForm3, RedirectAttributes redirectAttributes) {
		
		System.out.println(hostHouseRegisterForm3);
		redirectAttributes.addFlashAttribute("hostHouseRegisterForm3", hostHouseRegisterForm3);
		
		return "redirect:host/form3";
	}
	
	// 호스트 리뷰관리
	@GetMapping(path = "/hostReview")
	public String hostReview() {
		return "host/hostReview";
	}
}
