package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("House")
public class House {

	private int no;
	private String name;
	private String introduce;
	private String appralsal;
	private String address;
	private int latitude;
	private int logintude;
	private String surroundInfo;
	private String notice;
	private String basicInfo;
	private String addPeopleInfo;
	private String parkInfo;
	private String coverImageName;
	private String motel;
	private int regionId;
}
