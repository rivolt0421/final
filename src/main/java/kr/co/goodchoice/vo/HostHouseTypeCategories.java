package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("HostHouseTypeCategories")
public class HostHouseTypeCategories {

	private String typeId;
	private String typeName;
}
