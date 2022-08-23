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
@Alias("Payment")
public class Payment {

	private int no;
	private int reservationNo;
	private String status;
	private String method;
	private int reservationPrice;
	private int usedPoint;
	private int userCouponNo;
	private int couponDiscount;
	private int totalDiscountPrice;
	private int totalPaymentPrice;
	private int depositPoint;
	private Date createdDate;
	private Date updatedDate;
}
