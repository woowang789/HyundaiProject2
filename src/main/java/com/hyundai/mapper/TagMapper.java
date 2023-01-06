package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface TagMapper {
	
	int insertTag(@Param("userId") String userId, @Param("keyword") String keyword);
	
	int removeTag(@Param("userId")String userId, @Param("keyword") String keyword);
	
	boolean isExist(@Param("userId") String userId, @Param("keyword") String keyword);

	List<String> getTagList(String userId);
}
