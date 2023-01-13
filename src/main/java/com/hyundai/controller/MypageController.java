package com.hyundai.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.hyundai.mapper.UserMapper;
import com.hyundai.service.OrderService;
import com.hyundai.service.ReviewService;
import com.hyundai.vo.Criteria;
import com.hyundai.vo.PageDTO;
import com.hyundai.vo.ReviewDTO;
import com.hyundai.vo.ShowOrderDTO;
import org.springframework.security.core.context.SecurityContextHolder;
import com.hyundai.vo.UserVO;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypage")
@RequiredArgsConstructor
public class MypageController {

	private final OrderService orderService;
	private final ReviewService reviewService;
	
	private final UserMapper userMapper;

	@GetMapping
	public String mypage(Criteria cri, Model model) {
		return "mypage/mypage";
	}

	@GetMapping("/order-lists")
	public String mypageOrderLists(Criteria cri, Principal principal, Model model) {
		log.info("mypage/order-lists");
		if (cri.getAmount() == 10)
			cri.setAmount(3);
		if (cri.getType() == null)
			cri.setType("-1");

		List<ShowOrderDTO> list = orderService.getOrderList(principal.getName(), cri);
		int total = orderService.getOrderListCount(principal.getName());

		model.addAttribute("list", list);
		model.addAttribute("pageMaker", new PageDTO(cri, total));

		return "mypage/order_lists";
	}

	@GetMapping("/reviews-write")
	public String myPageReviewWrite(
			Criteria cri,
			Principal pricipal ,Model model) {
		log.info("mypage/reviews-write");
		cri.setAmount(4);
		int count = reviewService.getTotalCount(pricipal.getName(), false);
		List<ReviewDTO> reviews = reviewService.getReviewByUserId(cri,pricipal.getName(), false);
		model.addAttribute("reviews",reviews );
		model.addAttribute("pageMaker", new PageDTO(cri, count));
		return "mypage/reviews_write";
	}
	
	@PostMapping("/reviews-write")
	public String doReviewWrite(
			ReviewDTO reviewDto,
			@RequestParam("redirect") String redirect,
			Principal pricipal) {
		log.info("post reviews-write" + reviewDto);
		reviewService.insertReview(reviewDto);
		
		return "redirect:"+redirect;
	}
	

	@GetMapping("/reviews-completion")
	public String mypageReviewCompletion(
			Criteria cri,
			Principal pricipal ,Model model) {
		log.info("mypage/reviews-completion");
		cri.setAmount(4);
		int count = reviewService.getTotalCount(pricipal.getName(), true);
		List<ReviewDTO> reviews = reviewService.getReviewByUserId(cri,pricipal.getName(), true);
		model.addAttribute("reviews",reviews );
		model.addAttribute("pageMaker", new PageDTO(cri, count));
		
		return "mypage/reviews_list";
	}
	
	/**
	 * @info-change
	 * writer : 이한솔
	 */
	@GetMapping("/info-change")
	public String mypageInfoChange() {
		log.info("mypage/info-change");

		return "mypage/info_change";
	}
	
	/**
	 * @info-remove
	 * writer : 이한솔
	 */
	@GetMapping("/info-remove")
	public String mypageInfoRemove(Model model) {
		log.info("mypage/info-remove");

		return "mypage/info_remove";
	}
	
	@RequestMapping(value = "/reviews", method = RequestMethod.GET)
	public String mypageReviews(Model model) {
		log.info("mypage/reviews");

		return "mypage/reviews_write";
	}
	/**
	 * @info-change
	 * writer : 이한솔
	 */
	@PostMapping("/info-change")
	public String changeInfo(UserVO vo) throws Exception {
		System.out.println(vo);
		BCryptPasswordEncoder pwdencoder = new BCryptPasswordEncoder();
		vo.setUser_pwd(pwdencoder.encode(vo.getUser_pwd()));
		userMapper.updateUser(vo);

		return "mypage/completion_change_info";
	}
	
	/**
	 * @deleteInfo
	 * writer : 이한솔
	 */
	@PostMapping("/deleteInfo")
	public String deleteInfo(UserVO vo) {
		userMapper.deleteUser(vo.getUser_id());
		userMapper.deletePersistence(vo.getUser_id());
		SecurityContextHolder.clearContext();
		return "redirect:/home";
	}

}
