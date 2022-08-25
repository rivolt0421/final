package kr.co.goodchoice.mapper;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Bank;
import kr.co.goodchoice.vo.HostBusinessInfo;
import kr.co.goodchoice.vo.HostHouseStatusCategory;
import kr.co.goodchoice.vo.HostHouseTypeCategory;
import kr.co.goodchoice.vo.User;

@Mapper
public interface HostMypageMapper {

	// user정보 가져오기
	void getHost (User user);
	// user정보 email로 가져오기
	User getUserByEmail(String email);
	
	// 은행 정보 입력하기
	void inserBank (Bank bank);
	
	// 사업자 등록정보 입력하기
	void inserBusniessInfo (HostBusinessInfo businessInfo);
	
	// 업태 정보 입력하기
	void inserStatusCtegory(HostHouseStatusCategory status);
	HostHouseStatusCategory getHostHouseStatusCategoryById(String id);
	
	// 업종 정보 입력하기
	void inserTypeCtegory(HostHouseTypeCategory type);
	HostHouseTypeCategory getHostHouseTypeCategoryById(String id);
}
