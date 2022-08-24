package kr.co.goodchoice.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter @Setter @AllArgsConstructor @ToString
public class TableCell<T> {

	private Date date;	// 날짜
	private T item;	// 데이터	// item에 ReservationHistoryDao ( Date day , List<Reservation>  reservations )
}
