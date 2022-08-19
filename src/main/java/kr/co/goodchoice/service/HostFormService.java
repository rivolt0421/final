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
		house.setName(form1.getAname());
		house.setAddress(form1.getAddress1());
		house.setAddress(form1.getAddress2());
		house.setSurroundInfo(form1.getSurroundInfo());
		house.setIntroduce(form1.getIntroduce());
		house.setAppralsal(form1.getAppralsal());
		house.setAddPeopleInfo(form1.getAddCost());
		house.setParkInfo(form1.getParking());
		house.setBasicInfo(form1.getEtc());
		
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
		
	}
}
