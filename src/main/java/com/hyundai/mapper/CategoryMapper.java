package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface CategoryMapper {
	
	
	public List<ProductOptionDTO> getCategoryWithPaging(@Param("cri") Criteria cri, @Param("userId") String userId);
	
	public int getTotalCount(Criteria cri);
	
	public List<String> getCate(Criteria cri);

}
