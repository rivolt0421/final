package kr.co.goodchoice.web.form;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class HostHouseRegisterForm1 {

	private String aname;			// 숙소이름
	private String address1;		// 우편찾기 주소
	private String address2;		// 나머지 주소
	private List<MultipartFile> housePictures;	// 숙소 사진
	private List<Integer> facilities;		// 편의시설
	private String open;			// 업주 실명 및 사진 공개
	private String hostName;		// 업주 이름
	private MultipartFile hostPicture;		// 업주 사진
	private String comment;			// 주인장 소개글
	private String findWay;			// 찾아오는 길
	private String surroundInfo;	// 주변 정보
	private String introduce;		// 숙소이용규칙
	private String appralsal;		// 한줄평
	private String eventTitle;		// 이벤트 타이틀
	private String eventContent;	// 이벤트 내용
	private String addCost;			// 현장 추가 요금 안내
	private String parking;			// 주차장 정보
	private String etc;				// 기타 사항
}
