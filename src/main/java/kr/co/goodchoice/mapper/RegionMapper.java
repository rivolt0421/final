package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.goodchoice.vo.Region;

@Mapper
public interface RegionMapper {

	Region getRegion(@Param("province") String province, @Param("name") String name); // 2개 이상일 때 @param을 사용
}
