package kr.co.goodchoice.service;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.dto.ReservationHistoryDto;
import kr.co.goodchoice.mapper.ReserveHistoryMapper;
import kr.co.goodchoice.vo.Reservation;

@Service
public class ReservationHistoryService {

	
	@Autowired
	private ReserveHistoryMapper reserveHistoryMapper;
	
	
	public List<ReservationHistoryDto> getReservationByDate(Date date) {
		return reserveHistoryMapper.getReservationByDate(date);
	}
}
