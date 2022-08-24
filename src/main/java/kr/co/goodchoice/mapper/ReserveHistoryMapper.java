package kr.co.goodchoice.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.dto.ReservationHistoryDto;
import kr.co.goodchoice.vo.Reservation;

@Mapper
public interface ReserveHistoryMapper {

	
	List<ReservationHistoryDto> getReservationByDate(Date date);
}
