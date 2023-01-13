package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.WishListMapper;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

import lombok.RequiredArgsConstructor;

/**
 * 찜(wish) 관련 비스니스 로직을 처리하는 Service
 * @author 왕종휘
 */
@Service
@RequiredArgsConstructor
public class WishListService {
	
	private final WishListMapper wishListMapper;
	
	/**
	 * 유저의 특정 상품에 대해 찜 상태를 확인 후, toggle  
	 * @param 상품아이디(prodId), 유저아이디(userId)
	 * @return -1: DB에러 발생 / 0: 찜 제거 / 1: 찜 생성 
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
