package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("HouseFacilities")
public class HouseFacilities {

	private House no;
	private String facilitiesNo;
}
