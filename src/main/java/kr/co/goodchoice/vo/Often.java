package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("Often")
public class Often {
	private String no;
	private OftenCategory oftenCategory;
	private String title;
	private String content;
	private Date createdDate;
	private Date updatedDate;
}
