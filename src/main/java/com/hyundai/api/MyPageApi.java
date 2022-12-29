package com.hyundai.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.service.WishListService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MyPageApi {
	
	private final WishListService wishListService;
	private String userId = "user1@email.com";
	
	@PostMapping("/updateWishList")
	public ResponseEntity<String> updateWishList(@RequestParam("prodId") String prodId){
		int result = wishListService.toggleWishList(userId, prodId);
		if(result == -1) return new ResponseEntity<>("error",HttpStatus.INTERNAL_SERVER_ERROR);
		return new ResponseEntity<>("success",HttpStatus.OK); 
	}
	
}
