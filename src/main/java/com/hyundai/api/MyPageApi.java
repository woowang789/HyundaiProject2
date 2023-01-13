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
import com.hyundai.service.TagService;
import com.hyundai.service.WishListService;
import com.hyundai.vo.ApiPageDTO;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.ProductOptionDTO;

import lombok.RequiredArgsConstructor;

/**
 * 마이페이지 관련 API 요청을 처리하는 RestController
 * @author 왕종휘
 */
@RestController
@RequestMapping("/api/mypage")
@RequiredArgsConstructor
public class MyPageApi {

	private final WishListService wishListService;
	private final TagService tagService;
	
	/**
	 * 해당 유저의 Wish(찜) 목록을 불러옴 
	 * @param body : 유저아이디(userId)
	 * @param page : 찜 목록 페이징에 필요한 페이지 번호
	 */
	@PostMapping("/getWishList/{pageNum}")
	public ResponseEntity<ApiPageDTO<ProductOptionDTO>> getWishList(
			@RequestBody Map<String, String> body,
			@PathVariable("pageNum") int page) {
		int count = wishListService.getCount(body.get("userId"));
		List<ProductOptionDTO> list = wishListService.getWishList(new Criteria(page, 8), body.get("userId"));
		return new ResponseEntity<>(new ApiPageDTO<>(count, list), HttpStatus.OK);
	}

	/**
	 * 해당 상품에 대한 찜 상태를 토글
	 * @param body : 유저아이디 (userId), 상품아이디(prodId)
	 */
	@PostMapping("/updateWishList")
	public ResponseEntity<String> updateWishList(
			@RequestBody Map<String, String> body) {
		int result = wishListService.toggleWishList(body.get("userId"), body.get("prodId"));
		if (result == -1)
			return new ResponseEntity<>("error", HttpStatus.INTERNAL_SERVER_ERROR);
		return new ResponseEntity<>(result+"", HttpStatus.OK);
	}
	
	/**
	 * 해당 검색어에 대한 즐겨찾기 상태(tag)를 토글
	 * @param body : 검색어(keyword) ,유저아이디 (userId)
	 */
	@PostMapping("/updateTagList")
	public ResponseEntity<Integer> updateTagList(
			@RequestBody Map<String, String> body){
		String keyword = body.get("keyword");
		String userId = body.get("userId");
		int result = tagService.toggleTag(userId, keyword);
		return new ResponseEntity<Integer>(result, HttpStatus.OK);
	}


}
