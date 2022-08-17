package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Often;

@Mapper
public interface OftenMapper {

	List<Often> getOftens();
	Often getOftenById(String id);
}
