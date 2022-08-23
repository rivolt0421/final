package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.ReservationMapper;
import kr.co.goodchoice.vo.Reservation;

@Service
public class ReservationService {

private ReservationMapper reservationMapper;
	

	public List<Reservation> getAllReservations() {
		return reservationMapper.getReservations();
	}
	
	public Reservation getReservationByUserNo(int userNo) {
		return reservationMapper.getReservationByUserNo(userNo);
	}
}
