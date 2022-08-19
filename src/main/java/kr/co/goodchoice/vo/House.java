package kr.co.goodchoice.vo;

import org.apache.ibatis.type.Alias;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Alias("House")
public class House {

	private int no;					// 숙소 번호
	private String name;			// 숙소 이름
	private String introduce;		// 숙소 소개글(form1에선 '숙소이용규칙'으로 연결)
	private String appralsal;		// 한줄평
	private String address;			// 숙소 주소
	private double latitude;		// 숙소 위도
	private double longtitude;		// 숙소 경도
	private String surroundInfo;	// 숙소 주변 정보
	private String notice;			// 숙소 공지사항
	private String basicInfo;		// 숙소 확인사항
	private String addPeopleInfo;	// 인원추가정보(현장추가요금)
	private String parkInfo;		// 주차장 정보
	private String coverImageName;	// 숙소 커버 이미지
	private String motel;			// 모텔 여부
	private int regionId;			// 지역번호
	private String hostComment;		// 주인장 소개글
	private String findWay;			// 오시는 길
	private String etc;				// 확인 및 기타사항
}
