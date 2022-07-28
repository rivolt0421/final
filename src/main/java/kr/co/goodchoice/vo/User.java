package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@Alias("User")
public class User {

	private int no;
	private String name;
	private String email;
	private String password;
	private String tel;
	private String nickname;
	private int point;
	private Date createdDate;
	private Date updatedDate;
	private String disabled;
	private String host;
	
}
