package kr.co.goodchoice.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodchoice.service.OftenService;

@Controller
public class HostOftenController {

	@Autowired
	private OftenService oftenService;
	
	@GetMapping
	public String home(@RequestParam(name="cat", required = false) String categoryId, Model model) {
		model.addAttribute("categories", oftenService.getAllCategories());
		model.addAttribute("oftens", oftenService.getOftensByCategoryId(categoryId));
		 
		return "host/hostquestion";
	}
}
