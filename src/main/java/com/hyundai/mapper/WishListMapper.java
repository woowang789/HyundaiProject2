package com.hyundai.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

public interface WishListMapper {
	
	List<ProductOptionDTO> getWishLists(@Param("cri") Criteria cri ,@Param("userId") String userId);

	int getCount(String userId);
	
	int insertWishList(@Param("userId") String userId, @Param("prodId") String prodId);
	
	int removeWishList(@Param("userId")String userId, @Param("prodId") String prodId);
	
	boolean isExist(@Param("userId") String userId, @Param("prodId") String prodId);
	
}
