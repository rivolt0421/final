package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Inquiry;

@Mapper
public interface MoreMapper {

	void insertInquiry(Inquiry inquiry);
	
	List<Inquiry> getInquiriesByUserNo(int userNo);
	
}
