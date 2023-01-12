package com.hyundai.mapper;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.ProductOptionDTO;

public interface ProductMapper {
	
	public OrderProductDTO getOrderProductById(String optionId);
	
	public ProductOptionDTO getProduct(@Param("productId")String prodId, @Param("optionId")String optionId);
}
