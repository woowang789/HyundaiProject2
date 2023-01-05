package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.OrderProductDTO;

public interface HomeMapper {

	public List<OrderProductDTO> getRecommendForUser(@Param("cri") Criteria cri, @Param("userId") String userId);

	public List<OrderProductDTO> getRecommendRandom(@Param("cri") Criteria cri, @Param("userId") String userId);

	public List<OrderProductDTO> getRecommendBrand(@Param("cri") Criteria cri, @Param("userId") String userId);

}
