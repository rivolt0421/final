package kr.co.goodchoice.dto;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@ToString
@Alias("MotelList")
public class MotelList {
	private int no;
	private String houseName;
	private Float score;
	private Integer reviewCount;
	private String address;
	private Integer shortPrice;
	private Integer longPrice;
	private String image;
}
