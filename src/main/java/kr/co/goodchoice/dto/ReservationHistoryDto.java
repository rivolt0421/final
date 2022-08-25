package kr.co.goodchoice.dto;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.type.Alias;

import kr.co.goodchoice.vo.Reservation;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Alias("ReservationHistoryDto")
@Getter
@Setter
@ToString
public class ReservationHistoryDto {

	private Date day;
	List<Reservation> reservations;
}
