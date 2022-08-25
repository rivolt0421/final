package kr.co.goodchoice.web.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodchoice.dto.MotelList;
import kr.co.goodchoice.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired
	ProductService pService;
	
	@GetMapping("/home")
	public String motelInProvince(Model model, String province) {
		model.addAttribute("list", pService.getMotelsInProvince(province));
		model.addAttribute("regionMap", pService.getRegionMap());
		return "product/motelList";
	}

	@GetMapping("/home/{regionId}")
	public String motelInRegion(Model model, @PathVariable("regionId") Integer regionId) {
		List<MotelList> list = pService.getMotelsInRegion(regionId);
		model.addAttribute("provinceName", list.get(0).getAddress().split(" ")[0]);
		model.addAttribute("list", list);
		model.addAttribute("regionMap", pService.getRegionMap());
		return "product/motelList";
	}
	
	@GetMapping(value={"/search/2/{regionId}", "/search/2"})
	public String productSearch(@Nullable @PathVariable("regionId") Integer regionId) {
		if (regionId == null) {
			return "redirect:/product/hotelList/2012";
		}
		
		
		return "home";
	}
	
	@GetMapping("/detail")
	public String productDetail(Integer houseNo, String date1, String date2) {
		return "product/detail";
	}
	
}
