package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.ProductOptionDTO;

public interface HomeMapper {

	public List<ProductOptionDTO> getRecommendForUser(@Param("cri") Criteria cri, @Param("userId") String userId);

	public List<ProductOptionDTO> getRecommendRandom(@Param("cri") Criteria cri, @Param("userId") String userId);

	public List<ProductOptionDTO> getRecommendBrand(@Param("cri") Criteria cri, @Param("userId") String userId);

}
