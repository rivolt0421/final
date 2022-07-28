package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Coupon")
public class Coupon {

	private int no;
	private String name;
	private String content;
	private int discount;
	private Date endDate;
}
