package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
@Alias("HostHouseStatusCategories")
public class HostHouseStatusCategories {

	private String statusId;
	private String statusName;
}
