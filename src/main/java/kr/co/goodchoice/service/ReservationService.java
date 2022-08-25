package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.ReservationMapper;
import kr.co.goodchoice.vo.Reservation;
import kr.co.goodchoice.vo.Rooms;

@Service
public class ReservationService {
	
	@Autowired
	private ReservationMapper reservationMapper;
	
	public Rooms getRoomInfoByNo(int roomNo) {
		return reservationMapper.getRoomByNo(roomNo);
	}

	public List<Reservation> getAllReservations() {
		return reservationMapper.getReservations();
	}
	
//	public List<Reservation> getAllReservations(String userNo) {
//		return reservationMapper.getReservationsByUserNo(userNo);
//	}
	
	public Reservation getReservationByUserNo(int userNo) {
		return reservationMapper.getReservationByUserNo(userNo);
	}
	

	//public Reservation getReservationDetail(int no) {
	//	return reservationMapper.getReservationByNo(no);
	//}
	
	
}
