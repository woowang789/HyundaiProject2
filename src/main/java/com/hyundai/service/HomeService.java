package com.hyundai.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hyundai.mapper.HomeMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.OrderProductDTO;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;

@Service
@AllArgsConstructor
public class HomeService {

	@Autowired
	private HomeMapper mapper;

	public List<OrderProductDTO> getRecommendForUser(Criteria cri, String userId) {
		return mapper.getRecommendForUser(cri, userId);
	}

	public List<OrderProductDTO> getRecommendRandom(Criteria cri, String userId) {
		return mapper.getRecommendRandom(cri, userId);
	}

	public List<OrderProductDTO> getRecommendBrand(Criteria cri, String userId) {
		return mapper.getRecommendBrand(cri, userId);
	}

}
