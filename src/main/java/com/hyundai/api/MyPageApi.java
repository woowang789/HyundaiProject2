package com.hyundai.api;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.service.WishListService;
import com.hyundai.vo.ApiPageDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;
import com.hyundai.vo.WishToggleDTO;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/mypage")
@RequiredArgsConstructor
public class MyPageApi {
	
	private final WishListService wishListService;
	
	@PostMapping("/updateWishList")
	public ResponseEntity<String> updateWishList(
			@RequestBody WishToggleDTO dto){
		int result = wishListService.toggleWishList(dto.getUserId(), dto.getProdId());
		if(result == -1) return new ResponseEntity<>("error",HttpStatus.INTERNAL_SERVER_ERROR);
		return new ResponseEntity<>("success",HttpStatus.OK); 
	}
	
	@GetMapping("/getWishList/{pageNum}")
	public ResponseEntity<ApiPageDTO<ProductOptionDTO>> getWishList(
			@RequestParam("userId") String userId,
			@PathVariable("pageNum") int page){
		int count = wishListService.getCount(userId);
		List<ProductOptionDTO> list = wishListService.getWishList(new Criteria(page,8), userId);
		return new ResponseEntity<>(new ApiPageDTO<>(count, list),HttpStatus.OK);
	}
	
}
