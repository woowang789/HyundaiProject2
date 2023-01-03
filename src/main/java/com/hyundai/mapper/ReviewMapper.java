package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.ReviewDTO;

public interface ReviewMapper {
	public List<ReviewDTO> getReviewByUserId(
			@Param("userId") String userId,@Param("isWritten") boolean isWritten);

}
