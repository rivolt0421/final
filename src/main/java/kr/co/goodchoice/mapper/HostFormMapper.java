package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.HostHouseStatusCategories;
import kr.co.goodchoice.vo.HostHouseTypeCategories;
import kr.co.goodchoice.vo.House;

@Mapper
public interface HostFormMapper {

	// form1(숙소) 등록
	void insertHouse(House house);
	void insertHostHouseStatusCategories(HostHouseStatusCategories hostHouseStatusCategories);
	void insertHostHouseTypeCategories(HostHouseTypeCategories hostHouseTypeCategories);
	
	// form1(숙소)의 편의시설 등록
	void insertFacilities(@Param("no") int no, @Param("facilities") String facilities);
	void insertHouseFacilities(@Param("no") int no, @Param("houseNo") int houseNo);
}
