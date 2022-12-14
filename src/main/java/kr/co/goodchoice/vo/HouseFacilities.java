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

	private int houseNo;		// 숙소 번호
	private int facilitiesNo;	// 편의시설 번호
}
