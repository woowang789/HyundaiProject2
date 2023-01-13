package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.OrderProductDTO;
import com.hyundai.vo.ProductOptionDTO;

//이승규
public interface HomeMapper {

	// 세일 제품 렌덤 리스트
	public List<ProductOptionDTO> getRecommendForUser(@Param("cri") Criteria cri, @Param("userId") String userId);

	// 랭킹 제품 렌덤 리스트
	public List<ProductOptionDTO> getRecommendRandom(@Param("cri") Criteria cri, @Param("userId") String userId);

	// 브랜드별 제품 렌덤 리스트
	public List<ProductOptionDTO> getRecommendBrand(@Param("cri") Criteria cri, @Param("userId") String userId);

}
