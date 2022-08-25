package kr.co.goodchoice.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;

import org.apache.ibatis.type.Alias;

import lombok.Setter;
import lombok.ToString;

@NoArgsConstructor
@Getter
@Setter
@ToString
@Alias("FaqCategory")
public class FaqCategory {

	private String id;
	private String type;
}
