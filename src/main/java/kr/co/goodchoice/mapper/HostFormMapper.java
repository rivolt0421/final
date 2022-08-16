package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.HostHouseStatusCategories;
import kr.co.goodchoice.vo.HostHouseTypeCategories;
import kr.co.goodchoice.vo.House;

@Mapper
public interface HostFormMapper {

	void insertHouse(House house);
	void insertHostHouseStatusCategories(HostHouseStatusCategories hostHouseStatusCategories);
	void insertHostHouseTypeCategories(HostHouseTypeCategories hostHouseTypeCategories);
}
