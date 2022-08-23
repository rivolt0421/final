package kr.co.goodchoice.web.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.co.goodchoice.service.ProductService;
import kr.co.goodchoice.vo.Region;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService pService;

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
	
	@GetMapping("/detail")
	public String productDetail(Integer no, String date1, String date2) {
		System.out.println(no);
		System.out.println(date1);
		System.out.println(date2);
		return "product/detail";
	}
	
	@GetMapping("/regions")
	@ResponseBody
	public Map<String, List<Region>> AllRegions() {
		 return pService.getRegionMap();
	}
	
}
