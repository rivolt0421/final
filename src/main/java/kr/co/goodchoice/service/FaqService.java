package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.FaqMapper;
import kr.co.goodchoice.vo.Faq;

@Service
public class FaqService {
	
	@Autowired
	private FaqMapper faqmapper;
	
	public List<Faq> getTop7() {
		return faqmapper.getTop7();
	}
	
	public List<Faq> getUsed() {
		return faqmapper.getUsed();
	}
}
