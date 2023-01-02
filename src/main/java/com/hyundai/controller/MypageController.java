package com.hyundai.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.service.WishListService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;
import com.hyundai.vo.ProductOptionDTO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	
	private final WishListService wishListService;
	
	private String userId = "user1@email.com";
	
	@GetMapping
	public String mypage(Criteria cri, Model model) {
		return "mypage/mypage";
	}
	
	@GetMapping("/order-lists")
	public String mypageOrderLists() {
		log.info("mypage/order-lists");
		
		return "mypage/order_lists";
	}
	
	
	@GetMapping("/reviews-write")
	public String myPageReviewWrite() {
		log.info("mypage/reviews-write");
		return "mypage/reviews_write";
	}
	
	@GetMapping("/reviews-completion")
	public String mypageReviewCompletion() {
		log.info("mypage/reviews-completion");
		
		return "mypage/reviews_list";
	}
	
	@GetMapping("/info-change")
	public String mypageInfoChange() {
		log.info("mypage/info-change");
		
		return "mypage/info_change";
	}
	
	@GetMapping("/info-remove")
	public String mypageInfoRemove(Model model) {
		log.info("mypage/info-remove");
		
		return "mypage/info_remove";
	}
	
	@RequestMapping(value="/reviews", method=RequestMethod.GET)
	public String mypageReviews(Model model) {
		log.info("mypage/reviews");
		
		return "mypage/reviews_write";
	}
}
