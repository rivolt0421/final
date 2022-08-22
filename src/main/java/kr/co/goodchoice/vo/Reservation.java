package kr.co.goodchoice.vo;

import java.sql.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Alias("Reservation")
@Data
public class Reservation {

	private int no;
	private int userNo;
	private int houserNo;
	private int roomNo;
	private int motelRoomNo;
	private int motelReservationType;
	private Date checkInDate;
	private Date checkOutDate;
	private int price;
	private char cancelled;
	private String cancelReason;
	private double commission;
	
}
