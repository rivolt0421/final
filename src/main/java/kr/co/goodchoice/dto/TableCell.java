package kr.co.goodchoice.dto;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter @AllArgsConstructor
public class TableCell<T> {

	private Date date;	// 날짜
	private T items;	// 데이터
}
