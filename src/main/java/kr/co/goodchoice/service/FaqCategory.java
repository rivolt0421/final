package kr.co.goodchoice.service;


import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("FaqCategory")
public class FaqCategory {

	private String id;
	private String type;
}
