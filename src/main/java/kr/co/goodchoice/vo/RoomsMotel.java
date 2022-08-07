package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("RoomsMotel")
public class RoomsMotel {

	private Rooms roomNo;
	private House houseNo;
	private Rooms roomName;
	private long shortPrice;
	private long longPrice;
	private int shortDeadline;
	private int shortMaxTime;
	private int longCheckinTime;
	private int longCheckoutTime;
	private Rooms status;
}
