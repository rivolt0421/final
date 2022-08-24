package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.HouseImage;
import kr.co.goodchoice.vo.Reservation;


@Mapper
public interface ReservationMapper {

	// reservation 리스트
	List<Reservation> getReservations();
	// reservationList userId로 
	Reservation getReservationByUserNo(int userNo);
	
	List<HouseImage> getHouseImageByHouseImageName(String houseImageName);
	

}
