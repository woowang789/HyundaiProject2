package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.CategoryDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface SearchMapper {

	List<ProductOptionDTO> getSearchList(@Param("cri") Criteria cri, @Param("userId") String userId);

	int getCount(Criteria cri);

	List<CategoryDTO> getCate(Criteria cri);
	
	List<String> getTagList(String userId);

}
