package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Notice;

@Mapper
public interface NoticeMapper {

	// notice 리스트
	List<Notice> getNotices();
	// 공지 번호로 
	Notice getNoticeByNo(int noticeNo);
}
