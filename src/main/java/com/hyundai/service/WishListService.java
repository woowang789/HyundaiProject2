package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.WishListMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class WishListService {
	
	private final WishListMapper wishListMapper;
	
	/**
	 * 이미 존재한다면 삭제, 존재하지 않는다면 제거
	 * -1 : DB 에러 발생
	 * 0 : 제거
	 * 1 : 생성
	 */
	public int toggleWishList(String userId, String prodId) {
		boolean isExist = wishListMapper.isExist(userId, prodId);
		try {
			if(isExist) { // 이미 존재한다면 삭제
				wishListMapper.removeWishList(userId, prodId);
				return 0;
			}
			else { // 존재하지 않는다면 생성
				wishListMapper.insertWishList(userId, prodId);
				return 1;
			}
		}catch(Exception e) {
			e.printStackTrace();
			return -1;
		}
	}
	
	public List<ProductOptionDTO> getWishList(Criteria cri, String userId){
		List<ProductOptionDTO> result = wishListMapper.getWishLists(cri,userId);
		return result;
	}
	public int getCount(String userId) {
		return wishListMapper.getCount(userId);
	}
	
}
