package com.hyundai.mapper;

import com.hyundai.vo.OrderProductDTO;

public interface ProductMapper {
	
	public OrderProductDTO getOrderProductById(String optionId);
}
