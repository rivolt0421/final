package kr.co.goodchoice.mapper;

import kr.co.goodchoice.vo.HostHouseStatusCategories;
import kr.co.goodchoice.vo.HostHouseTypeCategories;
import kr.co.goodchoice.vo.House;

public interface HostFormMapper {

	void insertHouse(House house);
	void insertHostHouseStatusCategories(HostHouseStatusCategories hostHouseStatusCategories);
	void insertHostHouseTypeCategories(HostHouseTypeCategories hostHouseTypeCategories);
}
