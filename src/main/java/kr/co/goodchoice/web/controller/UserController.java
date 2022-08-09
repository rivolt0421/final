package kr.co.goodchoice.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.goodchoice.annotation.LoginUser;
import kr.co.goodchoice.service.UserService;
import kr.co.goodchoice.vo.User;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@GetMapping(path ="/myinfo")
	public String myinfo(@LoginUser User loginUser, Model model) {
		User user = userService.getUserInfo(loginUser.getNo());
		model.addAttribute("user", user);
		
		return "user/myinfo";
	}
	
	@GetMapping(path ="/point")
	public String point() {
		
		return "user/point";
	}
	
	@GetMapping(path ="/couponbox")
	public String coupon() {
		
		return "user/couponbox";
	}
	
	@GetMapping(path ="/reservation")
	public String reservation() {
		
		return "user/reservation";
	}
	
}
