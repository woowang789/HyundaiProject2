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

	@Autowired
	private HomeMapper mapper;

	public List<ProductOptionDTO> getRecommendForUser(Criteria cri, String userId) {
		return mapper.getRecommendForUser(cri, userId);
	}

	public List<ProductOptionDTO> getRecommendRandom(Criteria cri, String userId) {
		return mapper.getRecommendRandom(cri, userId);
	}

	public List<ProductOptionDTO> getRecommendBrand(Criteria cri, String userId) {
		return mapper.getRecommendBrand(cri, userId);
	}

}
