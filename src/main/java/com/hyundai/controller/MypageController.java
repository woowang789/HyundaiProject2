package com.hyundai.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage/*")
public class MypageController {
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String mypage(Model model) {
		log.info("mypage");
		String context = "마이페이지";
		model.addAttribute("context", context);
		
		return "mypage/mypage";
	}
	
	@RequestMapping(value = "/order-lists", method = RequestMethod.GET)
	public String mypageOrderLists(Model model) {
		log.info("mypage/order-lists");
		String context = "마이페이지 주문리스트";
		model.addAttribute("context", context);
		
		return "mypage/order_lists";
	}
	
	@RequestMapping(value="/wish-lists", method=RequestMethod.GET)
	public String mypageWishLists(Model model) {
		log.info("mypage/wish-lists");
		String context = "마이페이지 위시리스트";
		model.addAttribute("context", context);
		
		return "mypage/wish_lists";
	}
}
