package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.goodchoice.vo.Facilities;
import kr.co.goodchoice.vo.HouseFacilities;

@Mapper
public interface FacilitiesMapper {

	void insertFacilities(@Param("no") int no, @Param("facilities") String facilities);
	void insertHouseFacilities(@Param("no") int no, @Param("houseNo") int houseNo);
}
