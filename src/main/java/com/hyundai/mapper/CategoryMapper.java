package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface CategoryMapper {
//소규석	
	//카테고리 페이지 상품 리스트
	public List<ProductOptionDTO> getCategoryWithPaging(@Param("cri") Criteria cri, @Param("userId") String userId);
	
	// 상품 총개수
	public int getTotalCount(Criteria cri);

	//부모 카테고리를 입력하여 자식 카테고리 가져오기
	public List<CategoryDTO> getPCate(Criteria cri);
}
