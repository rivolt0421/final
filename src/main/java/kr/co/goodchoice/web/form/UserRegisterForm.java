package kr.co.goodchoice.web.form;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Pattern;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class UserRegisterForm {
	
	@NotBlank(message = "이름을 입력해주세요.")
	@Pattern(regexp = "^[가-힣]{2,}$", message= "이름은 한글 2글자 이상만 허용됩니다.")
	private String name;
	
	@NotBlank(message = "이메일 주소를 입력해주세요.")
	@Email(message = "이메일 주소를 확인해주세요.")
	private String email;
	
	@NotBlank(message = "비밀번호를 입력해주세요.")
	@Pattern(regexp = "^(?=.*[A-Za-z])(?=.*\\d)(?=.*[~!@#$%^&*()+|=])[A-Za-z\\d~!@#$%^&*()+|=]{8,16}$",
	message = "영문,숫자,특수문자 중 2가지 이상을 조합해주세요.")
	private String password;
	
	@NotBlank(message = "전화번호를 입력해주세요.")
	@Pattern(regexp = "^\\d{2,3}-\\d{3,4}-\\d{4}$", message = "전화번호를 확인하세요.")
	private String tel;
	
	@NotBlank(message = "닉네임을 입력해주세요.")
	private String nickname;
}
