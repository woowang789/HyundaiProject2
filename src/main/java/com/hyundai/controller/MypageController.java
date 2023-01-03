package com.hyundai.controller;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.hyundai.mapper.UserMapper;
import com.hyundai.service.UserService;
import com.hyundai.service.WishListService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.UserVO;

import lombok.AllArgsConstructor;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {
	
	private final WishListService wishListService;
	
	private final UserService userService;
	private final UserMapper userMapper;
	
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
	
	@PostMapping("/info-change")
	public String changeInfo(UserVO vo) throws Exception{
		System.out.println(vo);
		BCryptPasswordEncoder pwdencoder = new BCryptPasswordEncoder();
		vo.setUser_pwd(pwdencoder.encode(vo.getUser_pwd()));
		userMapper.updateUser(vo);
		return "mypage/info_change";
	}
}
