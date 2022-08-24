package kr.co.goodchoice.service;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.multipart.MultipartFile;

import kr.co.goodchoice.mapper.HostFormMapper;
import kr.co.goodchoice.mapper.FacilitiesMapper;
import kr.co.goodchoice.mapper.RegionMapper;
import kr.co.goodchoice.mapper.UserMapper;
import kr.co.goodchoice.vo.House;
import kr.co.goodchoice.vo.HouseEvent;
import kr.co.goodchoice.vo.HouseFacilities;
import kr.co.goodchoice.vo.HouseImage;
import kr.co.goodchoice.vo.Region;
import kr.co.goodchoice.vo.User;
import kr.co.goodchoice.web.form.HostHouseRegisterForm1;

@Service
public class HostFormService {
	@Value("${house.image.save-directory}")
	String saveDirectory;
	
	@Autowired
	HostFormMapper hostFormMapper;
	
	@Autowired
	UserMapper userMapper;
	
	@Autowired
	RegionMapper regionMapper;
	
	@Autowired
	FacilitiesMapper facilitiesMapper;
	
	public void insertForm1(HostHouseRegisterForm1 form1, User loginUser)  {
		House house = new House();
		HouseEvent houseEvent = new HouseEvent();
		User user = new User();
		house.setName(form1.getAname());				// 숙소명
		house.setAddress(form1.getAddress1() + " " + form1.getAddress2());			// 주소(나머지 입력)
		house.setHostComment(form1.getComment());		// 주인장 소개글
		house.setFindWay(form1.getFindWay());			// 오시는 길
		house.setSurroundInfo(form1.getTrafficInfo());	// 주변정보
		house.setIntroduce(form1.getIntroduce());		// 이용규칙
		house.setAppralsal(form1.getAppralsal());		// 한줄평
		houseEvent.setEventTitle(form1.getEventTitle());// 이벤트 제목
		houseEvent.setEventContent(form1.getEventContent());// 이벤트 내용
		house.setAddPeopleInfo(form1.getAddCost());		// 현장 추가 요금
		house.setParkInfo(form1.getParking());			// 주차장 정보
		house.setEtc(form1.getEtc());					// 확인 및 기타사항
		
		String address = form1.getAddress1();
		String[] addressArray = address.split(" ");
		
		Region region = regionMapper.getRegion(addressArray[0], addressArray[1]);	
		house.setRegionId(region.getId());
	
		List<MultipartFile> pictures = form1.getHousePictures();
		MultipartFile coverMultipartFile = pictures.get(0);
		house.setCoverImageName(coverMultipartFile.getOriginalFilename());
		
		hostFormMapper.insertHouse(house);

		for (MultipartFile multipartFile : pictures) {
			if (!multipartFile.isEmpty()) {
				String filename = multipartFile.getOriginalFilename();
				
				try {
					InputStream in = multipartFile.getInputStream();
					FileOutputStream out = new FileOutputStream(new File(saveDirectory, filename));
					FileCopyUtils.copy(in, out);
					
					HouseImage image = new HouseImage();
					image.setHouseNo(house.getNo());
					image.setHouseImageName(filename);
					
					hostFormMapper.insertHouseImage(image);
					
				} catch (IOException e) {
					e.printStackTrace();
				}
				
			}
		}
		
		// 편의시설 체크박스 등록
		List<String> facilities = form1.getFacilities();
		for (String facilityNo : facilities) {
			facilitiesMapper.insertHouseFacilities(Integer.parseInt(facilityNo), house.getNo());
		}
		
//		// form1(숙소)등록 할 때 호스트이면 실명을 공개한다.
//		loginUser.setHost("Y");
//		userMapper.updateUser(loginUser);	

//		// 이벤트 등록
//		HouseEvent houseEvent = new HouseEvent();
//		houseEvent.setEventTitle(form1.getEventTitle());
//		houseEvent.setEventContent(form1.getEventContent());
		
		
		// user.setName(loginUser.getName());				// 업주 이름
		// house_business_info 테이블에 house_no, user_no, type_no, status_no 등 을 입력한다.
		
	}
}
