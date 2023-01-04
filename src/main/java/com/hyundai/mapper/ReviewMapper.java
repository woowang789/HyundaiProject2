package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ReviewDTO;

public interface ReviewMapper {
	public List<ReviewDTO> getReviewByUserId( @Param("cri") Criteria cri,
			@Param("userId") String userId,@Param("isWritten") boolean isWritten);
	
	public int insertReview(ReviewDTO dto);

	public int getTotalCount(@Param("userId") String userId, @Param("isWritten") boolean written);

}
