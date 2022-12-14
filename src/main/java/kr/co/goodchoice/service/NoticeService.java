package kr.co.goodchoice.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodchoice.mapper.NoticeMapper;
import kr.co.goodchoice.vo.Notice;

@Service
public class NoticeService {

	@Autowired
	private NoticeMapper noticeMapper;
	
	public List<Notice> getAllNotices() {
		return noticeMapper.getNotices();
	}
}
