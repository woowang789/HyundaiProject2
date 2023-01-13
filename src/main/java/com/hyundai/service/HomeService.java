package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.mapper.HomeMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.ProductOptionDTO;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;

@Service
@AllArgsConstructor
public class HomeService {
//	이승규
	@Autowired
	private HomeMapper mapper;

	// 유저별 세일 상픔 추천 리스트 가져오기
	public List<ProductOptionDTO> getRecommendForUser(Criteria cri, String userId) {
		return mapper.getRecommendForUser(cri, userId);
	}

	// 유저별 랭킹 상픔 추천 리스트 가져오기
	public List<ProductOptionDTO> getRecommendRandom(Criteria cri, String userId) {
		return mapper.getRecommendRandom(cri, userId);
	}

	// 유저별 브랜드 상픔 추천 리스트 가져오기
	public List<ProductOptionDTO> getRecommendBrand(Criteria cri, String userId) {
		return mapper.getRecommendBrand(cri, userId);
	}

}
