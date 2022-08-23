package kr.co.goodchoice.service;


import org.springframework.beans.BeanUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.exception.OnlineApplicationException;
import kr.co.goodchoice.mapper.PointMapper;
import kr.co.goodchoice.mapper.UserMapper;
import kr.co.goodchoice.vo.Point;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.UserRegisterForm;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class UserService {

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private PointMapper pointMapper;
	
	/**
	 * 카카오 로그인으로 획득한 사용자정보로 로그인처리를 수행한다.<p>
	 * 카카오 로그인은 회원가입 절차없이 카카오 로그인 API로 획득한 정보를 데이터베이스에 저장한다.<p>
	 * 카카오 로그인으로 우리 서비스를 한 번이라도 사용한 사용자는 사용자 정보가 데이터베이스에 이미 저장되어 있다.
	 * @param user 카카오 로그인으로 획득한 사용자 정보
	 * @return 사용자 정보
	 */
	public User loginWithKakao(String email, String name) {
		User user = userMapper.getUserByEmail(email);
		log.info("카카오 로그인 아이디로 조회한 유저 정보: " + user);
		
		if (user == null) {	
			user = new User();
			user.setEmail(email);
			user.setName(name);
			userMapper.insertUser(user);
			log.info("카카오 로그인 신규 사용자 정보 등록 완료: " + user.getEmail() + ", " + user.getName());
		}
		return user;
	}
	
	public User getUserInfo(int userNo) {
		return userMapper.getUserByNo(userNo);
	}
	
	public void addNewUser(UserRegisterForm userRegisterForm) throws Exception {
		
		User user = userMapper.getUserByEmail(userRegisterForm.getEmail());
		if (user != null) {
			throw new OnlineApplicationException("이미 사용중인 이메일입니다.");
		}		
		
		user = new User();
		BeanUtils.copyProperties(userRegisterForm, user);
		
		
		userMapper.insertUser(user);	
		
		Point ph = new Point();
		ph.setUser(user);
		ph.setReason("적립");
		ph.setAmount(1000);
		
		pointMapper.addPoint(ph);
		
	}

	public User login(String email, String password) {
		User user = userMapper.getUserByEmail(email);
		if (user == null) {
			throw new OnlineApplicationException("아이디 혹은 비밀번호가 올바르지 않습니다.");
		}
		if (!user.getPassword().trim().equals(password)) {
			throw new OnlineApplicationException("아이디 혹은 비밀번호가 올바르지 않습니다.");			
		}
		return user;
	}
	
	public void updateUser(User user) {
		User originalUser = userMapper.getUserByNo(user.getNo());
		originalUser.setNickname(user.getNickname());
		originalUser.setName(user.getName());
		
		userMapper.updateUser(originalUser);
	}
	
}

