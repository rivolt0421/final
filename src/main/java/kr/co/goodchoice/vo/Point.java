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
@Alias("Point")
public class Point {

	private int no;
	private User user;
	private Payment payment;
	private String reason;
	private int amount;
	private Date createdDate;
	
}
