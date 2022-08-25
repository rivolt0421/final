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
	
	//userNo로 예약내역 리스트
	public List<Reservation> getReservationsByUserNo(int userNo) {
		return reservationMapper.getReservationsByUserNo(userNo);
	}
	
	//userNo로 취소내역 리스트
	public List<Reservation> getCancelReservationsByUserNo(int userNo) {
		return reservationMapper.getCancelReservationsByUserNo(userNo);
	}

	public Rooms getRoomInfoByNo(int roomNo) {
		return reservationMapper.getRoomByNo(roomNo);
	}
	
//	public List<Reservation> getAllReservations() {
//		return reservationMapper.getReservations();
//	}
	
//	//userNo로 예약내역 
//	public Reservation getReservationsByUserNo(int userNo) {
//		return reservationMapper.getReservationsByUserNo(userNo);
//	}
	
//	public List<Reservation> getAllReservations(String userNo) {
//		return reservationMapper.getReservationsByUserNo(userNo);
//	}
	
	
//	public Reservation getReservationDetail(int no) {
//		return reservationMapper.getReservationByNo(no);
//	}
	
}
