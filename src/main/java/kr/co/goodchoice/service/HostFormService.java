package kr.co.goodchoice.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.HostFormMapper;
import kr.co.goodchoice.vo.House;
import kr.co.goodchoice.web.form.HostHouseRegisterForm1;

@Service
public class HostFormService {

	@Autowired
	HostFormMapper hostFormMapper;
	
	public void HostHouseInsertForm1(HostHouseRegisterForm1 form1) {
		House house = new House();
		house.setName(form1.getAname());
		house.setName(form1.getAddress1());
		house.setName(form1.getAddress2());
		house.setName(form1.getHousePictures());
		house.setName(form1.getFacilities());
		house.setName(form1.getOpen());
		house.setName(form1.getHostName());
		house.setName(form1.getHostPicture());
		house.setName(form1.getComment());
		house.setName(form1.getFindWay());
		house.setName(form1.getTrafficInfo());
		house.setName(form1.getHouseDetail());
		house.setName(form1.getSummary());
		house.setName(form1.getEventTitle());
		house.setName(form1.getEventContent());
		house.setName(form1.getAddCost());
		house.setName(form1.getParking());
		house.setName(form1.getEtc());
		
		hostFormMapper.insertHouse(house);
	}
}
