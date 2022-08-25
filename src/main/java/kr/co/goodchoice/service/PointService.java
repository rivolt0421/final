package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.goodchoice.mapper.PointMapper;
import kr.co.goodchoice.mapper.UserMapper;
import kr.co.goodchoice.vo.Point;
import kr.co.goodchoice.vo.User;

@Service
@Transactional
public class PointService {

	@Autowired
	private PointMapper pointMapper;
	
	@Autowired
	private UserMapper userMapper;
	
	public List<Point> getMyPoints(int userNo) {
		return pointMapper.getPointsByUserNo(userNo);
	}
	
	public void insertPoint(User user, String reason, int amount) {
		Point ph = new Point();
		ph.setUser(user);
		ph.setReason(reason);
		ph.setAmount(amount);
		
		pointMapper.addPoint(ph);
		
		user = userMapper.getUserByNo(user.getNo());
		user.setPoint(user.getPoint() + amount);
		
		userMapper.updateUser(user);
		
	}
}
