package kr.co.goodchoice.mapper;

import kr.co.goodchoice.vo.Bank;
import kr.co.goodchoice.vo.HostHouseStatusCategories;
import kr.co.goodchoice.vo.HostHouseTypeCategories;
import kr.co.goodchoice.vo.User;

public interface HostMypageMapper {

	// user정보 가져오기
	void getHost (User user);
	// user정보 email로 가져오기
	User getUserByEmail(String email);
	
	// 은행 정보 입력하기
	void inserBank (Bank bank);
	
	// 업태 정보 입력하기
	void inserStatusCtegories(HostHouseStatusCategories status);
	
	// 업종 정보 입력하기
	void inserTypeCtegories(HostHouseTypeCategories type);
}
