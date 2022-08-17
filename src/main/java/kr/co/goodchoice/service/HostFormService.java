package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import kr.co.goodchoice.mapper.HostFormMapper;
import kr.co.goodchoice.mapper.HouseFacilitiesMapper;
import kr.co.goodchoice.mapper.RegionMapper;
import kr.co.goodchoice.mapper.UserMapper;
import kr.co.goodchoice.vo.House;
import kr.co.goodchoice.vo.HouseEvent;
import kr.co.goodchoice.vo.HouseFacilities;
import kr.co.goodchoice.vo.Region;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.HostHouseRegisterForm1;

@Service
public class HostFormService {

	@Autowired
	HostFormMapper hostFormMapper;
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	RegionMapper regionMapper;
	
	@Autowired
	HouseFacilitiesMapper houseFacilitiesMapper;
	
	public void insertForm1(HostHouseRegisterForm1 form1, User loginUser) {
		House house = new House();
		house.setName(form1.getAname());
		house.setAddress(form1.getAddress1());
		house.setAddress(form1.getAddress2());
		house.setSurroundInfo(form1.getSurroundInfo());
		house.setIntroduce(form1.getIntroduce());
		house.setAppralsal(form1.getAppralsal());
		house.setAddPeopleInfo(form1.getAddCost());
		house.setParkInfo(form1.getParking());
		house.setBasicInfo(form1.getEtc());
		//편의시설 house_facility insert house_no, facility_no
		
		String address = form1.getAddress1();
		String[] addressArray = address.split(" ");
		
		Region region = regionMapper.getRegion(addressArray[0], addressArray[1]);	
		house.setRegionId(region.getId());
	
		List<MultipartFile> pictures = form1.getHousePictures();
		MultipartFile coverMultipartFile = pictures.get(0);
		house.setCoverImageName(coverMultipartFile.getOriginalFilename());
		
		hostFormMapper.insertHouse(house);
		
		List<String> facilities = form1.getFacilities();
		for (String facilityNo : facilities) {
			facilityMapper.insert(Integer.parseInt(facilityNo), house.getNo());
		}
		
		
		/*
		 * interface FacilityMapper {
		 * 		void insertFacility(@Param("no") int no, @Param("houseNo") int houseNo)
		 * }
		 * 
		 * <mapper namespace="kr.co.....FacilityMapper">
		 * 		<insert id="insertFacility">
		 * 			insert into facility (house_no, facilities_no)
		 * 			values (#{houseNo}, #{no})
		 * 		</insert>
		 * </mapper>
		 * 
		 */
		
		/*
		1. setHouseNo(house.getNo)를 가져오기 힘듬
		2. for문이 여러번 돌아야 함... 더 좋은 방법이 있는 것 같음!
		3. house 테이블에 facilitiesNo추가해서 문자열로 가져오기 ex(1, 2, 3, 4)
		4. select * from house where house_no = 1
		house.getfacilitiesNo = 1, 2, 3, 4
		위에를 select문을 이용하여 where in을 통해서 가져올 것
			ex)select facility_type from facilities where facility_no in (1,2,3,4)
		5. 
		* 해야할 일
		* 1. 위의 것을 팀원들한테 말하고 테이블을 바꾼다
		* 2. 등록하는 페이지 facilities 전체 리스트 가져와서 뿌리기
		*/
//		List<String> facilities = form1.getFacilities();
//		for (String facilityNo : facilities) {
//			HouseFacilities houseFacilities = new HouseFacilities();
//			houseFacilities.setHouseNo(house.getNo());
//			houseFacilities.setFacilitiesNo(facilityNo);
//			houseFacilitiesMapper.insertHouseFacilities(houseFacilities)
//		}
//		
//		
//		loginUser.setHost("Y");
//		userMapper.updateUser(loginUser);	
//
//		HouseEvent houseEvent = new HouseEvent();
//		houseEvent.setEventTitle(form1.getEventTitle());
//		houseEvent.setEventContent(form1.getEventContent());
		
	}
}
