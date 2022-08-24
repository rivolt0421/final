package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Inquiry")
public class Inquiry {

	private int no;
	private User user;
	private String category;
	private String type;
	private String tel;
	private String email;
	private String content;
	private Date createdDate;
}
