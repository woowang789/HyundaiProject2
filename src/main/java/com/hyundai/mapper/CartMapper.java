package com.hyundai.mapper;

import java.util.List;

import com.hyundai.vo.CartProductDTO;
import com.hyundai.vo.UpdateCartDTO;

public interface CartMapper {

	public List<CartProductDTO> getCartList(String userId);

	public int deleteCart(UpdateCartDTO dto);

	public int updateCart(UpdateCartDTO dto);
}
