package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

//이승규
public interface SearchMapper {
	// 검색 제품별 리스트
	List<ProductOptionDTO> getSearchList(@Param("cri") Criteria cri, @Param("userId") String userId);

	// 해당 상품 카테고리별 총 갯수
	int getCount(Criteria cri);

	// 검색 카테고리 리스트
	List<CategoryDTO> getCate(Criteria cri);

}
