package kr.co.goodchoice.web.controller;

import org.springframework.lang.Nullable;
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
	
	@GetMapping(value={"/search/2/{regionId}", "/search/2"})
	public String productSearch(@Nullable @PathVariable("regionId") Integer regionId) {
		if (regionId == null || regionId == 2012) {
			return "product/hotelList";
		}
		return "home";
	}
}
