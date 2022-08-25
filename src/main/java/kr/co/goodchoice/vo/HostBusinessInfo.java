package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("HostBusinessInfo")
public class HostBusinessInfo {
	
	private int houseNo;
	private int userNo;
	private HostHouseStatusCategory statusCategory;
	private HostHouseTypeCategory typeCategory;
	private String hostHouseName;
	private String hostHouseUserName;
	private int hostHouseRegisterNumber;
	private Date hostHouseCreatedDate;
	private String hostHousetel;
	
}
