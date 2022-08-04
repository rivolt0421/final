package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Notice")
public class Notice {

	private int no;
	private String title;
	private String content;
	private Date createdDate;
	private Date updatedDate;
}
