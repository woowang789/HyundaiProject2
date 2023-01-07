package com.hyundai.api;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.tomcat.util.json.JSONParser;
import org.json.simple.JSONArray;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonArrayFormatVisitor;
import com.hyundai.mapper.CartMapper;
import com.hyundai.service.CartService;
import com.hyundai.vo.ApiPageDTO;
import com.hyundai.vo.BeforeOrderDTO;
import com.hyundai.vo.CartProductDTO;
import com.hyundai.vo.UpdateCartDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@RestController
@RequestMapping("/api/cart")
@RequiredArgsConstructor
public class CartApi {

	private final CartService cartService;
	private final CartMapper mapper;

	@PostMapping("/getCart")
	public ResponseEntity<ApiPageDTO<CartProductDTO>> getCart(@RequestBody Map<String, String> body) {
		String userId = body.get("userId");
		List<CartProductDTO> list = cartService.getCartList(userId);
		return new ResponseEntity<>(new ApiPageDTO<CartProductDTO>(list.size(), list), HttpStatus.OK);
	}

	@PostMapping("/delete")
	public ResponseEntity<String> deleteCart(@RequestBody UpdateCartDTO dto) {
		int result = cartService.deleteCart(dto);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}

	@PostMapping("/update")
	public ResponseEntity<String> updateCart(@RequestBody UpdateCartDTO dto) {
		log.info(dto);
		int result = cartService.updateCart(dto);
		return new ResponseEntity<>("success", HttpStatus.OK);
	}


}
