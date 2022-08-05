package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.User;

@Mapper
public interface UserMapper {

	User getUserByEmail(String email);
	User getUserByNo(int no);
	void insertUser(User user);
	void updateUser(User user);
}
