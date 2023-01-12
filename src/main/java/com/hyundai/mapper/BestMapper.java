package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface BestMapper {
	List<ProductOptionDTO> getBestList(@Param("cri") Criteria cri, @Param("userId") String userId);

	List<CategoryDTO> getCate(Criteria cri);
}
