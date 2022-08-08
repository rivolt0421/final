package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("HouseEvent")
public class HouseEvent {

	private int eventNo;
	private House no;
	private String eventTitle;
	private String eventContent;
	private Date eventBeginDate;
	private Date eventEndDate;
	private Date eventCreatedDate;
}
