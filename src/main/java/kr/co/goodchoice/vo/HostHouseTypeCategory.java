package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("HostHouseTypeCategory")
public class HostHouseTypeCategory {

	private String id;
	private String name;
}
