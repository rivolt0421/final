package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.OftenCategoryMapper;
import kr.co.goodchoice.mapper.OftenMapper;
import kr.co.goodchoice.vo.Often;
import kr.co.goodchoice.vo.OftenCategory;

@Service
public class OftenService {

	@Autowired
	private OftenMapper oftenMapper;
	@Autowired
	private OftenCategoryMapper oftenCategoryMapper;
	
	public List<OftenCategory> getAllCategories() {
		return oftenCategoryMapper.getAllCategories();
	}
	
	public List<Often> getAllOftens() {
		return oftenMapper.getOftens();
	}
	
	public List<Often> getOftensByCategoryId(String categoryId) {
		return oftenMapper.getOftensByCategoryId(categoryId);
	}
}
