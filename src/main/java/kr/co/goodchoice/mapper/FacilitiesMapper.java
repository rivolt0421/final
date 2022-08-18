package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.co.goodchoice.vo.Facilities;
import kr.co.goodchoice.vo.HouseFacilities;

@Mapper
public interface FacilitiesMapper {

	// 편의시설 등록
	void insertFacilities(@Param("facilitiesNo") int facilitiesNo, @Param("facilitiesType") String facilitiesType);
	void insertHouseFacilities(@Param("facilitiesNo") int facilitiesNo, @Param("houseNo") int houseNo);
}
