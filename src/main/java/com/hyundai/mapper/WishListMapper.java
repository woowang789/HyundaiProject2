package com.hyundai.mapper;

import java.util.List;

import com.hyundai.vo.ProductVO;

public interface WishListMapper {
	
	List<ProductVO> getWishList(String userId);

}
