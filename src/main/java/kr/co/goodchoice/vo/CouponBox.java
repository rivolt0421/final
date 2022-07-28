package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Alias("CouponBox")
public class CouponBox {

	private int no;
	private int userNo;
	private int couponNo;
	private String used;
	private Date createdDate;
	private Date updatedDate;
}
