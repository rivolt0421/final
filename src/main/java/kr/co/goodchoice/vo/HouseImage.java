package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("HouseImage")
public class HouseImage {

	private int ImageNo;
	private int houseNo;
	private Integer roomNo;
	private Integer motelRoomNo;
	private String houseImageName;
}
