package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.dto.MotelList;

@Mapper
public interface ProductMapper {

	List<MotelList> getMotelsByProvinceName(String name);
	List<MotelList> getMotelsByRegionId(int regionId);

	
}
