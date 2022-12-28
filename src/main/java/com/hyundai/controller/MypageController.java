package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
public class MypageController {
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String mypage() {
		log.info("mypage");
		
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/order-lists", method = RequestMethod.GET)
	public String mypageOrderLists() {
		log.info("mypage/order-lists");
		
		return "mypage/order_lists";
	}
	
	@RequestMapping(value="/wish-lists", method=RequestMethod.GET)
	public String mypageWishLists() {
		log.info("mypage/wish-lists");
		
		return "mypage/wish_lists";
	}
	
	@RequestMapping(value="/reviews-completion", method=RequestMethod.GET)
	public String mypageReviewCompletion() {
		log.info("mypage/reviews-completion");
		
		return "mypage/reviews_list";
	}
	
	@RequestMapping(value="/info-change", method=RequestMethod.GET)
	public String mypageInfoChange() {
		log.info("mypage/info-change");
		
		return "mypage/info_change";
	}
	
	@RequestMapping(value="/info-remove", method=RequestMethod.GET)
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
