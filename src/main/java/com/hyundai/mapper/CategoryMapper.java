package com.hyundai.mapper;

import java.util.List;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface CategoryMapper {
	
	public List<ProductOptionDTO> getCategory();
	
	public List<ProductOptionDTO> getCategoryWithPaging(Criteria cri);
	
	public int getTotalCount(Criteria cri);

}
