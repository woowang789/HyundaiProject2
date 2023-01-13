package com.hyundai.api;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.mapper.CartMapper;
import com.hyundai.service.CartService;
import com.hyundai.vo.ApiPageDTO;
import com.hyundai.vo.CartProductDTO;
import com.hyundai.vo.UpdateCartDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

/**
 * 장바구니 관련 API 요청을 처리하는 RestController
 * @author 왕종휘
 */
@Log4j
@RestController
@RequestMapping("/api/cart")
@RequiredArgsConstructor
public class CartApi {

	private final CartService cartService;
	private final CartMapper mapper;

	/**
	 * 해당 유저의 장바구니 품목 리스트
	 * @param 유저아이디(userId)
	 */
	@PostMapping("/getCart")
	public ResponseEntity<ApiPageDTO<CartProductDTO>> getCart(@RequestBody Map<String, String> body) {
		String userId = body.get("userId");
		List<CartProductDTO> list = cartService.getCartList(userId);
		return new ResponseEntity<>(new ApiPageDTO<CartProductDTO>(list.size(), list), HttpStatus.OK);
	}

	/**
	 * 유저의 장바구니에서 해당 상품옵션 삭제
	 * @param UpdateCartDto : 유저아이디(userId), 상품아이디(prodId), 상품옵션아이디 (optId)
	 */
	@PostMapping("/delete")
	public ResponseEntity<String> deleteCart(@RequestBody UpdateCartDTO dto) {
		int result = cartService.deleteCart(dto);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}

	/**
	 * 유저의 장바구니에서 해당 상품옵션의 수량 변경
	 * @param UpdateCartDto : 유저아이디(userId), 상품아이디(prodId), 상품옵션아이디 (optId), 수량 (qty)
	 */
	@PostMapping("/update")
	public ResponseEntity<String> updateCart(@RequestBody UpdateCartDTO dto) {
		log.info(dto);
		int result = cartService.updateCart(dto);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}

}
