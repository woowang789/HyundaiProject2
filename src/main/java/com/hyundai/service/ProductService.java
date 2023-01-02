package com.hyundai.service;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.ProductMapper;
import com.hyundai.vo.OrderProductDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ProductService {
	private final ProductMapper productMapper;
	
	public OrderProductDTO getOrderProductById(String optionId) {
		return productMapper.getOrderProductById(optionId);
	}
	
}
