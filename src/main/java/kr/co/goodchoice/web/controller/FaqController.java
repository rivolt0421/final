package kr.co.goodchoice.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodchoice.service.FaqService;
import kr.co.goodchoice.vo.Faq;

@Controller
@RequestMapping("/more")
public class FaqController {

	@Autowired
	FaqService faqService;
	
	@GetMapping("/faq")
	public String top7(Model model) {
		List<Faq> top7 = faqService.getTop7();
		model.addAttribute("top7", top7);
		
		return "more/faq";
	}
	
	@GetMapping(path ="/faq/1")
	public String faq1(Model model) {
		List<Faq> top7 = faqService.getTop7();
		model.addAttribute("top7", top7);
		
		return "more/faq/1";
	}
	
	@GetMapping(path ="/faq/2")
	public String faq2(Model model) {
		List<Faq> used = faqService.getUsed();
		model.addAttribute("used", used);
		
		return "more/faq/2";
	}
	
}
