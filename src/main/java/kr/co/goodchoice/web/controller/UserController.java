package kr.co.goodchoice.web.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.goodchoice.annotation.LoginUser;
import kr.co.goodchoice.service.PointService;
import kr.co.goodchoice.service.UserService;
import kr.co.goodchoice.vo.Point;
import kr.co.goodchoice.vo.User;


@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@Autowired
	private PointService pointservice;
	
	@GetMapping(path ="/myinfo")
	public String myinfo(@LoginUser User loginUser, Model model) {
		User user = userService.getUserInfo(loginUser.getNo());
		
		model.addAttribute("user", user);
		
		return "user/myinfo";
	}
	
	
	@PostMapping(path = "/changeNickName")
	public String changeNickName(@RequestParam("nickName") String nickName, @LoginUser User loginUser) {
		loginUser.setNickname(nickName);
		userService.updateUser(loginUser);
		
		return "redirect:/user/myinfo";
	}
	
	@PostMapping(path = "/changeName")
	public String changeName(@RequestParam("name") String name, @LoginUser User loginUser) {
		loginUser.setName(name);
		userService.updateUser(loginUser);
		
		return "redirect:/user/myinfo";
	}

	@GetMapping(path ="/point")
	public String points(@LoginUser User loginUser, Model model) {
		List<Point> point = pointservice.getMyPoints(loginUser.getNo());
		model.addAttribute("point", point);
		
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
