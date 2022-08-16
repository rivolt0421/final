package kr.co.goodchoice.web.form;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HostHouseRegisterForm3 {

	private String roomName;		// 객실이름
	private String roomType;		// 객실유형
	private String roomPeople;		// 최대인원
	private String roomPictures;	// 객실사진
	private String roomDetail;		// 객실소개글
	private String fixtures;		// 편의시설안내
	private String sun;				
	private String mon;
	private String tue;
	private String wed;
	private String thur;
	private String fri;
	private String sat;
	private String holi;
	private String holiBefore;
	private String price;			// 가격
}
