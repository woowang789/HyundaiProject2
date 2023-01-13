package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

//이승규
public interface BestMapper {
	// 베스트 제품 리스트
	List<ProductOptionDTO> getBestList(@Param("cri") Criteria cri, @Param("userId") String userId);

	// 카테고리 리스트
	List<CategoryDTO> getCate(Criteria cri);
}
