package kr.co.goodchoice.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.MoreMapper;
import kr.co.goodchoice.vo.Inquiry;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.InquiryRegisterForm;

@Service
public class MoreService {
	
	@Autowired
	private MoreMapper moreMapper;
	
	
	public List<Inquiry> getMyInquiries(int userNo) {
		return moreMapper.getInquiriesByUserNo(userNo);
	}
	
	public void addInquiry(User loginUser, InquiryRegisterForm inquiryRegisterForm) throws Exception {
		
		Inquiry inquiry = new Inquiry();
		
		inquiry.setCategory(inquiryRegisterForm.getCategory());
		inquiry.setType(inquiryRegisterForm.getType());
		inquiry.setTel(inquiryRegisterForm.getTel());
		inquiry.setEmail(inquiryRegisterForm.getEmail());
		inquiry.setContent(inquiryRegisterForm.getContent());
		inquiry.setUser(loginUser);
		
		moreMapper.insertInquiry(inquiry);
	}

	
}
