package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Faq;

@Mapper
public interface FaqMapper {

	List<Faq> getTop7();
	
	List<Faq> getUsed();
}
