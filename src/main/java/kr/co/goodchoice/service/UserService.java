package kr.co.goodchoice.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.exception.OnlineApplicationException;
import kr.co.goodchoice.mapper.UserMapper;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.UserRegisterForm;


@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	public void addNewUser(UserRegisterForm userRegisterForm) throws Exception {
		
		User user = userMapper.getUserByEmail(userRegisterForm.getEmail());
		if (user != null) {
			throw new OnlineApplicationException("이미 사용중인 이메일입니다.");
		}
		
		user = new User();
		BeanUtils.copyProperties(userRegisterForm, user);
		
		userMapper.insertUser(user);
	}
	
}
