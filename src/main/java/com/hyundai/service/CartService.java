package com.hyundai.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.hyundai.mapper.CartMapper;
import com.hyundai.vo.CartProductDTO;
import com.hyundai.vo.UpdateCartDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CartService {

	private final CartMapper cartMapper;

	public List<CartProductDTO> getCartList(String userId) {
		List<CartProductDTO> list = cartMapper.getCartList(userId);
		return list;
	}

	public int deleteCart(UpdateCartDTO dto) {
		return cartMapper.deleteCart(dto);
	}

	public int updateCart(UpdateCartDTO dto) {
		return cartMapper.updateCart(dto);
	}
}
