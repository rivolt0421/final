package kr.co.goodchoice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.HostMypageMapper;
import kr.co.goodchoice.vo.Bank;
import kr.co.goodchoice.vo.HostBusinessInfo;
import kr.co.goodchoice.vo.HostHouseStatusCategory;
import kr.co.goodchoice.vo.HostHouseTypeCategory;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.HostMypageUpdateForm;

@Service
public class HostMypageService {

	@Autowired
	private HostMypageMapper mypageMapper;
	
	public void inserMypage(HostMypageUpdateForm mypage, User loginUser) {
		User user = new User();
		Bank bank = new Bank();
		HostBusinessInfo hostBusinessInfo = new HostBusinessInfo();
		HostHouseStatusCategory status = new HostHouseStatusCategory();
		HostHouseTypeCategory type = new HostHouseTypeCategory();
		
		
		
		
	}
}
