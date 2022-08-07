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
	
	private House houseNo;
	private User userNo;
	private HostHouseStatusCategories statusId;
	private HostHouseTypeCategories typeId;
	private String hostHouseName;
	private String hostHouseUserName;
	private int hostHouseRegisterNumber;
	private Date hostHouseCreatedDate;
	
}
