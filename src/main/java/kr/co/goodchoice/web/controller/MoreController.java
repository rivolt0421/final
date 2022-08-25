package kr.co.goodchoice.web.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.goodchoice.annotation.LoginUser;
import kr.co.goodchoice.service.MoreService;
import kr.co.goodchoice.vo.Inquiry;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.InquiryRegisterForm;

@Controller
@RequestMapping("/more")
@SessionAttributes({"inquiryRegsiterForm"})
public class MoreController {

	@Autowired
	private MoreService moreService;
	
	@GetMapping(path ="/inquiry")
	public String inquiry(@LoginUser User loginUser, Model model) {
		List<Inquiry> inquiries = moreService.getMyInquiries(loginUser.getNo());
		model.addAttribute("inquiries", inquiries);
		
		return "more/inquiry";
	}
	
	@PostMapping(path ="/inquiry")
	public String insertInquiry(@LoginUser User loUser, @ModelAttribute("inquiryRegisterForm") InquiryRegisterForm inquiryRegisterForm,
			SessionStatus sessionStatus) throws Exception {
		
		moreService.addInquiry(loUser, inquiryRegisterForm);

		sessionStatus.setComplete();
		
		return "redirect:/more/inquiry";
	}
	
	@GetMapping(path ="/faq")
	public String faq() {
		
		return "more/faq";
	}
	
}
