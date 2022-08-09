package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Often;

@Mapper
public interface OftenMapper {

	Often getOftenById(String id);
}
