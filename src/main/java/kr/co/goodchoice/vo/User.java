package kr.co.goodchoice.vo;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Alias("User")
public class User {

	@JsonIgnore
	private int no;
	@JsonIgnore
	private String name;
	@JsonIgnore
	private String email;
	@JsonIgnore
	private String password;
	@JsonIgnore
	private String tel;
	@JsonIgnore
	private String nickname;
	@JsonIgnore
	private int point;
	@JsonIgnore
	private Date createdDate;
	@JsonIgnore
	private Date updatedDate;
	@JsonIgnore
	private String disabled;
	@JsonIgnore
	private String host;
	
}
