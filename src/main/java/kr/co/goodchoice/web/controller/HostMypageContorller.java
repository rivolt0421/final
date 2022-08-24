package kr.co.goodchoice.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import kr.co.goodchoice.annotation.LoginUser;
import kr.co.goodchoice.service.HostMypageService;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.HostMypageUpdateForm;

@Controller
public class HostMypageContorller {
	
	// 호스트 마이페이지
	@GetMapping(path = "/mypage")
	public String mypage() {
		return "host/mypage";
	}

	// mypage에서 저장하기 버튼을 누르면 mypage로 남아있기
	@PostMapping("/updateMyInfo")
	public String updateMyInfo(@LoginUser User loginUser,
			HostMypageUpdateForm hostMypageUpdateForm,
			RedirectAttributes redirectAttributes) {
		
		redirectAttributes.addFlashAttribute("h", hostMypageUpdateForm);
		
		System.out.println(hostMypageUpdateForm);
		
		return "redirect:/mypage";
	}
}
