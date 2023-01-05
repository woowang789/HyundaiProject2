package com.hyundai.api;

import java.util.List;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.hyundai.mapper.SearchMapper;
import com.hyundai.service.WishListService;
import com.hyundai.vo.ApiPageDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/api/mypage")
@RequiredArgsConstructor
public class MyPageApi {

	private final WishListService wishListService;
	private final SearchMapper searchMapper;
	
	@PostMapping("/getWishList/{pageNum}")
	public ResponseEntity<ApiPageDTO<ProductOptionDTO>> getWishList(
			@RequestBody Map<String, String> body,
			@PathVariable("pageNum") int page) {
		int count = wishListService.getCount(body.get("userId"));
		List<ProductOptionDTO> list = wishListService.getWishList(new Criteria(page, 8), body.get("userId"));
		return new ResponseEntity<>(new ApiPageDTO<>(count, list), HttpStatus.OK);
	}

	@PostMapping("/updateWishList")
	public ResponseEntity<String> updateWishList(
			@RequestBody Map<String, String> body) {
		int result = wishListService.toggleWishList(body.get("userId"), body.get("prodId"));
		if (result == -1)
			return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
		return new ResponseEntity<>(result+"", HttpStatus.OK);
	}
	@PostMapping("/updateTagList")
	public ResponseEntity<String> updateTagList(@RequestBody Map<String, String> body){
		String keyword = body.get("keyword");
		
		
	}


}
