package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Rooms")
public class Rooms {

	private int no;
	private House HouseNo;
	private String name;
	private String introduce;
	private int price;
	private String basicInfo;
	private String addInfo;
	private String bed;
	private String type;
	private String status;
}
