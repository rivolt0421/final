package kr.co.goodchoice.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.co.goodchoice.exception.OnlineApplicationException;
import kr.co.goodchoice.service.UserService;
import kr.co.goodchoice.utils.SessionUtils;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.UserRegisterForm;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@SessionAttributes("LOGIN_USER")
public class HomeController {

	@Autowired
	private UserService userService;

	
	@GetMapping(path ="/")
	public String home() {
		return "home";
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
			errors.rejectValue("email", null, e.getMessage());
			return "registerform";
		}
		
		return "redirect:/";
	}
	
	@GetMapping(path = "/login")
	public String loginform() {
		return "loginform";
	}
	
	@PostMapping(path = "/login")
	public String login(@RequestParam("email") String email, @RequestParam("password") String password, Model model) {
		
		try {
			User user = userService.login(email, password);
			model.addAttribute("LOGIN_USER", user);
			return "redirect:/";
			
		} catch (OnlineApplicationException e) {
			e.printStackTrace();
			return "redirect:/login?fail=invalid";
		}
		
}
	
//	@PostMapping(path = "/login")
//	public String login(@RequestParam("email") String email, @RequestParam("password") String password, HttpSession session) {
//		
//		try {
//			User user = userService.login(email, password);
//			session.setAttribute("LOGIN_USER", user);
//			
//		} catch (OnlineApplicationException e) {
//			return "redirect:/login?fail=invalid";
//		}		
//		
//		return "redirect:/";
//	}
	
	// 카카오 로그인 요청을 처리한다.
		@PostMapping("/kakao-login")
		public String loginWithKakao(String email, String name) {
			
			
			User savedUser = userService.loginWithKakao(email, name);
			
			SessionUtils.addAttribute("LOGIN_USER", savedUser);
			
			log.info("카카오 로그인 완료");
			
			return "redirect:/";
		}
	
	@GetMapping(path = "/logout")
	public String logout(SessionStatus sessionStatus) {
		sessionStatus.setComplete();
		
		return "redirect:/";
	}
	
	@GetMapping(path ="more/notice")
	public String notice() {
		
		return "more/notice";
	}
	
	@GetMapping(path ="more/faq")
	public String faq() {
		
		return "more/faq";
	}
	
	@GetMapping(path ="more/inquiry")
	public String inquiry() {
		
		return "more/inquiry";
	}

}
