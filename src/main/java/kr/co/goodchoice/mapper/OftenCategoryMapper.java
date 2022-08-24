package kr.co.goodchoice.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.co.goodchoice.vo.OftenCategory;

@Mapper
public interface OftenCategoryMapper {

	List<OftenCategory> getAllCategories();
	OftenCategory getCategoryById(String id);
}
