package kr.co.goodchoice.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class InquiryRegisterForm {

	private String category;
	private String type;
	private String tel;
	private String email;
	private String content;
}
