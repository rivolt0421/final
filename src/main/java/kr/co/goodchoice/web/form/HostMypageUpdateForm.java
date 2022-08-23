package kr.co.goodchoice.web.form;

import java.util.List;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HostMypageUpdateForm {

	private String phone1;						
	private String phone2;						
	private String phone3;						
	private String tel1;
	private String tel2;
	private String tel3;
	private String bank;
	private String bankName;
	private String bankNumber;
	private List<String> businessConditions;
	private List<String> businessTypes;
	private String submit;
	
}
