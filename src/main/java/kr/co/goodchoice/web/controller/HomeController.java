package kr.co.goodchoice.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.goodchoice.exception.OnlineApplicationException;
import kr.co.goodchoice.service.UserService;
import kr.co.goodchoice.web.form.UserRegisterForm;

@Controller
public class HomeController {

	@Autowired
	private UserService userService;

	
	@GetMapping(path ="/")
	public String home() {
		return "home";
	}
	
	@GetMapping(path = "/login")
	public String loginform() {
		return "loginform";
	}
	
	@GetMapping(path ="/register")
	public String registerform(Model model) {
		UserRegisterForm userRegisterForm = new UserRegisterForm();
		
		model.addAttribute("userRegisterForm", userRegisterForm);
		
		return "registerform";
	}
	
	@PostMapping(path = "/register")
	public String register(@ModelAttribute("userRegisterForm") @Valid UserRegisterForm userRegisterForm, BindingResult errors) throws Exception {
		
		if (errors.hasErrors()) {
			return "registerform";
		}
		try {
			userService.addNewUser(userRegisterForm);
		} catch (OnlineApplicationException e) {
			errors.rejectValue("ema il", null, e.getMessage());
			return "registerform";
		}
		
		userService.addNewUser(userRegisterForm);
		
		return "redirect:/";
	}
	
	@GetMapping(path ="/myinfo")
	public String myinfo() {

		return "/user/myinfo";
	}
	
	@GetMapping(path ="/point")
	public String point() {
		
		return "/user/point";
	}
	
	@GetMapping(path ="/coupon")
	public String coupon() {
		
		return "/user/couponbox";
	}
	
	@GetMapping(path ="/reservations")
	public String reservation() {
		
		return "/user/reservation";
	}
	
}
