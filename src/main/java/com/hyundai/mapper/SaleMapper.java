package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface SaleMapper {
//	List<ProductOptionDTO> getSaleList();

	List<ProductOptionDTO> getSaleListAll(@Param("cri") Criteria cri, @Param("userId") String userId);

	int getCount();

	List<CategoryDTO> getCate(Criteria cri);
}
