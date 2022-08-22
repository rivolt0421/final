package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.HostHouseStatusCategories;
import kr.co.goodchoice.vo.HostHouseTypeCategories;
import kr.co.goodchoice.vo.House;
import kr.co.goodchoice.vo.HouseEvent;
import kr.co.goodchoice.vo.HouseImage;

@Mapper
public interface HostFormMapper {

	// form1(숙소) 등록
	void insertHouse(House house);
	void insertHostHouseStatusCategories(HostHouseStatusCategories hostHouseStatusCategories);
	void insertHostHouseTypeCategories(HostHouseTypeCategories hostHouseTypeCategories);
	
	// form1(숙소) 숙소 이미지 파일첨부 등록
	void insertHouseImage(HouseImage image);
	
	// form1(숙소) 이벤트 등록
	void insertHouseEvent(HouseEvent event);
	
	
}
