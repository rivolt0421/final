package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.ToString;
import lombok.Setter;

@Getter
@Setter
@ToString
@Alias("HostHouseStatusCategory")
public class HostHouseStatusCategory {

	private String id;
	private String name;
}
