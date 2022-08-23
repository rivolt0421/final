package kr.co.goodchoice.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.Point;

@Mapper
public interface PointMapper {

	void addPoint(Point point);
	
	List<Point> getPointsByUserNo(int userNo);

}
