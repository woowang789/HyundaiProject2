package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
public class MypageController {
	
	@GetMapping
	public String mypage() {
		log.info("mypage");
		
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
