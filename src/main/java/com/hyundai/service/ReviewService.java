package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.ReviewMapper;
import com.hyundai.vo.ReviewDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ReviewService {
	
	private final ReviewMapper reviewMapper;
	
	public List<ReviewDTO> getReviewByUserId(String userId, boolean written){
		return reviewMapper.getReviewByUserId(userId, written);
	}
	
	public int insertReview(ReviewDTO dto) {
		return reviewMapper.insertReview(dto);
	}
	
	
}
