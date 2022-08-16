package kr.co.goodchoice.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {

	@GetMapping("/home/{regionId}")
	public String productHome(@PathVariable("regionId") Integer regionId) {
		if(regionId == 1) {
			return "product/motelList";
		}
		return "home";
	}
}
